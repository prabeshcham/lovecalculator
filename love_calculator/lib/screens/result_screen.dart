import 'dart:math';

import 'package:flutter/material.dart';
import 'package:love_calculator/common/button.dart';
import 'package:love_calculator/constants.dart';

class ResultScreen extends StatefulWidget {

  final String person1Name;
  final String persaon2Name;

  const ResultScreen({Key key, this.person1Name, this.persaon2Name}) : super(key: key);

  @override
  _ResultScreenState createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {

  int lovePercentage =Random().nextInt(101);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            decoration: BoxDecoration(

          gradient: LinearGradient(colors:
              [ KGradientFirstColor,KGradientFirstColor,
                KGradientFirstColor],begin: Alignment.topCenter,end: Alignment.bottomCenter
         )
        ),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
         children: [

           Center(child: Text('person1 name',style: TextStyle(fontSize:40.0,color:Colors.white))),
           SizedBox(
             height: 10.0,
           ),
           Icon(Icons.person,size: 25.0,color:Colors.white),

           SizedBox(height: 10,),

            Center(child: Text('person2 name',style: TextStyle(fontSize:40.0,color:Colors.white),)),

              SizedBox(height: 25.0,),
              Center(
                child: Text(lovePercentage.toString() +"%" ,style: TextStyle(fontSize:50,color: Colors.white70),) ),
                  Center(
                child: Text("LoveMessage",style: TextStyle(fontSize:35,color: Colors.white70),) ),

                SizedBox(height: 80,),
                Button(buttonText:"Calculate Again",onPress: (){

                  Navigator.pop(context);
                },) 
              ],
        ),
        ),
),
      );
  }
}