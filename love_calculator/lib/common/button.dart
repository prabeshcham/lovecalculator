import 'package:flutter/material.dart';

class Button extends StatelessWidget {

  final String buttonText;
  final Function onPress;

  const Button({Key key, this.buttonText,this.onPress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(

      onTap: onPress,
          child: Container(

            padding: EdgeInsets.symmetric(vertical:15.0,horizontal:8.0),

         margin: EdgeInsets.symmetric(vertical:10,horizontal:70),
        decoration: BoxDecoration(

         gradient: LinearGradient(colors:[
           Colors.pink,Colors.redAccent
         ]),
          color:Colors.blue,
          borderRadius:BorderRadius.circular(40.0),
        ),
        child: Center(
          child: Text(
             buttonText,style:TextStyle(color: Colors.white),
             
          ),
        ),
      ),
    );
  }
}