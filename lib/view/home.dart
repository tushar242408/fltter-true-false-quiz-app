import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertruefalsequizapp/view/questionview.dart';
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: ()=>  Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>
              Questions()
            ,
          )),
          child: Container(
            alignment: Alignment.center,
            width: 150,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.blue,

            ),
            child: Text("start test" ,style: TextStyle(
                fontSize: 24,
              fontWeight: FontWeight.bold,
            ),),
          ),
        ),
      ),
    );
  }
}

