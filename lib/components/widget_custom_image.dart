import 'package:cached_network_image/cached_network_image.dart';
import 'package:devnology/helpers.dart';
import 'package:devnology/utils/CacheImage.dart';
import 'package:flutter/material.dart';

class CustomImage extends StatefulWidget{ 

  final dynamic image;

  final double? width;

  final double height;

  final bool? https;

  final bool? local;

  final BoxFit? fit;

  final String? defaultImage;

  const CustomImage({
    Key? key,
    this.defaultImage,
    this.local = false,
    this.image,
    this.fit, 
    this.https = false,
    this.width,
    this.height = 0.0}) : super(key: key);


  @override
  CustomImageState createState() => CustomImageState();
}

class CustomImageState extends State<CustomImage> with AutomaticKeepAliveClientMixin{  

  dynamic _image;

  @override 
  bool get wantKeepAlive => false;

  Widget? _imageComponent;

  void update(dynamic image) {
    if(isUrl(image) && widget.local != true) {
      getInternetImage(image , https : widget.https!).then((results) {
        if( !mounted ) return;
        setState((){
          _image = results;
        }); 
      });
    }else{
      _image = image;
    }
  }

  @override
  void initState(){
    super.initState();

    if(!mounted) return;

    if(isUrl(widget.image) && widget.local != true){
      loadImageFromUrl(widget.image);
    }else{
      _image = widget.image;
    }
  }

  Future loadImageFromUrl(String imageUrl) async {
    CacheImage.fetch(imageUrl).then((results) {
      if (results != null) {
        if (!mounted) return;
        setState((){
          _imageComponent = Image.asset(
            results ?? "assets/images/no_image.jpg",
            width: widget.width ?? double.infinity, 
            height: widget.height, 
            fit: widget.fit, 
          );
        });
      } else {
        CacheImage.download(imageUrl);
        getInternetImage(imageUrl, https:widget.https!).then((results) { 
          if(!mounted) return;
          setState((){
            _image = results; 
          }); 
        });
      }
    });
  }


  @override 
  Widget build(BuildContext context) {
    super.build(context);

    if (_imageComponent != null) {
      return _imageComponent!;
    }

    if(_image.runtimeType.toString() == "Uint8List") {
      return Image.memory(
        _image,
        fit: widget.fit,
        width: widget.width,
        height: widget.height
      );
    }else if(widget.local == true && _image.runtimeType.toString() == 'String') {
      return Image.asset( 
        _image.isNotEmpty ? _image : "assets/images/loading.gif",
        fit: widget.fit,
        width: widget.width ?? double.infinity,
        height: widget.height
      );
    }else if(isUrl(_image)) {
      try{
        return CachedNetworkImage(
          fadeOutDuration: const Duration(milliseconds: 10),
          width: widget.width,
          height: widget.height,
          fit: widget.fit, 
          imageUrl: _image,
          progressIndicatorBuilder: (context, url, downloadProgress) => CircularProgressIndicator(value: downloadProgress.progress),
          errorWidget: (context, url, error) => const Icon(Icons.error),
        );
      }catch(e){
        return Image.asset(
          widget.defaultImage ?? "assets/images/no_image.jpg",
          width: widget.width ?? double.infinity,
          height: widget.height,
          fit: widget.fit,
        );  
      }
       
    }else if(_image.runtimeType.toString() == '_File'){ 
      return Image.file(
        _image,
        width: widget.width ?? double.infinity ,
        height: widget.height, 
        fit: widget.fit, 
      );
    }else{
      return Image.asset(
        widget.defaultImage ?? "assets/images/no_image.jpg",
        width: widget.width ?? double.infinity,
        height: widget.height,
        fit: widget.fit,
      );
    } 
  }


  @override 
  void dispose(){
    super.dispose();
  }
} 