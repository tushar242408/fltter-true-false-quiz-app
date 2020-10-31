import 'package:flutter/material.dart';
import 'package:fluttertruefalsequizapp/view/home.dart';
import 'package:fluttertruefalsequizapp/view/questionview.dart';
class Result extends StatelessWidget {
  int attempt ,notattempt;
  Result({this.attempt,this.notattempt
});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

        child: Column(
          children: [
            SizedBox(height: 50,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("well Trie!",style: TextStyle(
                  fontSize:55,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent,
                ),)

              ],
            ),
            SizedBox(height: 100,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("you attempt: ${attempt}",style: TextStyle(
                    fontSize: 30
                ),),
              ],
            ),
            SizedBox(height: 50,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("you did not attempt: ${notattempt}",style: TextStyle(
                  fontSize: 30
                ),),
              ],
            ),
            SizedBox(height: 30,),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
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

              ],
            ),
            SizedBox(height: 30,),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: ()=>  Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>
                      Home()
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
                    child: Text("Go Home" ,style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),),
                  ),
                ),

              ],
            )
          ],
        ),

      ),
    );
  }
}
