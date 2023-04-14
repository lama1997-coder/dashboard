import 'dart:io';

import 'dart:io' show Platform;
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/services.dart';

class Utils {
  static  readFiles(String filePath) async {
    String input;
    if (kIsWeb) {
      return await rootBundle.loadString(filePath);
    } else {
      return input = await File(filePath).readAsString();
    }

    
  }
}
