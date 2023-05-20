import 'dart:math';

class BMIbrain{
  int height;
  int weight;
  double bmi = 0;

  BMIbrain({required this.height, required this.weight}){
    bmi = weight / pow(height/100, 2);
  }

  String getResult(){
    if(bmi < 18.5){
      return 'UNDERWEIGHT';
    }else if(bmi < 25){
      return 'NORMAL';
    }else if(bmi < 30){
      return 'OVERWEIGHT';
    }else{
      return 'OBESE';
    }
  }

  String getBMI(){
    return bmi.toStringAsFixed(2);
  }

  String getInterpretation(){
    if(bmi < 18.5){
      return 'You are dying, eat something';
    }else if(bmi < 25){
      return 'You are good to go';
    }else if(bmi < 30){
      return 'You are too fat, please Exercize ';
    }else{
      return 'You are Expleding';
    }
  }
  }
