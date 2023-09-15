import 'package:flutter/cupertino.dart';

class Config {
  static Config instance = Config();

  Config(){
    debugPrint(hashCode.toString());
  }
}