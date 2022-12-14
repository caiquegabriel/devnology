import 'package:flutter/material.dart';

const Color primaryColor = Color.fromRGBO(46, 55, 70, 1);
const Color primaryColorLigther = Color.fromRGBO(90, 100, 118, 1);
const Color primaryColorDark = Color.fromRGBO(46, 55, 70, 1);
const Color secondaryColor = Color.fromRGBO(255, 198, 0, 1);

const double templateHeaderHeight = 60.0;
const double templateFooterHeight = 60.0;


const LinearGradient primaryGradient =  LinearGradient(
  begin: Alignment.bottomLeft,
  end: Alignment.topRight,
  colors: [
    Color.fromRGBO(43, 51, 64, 1),
    Color.fromRGBO(81, 92, 111, 0.9),
    Color.fromRGBO(81, 92, 111, 0.9),
    Color.fromRGBO(81, 92, 111, 0.9),
    Color.fromRGBO(81, 92, 111, 0.9),
    Color.fromRGBO(81, 92, 111, 0.9),
    Color.fromRGBO(81, 92, 111, 0.9),
    Color.fromRGBO(81, 92, 111, 0.9),
  ],
);

const BoxShadow ligthShadow = BoxShadow( 
  color: Color.fromRGBO(0, 0, 0, 0.07),  
  spreadRadius: 2,  
  blurRadius: 2,  
  offset: Offset(0, 0),   
);

double figmaAppWidth = 375;