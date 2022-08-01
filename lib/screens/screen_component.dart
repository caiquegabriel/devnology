import 'package:devnology/template/template_button.dart';
import 'package:devnology/template/template_footer.dart';
import 'package:devnology/template/template_header.dart';
import 'package:flutter/material.dart';
import 'dart:async';

mixin ScreenComponent <T extends StatefulWidget > on State<T> { 
  Widget content(
    {
      body,
      bool? showBackButton,
      Color? backgroundColor,
      bool resizeToAvoidBottomInset = false,
      bool showFooter = true,
      Widget? customFooter,
      TemplateButton? customHeaderButton,
      List<Widget> positioned = const [],
      Widget? betweenFooter
    }
  ){

    if (body.runtimeType.toString() != "List<Widget>"){
      body = <Widget>[
        body
      ];
    }

    return WillPopScope(  
      onWillPop: () {  
        return Future.value(false);
      },
      child: Scaffold(
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
              children: <Widget>[
                Column(
                  children: <Widget>[
                    TemplateHeader(
                      customButton: customHeaderButton,
                      showBackButton: showBackButton
                    ),
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        margin: const EdgeInsets.all(0),
                        child: ListView(
                          padding: const EdgeInsets.all(0),
                          children: body
                        ), 
                      ) 
                    ),
                    (betweenFooter != null)
                      ?
                        betweenFooter
                      :
                        const SizedBox.shrink(),
                    (customFooter == null)
                      ?
                        const TemplateFooter()
                      :
                        customFooter,
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