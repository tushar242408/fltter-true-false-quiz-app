import 'package:flutter/material.dart';
import 'package:fluttertruefalsequizapp/bean/QueAns.dart';
import 'package:fluttertruefalsequizapp/bean/question.dart';
import 'package:fluttertruefalsequizapp/view/Result.dart';
import 'package:cached_network_image/cached_network_image.dart';
class Questions extends StatefulWidget {
  @override
  _QuestionsState createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> with SingleTickerProviderStateMixin {
  List<questionmodel> Que = List<questionmodel>();
  Animation animation ;
  AnimationController animationController;


  @override
  void initState() {
   animationController=AnimationController(duration: const Duration(seconds: 5),vsync: this)
   ..addStatusListener((status) {
     if (status==AnimationStatus.completed) {
       noattempt++;
       if(index<Que.length-1){
         setState(() {
           index++;

           resetanim();
           startanim();
         });
       }
       else{
         Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>
             Result(attempt: attempt,notattempt: noattempt,)

         ));
       }
     }
     startanim();

   });
   animation=Tween(begin:0.0,end:1.0).animate(animationController);
     Que=getQue();
    // TODO: implement initState
    super.initState();
  }
  startanim(){
    animationController.forward();

  }
  stopanim(){
    animationController.stop();
  }
  resetanim(){
    animationController.reset();
  }
  @override
  int index=0,noattempt=0,attempt=0,point=0;
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column( children: [
          SizedBox(height: 30,),
          Row(children: [
            SizedBox(width: 10,),
            Text("${index+1}/${Que.length}",style: TextStyle(fontSize: 22),),
            Text("Question"),
            Spacer(),
            Text("${point}",style: TextStyle(fontSize: 22),),
            Text("Points",),
            SizedBox(width: 10,),


          ],
          ),
          SizedBox(height: 30,),
          Text("${Que[index].getQuestion()}",style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500
          ),),
          SizedBox(height: 10,),
          Container(child: LinearProgressIndicator(

            value: animation.value,
          ),),

          Container(

            width: MediaQuery.of(context).size.width,
            height: 500,

              child: CachedNetworkImage(imageUrl:Que[index].getImgurl(),width: 120,height: 70,)),



             Row(
               mainAxisAlignment: MainAxisAlignment.center,
              children: [
               GestureDetector(
                 onTap:(){
                 if(Que[index].getAnswer()=="True"){
                   setState(() {
                     point+=20;
                     index++;
                     attempt++;
                     resetanim();
                     startanim();
                   });}
                 else{
                   setState(() {
                     point-=5;
                     index++;
                     attempt++;
                     resetanim();
                     startanim();
                   });

                 }
                 if(index>Que.length-1){
                   Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>
                       Result(attempt: attempt,notattempt: noattempt,)

                   ));
                 }
                 } ,
                 child: Container(
                   alignment: Alignment.center,
                   width: 130,
                   height: 42,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(20),
                     color: Colors.blue,

                   ),
                   child: Text("True" ,style: TextStyle(
                     fontSize: 24,
                     fontWeight: FontWeight.bold,
                   ),

                 ),),
               ),
                SizedBox(width: 10,),
                GestureDetector(
                  onTap:(){


                    if(Que[index].getAnswer()=="False"){
                      setState(() {
                        point+=20;
                        index++;
                        attempt++;
                        resetanim();
                        startanim();

                      });

                    }
                    else{setState(() {

                      point-=5;
                      index++;
                      attempt++;
                      resetanim();
                      startanim();

                    });
                    }
                    if(index>Que.length-1){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>
                          Result(attempt: attempt,notattempt: noattempt,)

                      ));
                    }

                  } ,

                  child: Container(
                    alignment: Alignment.center,
                    width: 130,
                    height: 42,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.red,

                    ),
                    child: Text("False" ,style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),

                    ),),
                ),
              ],
            ),

        ],
        ),
      ),
    );
  }
}
