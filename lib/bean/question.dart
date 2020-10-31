class questionmodel{
  String question,imgurl,answer;
  questionmodel({this.imgurl,this.answer,this.question});
  void setQuestion(String question){
    this.question=question;
  }
  void setImgurl(String imgurl){
    this.imgurl=imgurl;
  }
  void setAnswer(String answer){
    this.answer=answer;
  }
  String getQuestion(){
    return question;
  }
  String getImgurl(){
    return imgurl;
  }
  String getAnswer(){
    return answer;
  }


}