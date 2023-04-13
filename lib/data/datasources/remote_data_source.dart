import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:base/data/exception.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

abstract class RemoteDataSource {
  Future<dynamic> httpRequest({
      required String filePath,

  });
}

class RemoteDataSourceImp extends RemoteDataSource {

  @override
  Future<dynamic> httpRequest({
    required String filePath,
  }) async {
    try {
      var input = await File(filePath).readAsString();
      var map = jsonDecode(input);
      return map;
    } on DioError catch (e) {
      if (e.response != null) {
        debugPrint('DioError: ${e.response?.statusMessage}');
      } else {
        throw ServerException();
      }
    }
    var input = await File(filePath).readAsString();
    var map = jsonDecode(input);
    return map;
  }
}
