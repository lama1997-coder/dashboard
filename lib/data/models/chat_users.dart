import 'package:flutter/cupertino.dart';

class ChatUsers {
  String name;
  String? email;
  String? phoneNum;
  String messageText;
  String imageURL;
  String time;
  String? status;
  String? numOfMessage;
  String? lastSeen;
  List<Messages>? message;
  ChatUsers(
      {required this.name,
      required this.messageText,
      required this.imageURL,
      required this.time,
      this.status,
      this.message,
      this.numOfMessage,
      this.lastSeen,this.email,this.phoneNum});
}

class Messages {
  String? message;
  bool? type;
  String? image;
  String? time;
  String? messageType;

  Messages(
      {required this.message,
      required this.type,
      this.image,
      this.time,
      this.messageType = 'text'});
}
