import 'dart:io';
import 'dart:nativewrappers/_internal/vm/lib/ffi_native_type_patch.dart';

void main(){
  double weight=double.parse(stdin.readLineSync()!);
  double heigth=double.parse(stdin.readLineSync()!);
  double a=weight*0.45359237;
  double b=heigth*0.0254;
  double bmi=weight/(heigth*heigth);
  print("BMI : $bmi");
}