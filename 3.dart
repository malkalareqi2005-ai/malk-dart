import 'dart:io';
void main(){
  divide(200,5);
  divide(200,0);
  divide(200, null);
}

void divide(int numerator, int? denominator){
  try{
    if (denominator == null){
      throw Exception("the denominator not exit");
    }
    if (denominator == 0){
      throw Exception("can not divide on zero");
    }
    double result = numerator / denominator;

    print("result = $result");
  } catch (e){
    print("error: $e");
  }
}