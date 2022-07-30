import 'package:devnology/utils/CustomCacheManager.dart';
import 'package:flutter/material.dart';

class CacheImage {

  static Future download(String url) async {
    CacheImage.fetch(url).then((results) async {
      if (results == null) {
        debugPrint("Salvando imagem $url em cache.");
        await CustomCacheManager().downloadFile(url);
      }
    });
  }

  static Future fetch(String? url) async {
    if (url == null) return;
    var fetchedFile = await CustomCacheManager().getFileFromCache(url);
    if (fetchedFile == null) return null;
    debugPrint("Reusando imagem $url em cache.");
    return fetchedFile.file.path;
  }

}