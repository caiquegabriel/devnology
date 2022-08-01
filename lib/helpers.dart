import 'dart:async';

import 'package:flutter/material.dart'; 
import 'dart:io'; 
import 'package:http/http.dart' as http;
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
 
/*
  Chamar uma rota. Usamos ele para evitar que ele chame a rota atual
*/
void navigatorPushNamed(context, String routeName, {dynamic arguments, bool ignorePushName = false}) {

  String? currentRounte = ModalRoute.of(context)!.settings.name;

  if( currentRounte != routeName || ignorePushName == true ){
    if(Scaffold.maybeOf(context) != null && Scaffold.maybeOf(context)!.isDrawerOpen){
      Navigator.of(context).pop();
    }
    Navigator.pushNamed(context, routeName, arguments: arguments);
  } 
} 


Future<String> getImage(String path) async {
  try {
    await rootBundle.load(path);
    return path;
  } catch (_) {
    return 'assets/images/no_image.png';
  }
}

Future<String> getInternetImage(String image, {bool https = true }) async {
  
  try{
    // Certificado para acesso sem HTTPS
    HttpClient client = HttpClient();
    client.badCertificateCallback = ((X509Certificate cert, String host, int port) => true);
  }catch( e ){
    return "";
  } 

  if( image.isEmpty ){
    return 'assets/images/no_image.png';
  }

  image = image.replaceAll("http://", "");
  image = image.replaceAll("https://", "");

  List imageSplit = image.split('/');
  String host = imageSplit[0];

  imageSplit.removeAt(0);
  
  Uri? url;
  if( https ){
    url = Uri.https(host, "/${imageSplit.join("/")}");
  }else{
    url = Uri.http( host ,  "/${imageSplit.join("/")}");
  }

  try{
    /*
      A duração de consulta será de 10s. Passou disso, imagem não encontrada.
    */ 
    dynamic response;

    bool hasError = false;
    try{
      response = await http.head(url);
    } on TimeoutException { 
      hasError = true; 
    } on SocketException {
      hasError = true; 
    } on Exception {
       hasError = true; 
    }

    if ( hasError == true ){ 
      return 'assets/images/no_image.png';
    }
  
    if( response.statusCode == 200 ){ 
      if( !isImage( response.headers['content-type'] ?? "" ) ){ 
        return 'assets/images/no_image.png';
      }else{  
        return (https) ? 'https://' : 'http://$image';
      }
    }
    return 'assets/images/no_image.png';
  }catch( e ){
    debugPrint("***** Exception *****"); 
    debugPrint( url.toString() );
    debugPrint( "URL: $host/${imageSplit.join("/")}");
    debugPrint( e.toString() );
    debugPrint("-----###########------");  
  }
    
  return 'assets/images/no_image.png';
}

String shortNumber(double number) {

  String shortNumber = "0";

  if( number < 1000 ){
    shortNumber = number.round().toString();
  }else if( number >= 1000 && number < 1000000 ){
    shortNumber = "${(number/1000).round().toString()}K";
  }else if( number > 1000000 ){
    shortNumber = "${(number/1000000).round().toString()}M";
  }

  return shortNumber;
}

bool isImage(String mimeType) {
  switch( mimeType ){
    case "image/gif" : 
      return true;
    case "image/png" : 
      return true;
    case "image/jpg" : 
      return true;
    case "image/jpeg" : 
      return true;
    default:
      return false;
  }
}

bool isUrl(dynamic value) {
  if( value.runtimeType.toString() != 'String' ) return false;

  return Uri.tryParse(value)?.hasAbsolutePath ?? false;
}

String priceFormat(double price) {
  var numberFormat = NumberFormat("#,##0.00", "en_US");

  return numberFormat.format(price);
}