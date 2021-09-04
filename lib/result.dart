import 'package:flutter/material.dart';
class Result extends StatelessWidget {
  final double res;
  final int age;
  final bool ismale;
  Result({
    required this.res,
    required this.age,
    required this.ismale,

  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Container(
        decoration: BoxDecoration(image: DecorationImage(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTh8a2-UzG_YUvf9tsSRu3Lp1r6q7QjnpsmUg&usqp=CAU'),fit: BoxFit.cover)),
       
        child: Center(child: 
        Column(mainAxisAlignment: MainAxisAlignment.center,
        
          children: [
            
          Text('Gender : ${ismale?'male':'female'}',style: TextStyle(fontSize: 30,color: Colors.white),),
           Text('age : ${age.round()}',style: TextStyle(fontSize: 30,color: Colors.white),),
            Text('result : ${res.round()}',style: TextStyle(fontSize: 30,color: Colors.white),)
        ],),
        ),
      ),
    );
  }
}