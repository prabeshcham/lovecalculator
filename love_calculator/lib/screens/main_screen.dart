import 'package:flutter/material.dart';
import 'package:love_calculator/common/button.dart';
import 'package:love_calculator/constants.dart';
import 'package:love_calculator/screens/result_screen.dart';


class MainScreen extends StatefulWidget {


  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  TextEditingController person1controller=TextEditingController();

  TextEditingController person2controller=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
        decoration: BoxDecoration(

          gradient: LinearGradient(colors:
              [ KGradientFirstColor,KGradientFirstColor,
                KGradientFirstColor],begin: Alignment.topCenter,end: Alignment.bottomCenter
         )
        ),

        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

          crossAxisAlignment: CrossAxisAlignment.stretch,

          children:<Widget>[


Center(

  child:
Text("person 1", style: TextStyle(fontSize: 30,color: Colors.white, )),
),

SizedBox(
height: 20.0,
),

Container(

  decoration: BoxDecoration(color:Colors.white,borderRadius: BorderRadius.circular(30)),
  margin: EdgeInsets.symmetric(vertical:10, horizontal:32),
  child: TextField(

     controller:person1controller,
    decoration: InputDecoration(

      prefixIcon: Icon(Icons.person,color: Colors.red,size: 30.0,),
      border:InputBorder.none,
    
    hintText: "Person 1",

    ),
  )),


SizedBox(
  height: 10,
),
Center(
  child: Text("loves",style: TextStyle(
    fontSize:25,color:Colors.white
  ),
),



  ),

SizedBox(
height: 30.0,
),

Center(

  child:
Text("person 2", style: TextStyle(fontSize: 30,color: Colors.white, )),
),

SizedBox(
height: 20.0,
),

Container(

  decoration: BoxDecoration(color:Colors.white,borderRadius: BorderRadius.circular(30)),
  margin: EdgeInsets.symmetric(vertical:10, horizontal:32),
  child: TextField(

     controller:person2controller,
    decoration: InputDecoration(

     

      prefixIcon: Icon(Icons.person,color: Colors.red,size: 30.0,),
      border:InputBorder.none,
    
    hintText: "Enter First Persons",

    ),
  ),
  ),

SizedBox(
  height: 40.0,
),
Button(buttonText: 'Calculate',onPress: (){
  Navigator.push(context,MaterialPageRoute(builder: (context){

    return ResultScreen(
      person1Name : person1controller.text,persaon2Name : person2controller.text ,
    );
  }));
}),

    ],
        ) 
        )
       
      ),
    );
  }
}
