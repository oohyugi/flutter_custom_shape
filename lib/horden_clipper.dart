
import 'package:flutter/material.dart';

class HorderClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    // Arranca desde la punta topLeft
    Path path = Path();
    path.lineTo(0.0, size.height);
    double x = 0;
    double x1 = 0;
    double y = size.height;
    double yControlPoint = size.height * .85;
    // El width que se va a ir corriendo por cada linea
    double increment = 0.15;

    print("${size.height}");
    print("${size.width}");
    manualPath(path,size.height,size.width);

//    while (x < size.width) {
//      x+=increment;
//      x1+=0.10;
//      print(x1);
//      print(x);
//      path.quadraticBezierTo(
//          size.width*x1, size.height*0.75, size.width*x, size.height*0.90);
//      path.quadraticBezierTo(
//          size.width*x1, size.height, size.width*x, size.height*0.90);
//    }
//
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0.0);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }

}

void manualPath(Path path, double height, double width) {
  path.quadraticBezierTo(
      width*0.10, height*0.75, width*0.15, height*0.90);
  path.quadraticBezierTo(
      width*0.20, height, width*0.25, height*0.90);
  path.quadraticBezierTo(
      width*0.30, height*0.75, width*0.35, height*0.90);
  path.quadraticBezierTo(
      width*0.40, height, width*0.45, height*0.90);
  path.quadraticBezierTo(
      width*0.50, height*0.75, width*0.55, height*0.90);
  path.quadraticBezierTo(
      width*0.60, height, width*0.65, height*0.90);
  path.quadraticBezierTo(
      width*0.70, height*0.75, width*0.75, height*0.90);
  path.quadraticBezierTo(
      width*0.80, height, width*0.85, height*0.90);
  path.quadraticBezierTo(
      width*0.90, height*0.75, width*0.95, height*0.90);
}