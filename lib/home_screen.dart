import 'dart:math';

import 'package:bmi_calculator/result.dart';
import 'package:flutter/material.dart';

class homescreen extends StatefulWidget {

  @override
  _homescreenState createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {

  double height=100;
  int Weight=40;
  int age =15;
  bool ismale=true;
  double reslt=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
    appBar: AppBar(title:Text ('Bmi Calculator',style: TextStyle(color: Colors.black,fontSize: 25.00),),
    backgroundColor: Colors.grey[200],
    centerTitle: true,
    ),
    bottomSheet: BottomSheet(onClosing: (){},builder:(BuildContext){return GestureDetector(
      onTap: (){
        setState(() {
          reslt=Weight/pow(height/100, 2);
          print(reslt);
          Navigator.push(context, MaterialPageRoute(builder:(context) =>Result(
            res: reslt,
            age: age,
            ismale: ismale,
          )));
         
        });
      },
      child: Container(
        alignment: Alignment.center,
        height: 60.00,
        color: Colors.pink,width: double.infinity,
      child: Text('calculat',style: TextStyle(color: Colors.white,fontSize: 30.00),),
      ),
    );
    } ,),
    body:Column(children:[
     Expanded(
       child: 
       Container(
         width: double.infinity,
         child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
           children: [
           Expanded(
             child: GestureDetector(
               onTap: (){
                 setState(() {
                   ismale=true;
                 });
               },
               child: Container(
                 margin: EdgeInsets.all(20),
                 decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                 boxShadow: [BoxShadow(spreadRadius: 2,color: ismale?Colors.pink:Colors.white)],
                 color: Colors.blueGrey[900]
                 ),
                 child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Icon(Icons.male,size: 100,color: Colors.white,),
                     Text('Male',style: TextStyle(color: Colors.white54,fontSize: 30,fontWeight: FontWeight.bold),)
                   ],
                 ),
               ),
             ),
           ),
            Expanded(
              child: GestureDetector(
               onTap: (){
                 setState(() {
                   ismale=false;
                 });
               },
                child: Container(
                  margin: EdgeInsets.all(20),
                 decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                 boxShadow: [BoxShadow(spreadRadius: 2,color: ismale?Colors.white:Colors.pink)],
                 color: Colors.blueGrey[900]
                 ),
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Icon(Icons.female,size: 100,color: Colors.white,),
                     Text('Female',style: TextStyle(color: Colors.white54,fontSize: 30,fontWeight: FontWeight.bold),)
                   ],
                 ),
                         ),
              ),
            ),
         ],),
         ),
     ),
     Expanded(
       child: Container(
         width: double.infinity,
         child: Container(
               margin: EdgeInsets.all(20),
               decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
               boxShadow: [BoxShadow(spreadRadius: 2,color: Colors.white)],
               color: Colors.blueGrey[900]
               ),
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Text( 'Height',style: TextStyle(fontSize: 20,color: Colors.white54),),
                   Text( '${height.round()}',style: TextStyle(fontSize: 35,color: Colors.white54,fontWeight: FontWeight.bold),),
                   Slider(
                   value: height,
                   min: 100,
                   max: 200,
                   divisions: 100,
                   onChanged:(value){
                     setState(() {
                       height=value;
                     });
                   } ,
                   activeColor: Colors.pink,
                   inactiveColor: Colors.white,
                   ),
                 ],
               ),

        ), 
         ),
     ),
     Expanded(
       child: Container(
         width: double.infinity,
         child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
           children: [
           Expanded(
             
             child: Container(
               margin: EdgeInsets.all(20),
               decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
               boxShadow: [BoxShadow(spreadRadius: 2,color: Colors.white)],
               color: Colors.blueGrey[900]
               ),
               child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Text('Weight',style: TextStyle(color: Colors.white54,fontSize: 20,fontWeight: FontWeight.bold),),
                   Text('$Weight',style: TextStyle(color: Colors.white54,fontSize: 40,fontWeight: FontWeight.bold),),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       FloatingActionButton(onPressed: (){
                         setState(() {
                           Weight--;
                           if(Weight==0){
                             Weight=1;
                           }
                         });
                         
                       },
                       heroTag: 1,
                       child: Icon(Icons.remove, ),
                       backgroundColor: Colors.pink,),
                       SizedBox(width: 20.00,),
                        FloatingActionButton(onPressed: (){
                           setState(() {
                           Weight++;
                         });
                        },
                        heroTag: 2,
                       child: Icon(Icons.add, ),
                       backgroundColor: Colors.pink,)
                     ],
                   )
                 ],
               ),
             ),
           ),
            Expanded(
              child: Container(
                margin: EdgeInsets.all(20),
               decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
               boxShadow: [BoxShadow(spreadRadius: 2,color: Colors.white)],
               color: Colors.blueGrey[900]
               ),
               child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Text('age',style: TextStyle(color: Colors.white54,fontSize: 20,fontWeight: FontWeight.bold),),
                   Text('$age',style: TextStyle(color: Colors.white54,fontSize: 40,fontWeight: FontWeight.bold),),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       FloatingActionButton(onPressed: (){
                          setState(() {
                           age--;
                           if(age==0){
                             age=1;
                           }
                         });
                        
                       },
                       heroTag: 3,
                       child: Icon(Icons.remove, ),
                       backgroundColor: Colors.pink,),
                       SizedBox(width: 20.00,),
                        FloatingActionButton(onPressed: (){
                           setState(() {
                           age++;
                         });
                        },
                        heroTag: 4,
                       child: Icon(Icons.add, ),
                       backgroundColor: Colors.pink,)
                     ],
                   )
                 ],
               ),
                       ),
            ),
         ],),
         ),
     ),
     SizedBox(height: 55.00,),
    ]),
    
    );
  }
}