import 'package:devnology/style.dart';
import 'package:devnology/template/template_footer.dart';
import 'package:devnology/template/template_header.dart';
import 'package:flutter/material.dart';
import 'dart:async';

mixin ScreenComponent <T extends StatefulWidget > on State<T> { 
  Widget content(
    {
      body,
      Color? backgroundColor,
      header,
      drawer,
      positioned,
      padding,
      bool resizeToAvoidBottomInset = false,
      bool showFooter = true
    }
  ){

    if (body.runtimeType.toString() != "List<Widget>"){
      body = <Widget>[
        body
      ];
    }

    positioned ??= const <Widget>[
      SizedBox.shrink()
    ];

    //_positioned =  positioned;

    return WillPopScope(  
      onWillPop: () {  
        return Future.value(false);
      },
      child: Scaffold(
        drawer: drawer,
        resizeToAvoidBottomInset: resizeToAvoidBottomInset, 
        body: GestureDetector(
          onTap: (){ 
            FocusScope.of(context).requestFocus(FocusNode());
          }, 
          child: Container(
            width: double.infinity, 
            height: double.infinity,
            color: backgroundColor,
            child: Stack(
              children: [
                Column(
                  children: <Widget>[
                    const TemplateHeader(),
                    Expanded( 
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        padding: const EdgeInsets.all(25),
                        margin: const EdgeInsets.all(0),
                        child: Column(
                          children: body
                        ), 
                      ) 
                    ),
                    const TemplateFooter()
                  ]
                ),
              ]
            ) 
          )
        )
      )
    );
  }
}