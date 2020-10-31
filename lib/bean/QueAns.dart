import 'package:fluttertruefalsequizapp/bean/question.dart';
List<questionmodel> getQue() {

List<questionmodel> que = List<questionmodel>();
questionmodel que1= new questionmodel();

que1.setImgurl("https://images.unsplash.com/photo-1554475901-4538ddfbccc2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1504&q=80");
  que1.setQuestion("what is this");
  que1.answer="True";
  que.add(que1);
 que1= new questionmodel();
que1.setImgurl("https://images.unsplash.com/photo-1554475901-4538ddfbccc2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1504&q=80");
que1.setQuestion("what is    this");
que1.setAnswer("True");
que.add(que1);
 que1= new questionmodel();
que1.setImgurl("https://images.unsplash.com/photo-1554475901-4538ddfbccc2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1504&q=80");
que1.setQuestion("what   is this");
que1.setAnswer("False");
que.add(que1);
que1= new questionmodel();

que1.imgurl="https://images.unsplash.com/photo-1554475901-4538ddfbccc2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1504&q=80";
que1.setQuestion("what is this");
que1.answer="False";
que.add(que1);
que1= new questionmodel();


que1.setImgurl("https://images.unsplash.com/photo-1554475901-4538ddfbccc2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1504&q=80");
que1.setQuestion("what is this");
que1.setAnswer("True");
que.add(que1);
que1= new questionmodel();

que1.setImgurl("https://images.unsplash.com/photo-1554475901-4538ddfbccc2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1504&q=80");
que1.setQuestion("what is this");
que1.setAnswer("False");
que.add(que1);
que1= new questionmodel();
return que;





}