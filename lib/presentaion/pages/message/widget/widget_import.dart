import 'dart:js_util';

import 'package:base/data/models/chat_users.dart';
import 'package:base/presentaion/common/color.dart';
import 'package:base/presentaion/common/common_widget/widget_import.dart';
import 'package:base/presentaion/common/res.dart';
import 'package:chat_bubbles/bubbles/bubble_normal.dart';
import 'package:chat_bubbles/chat_bubbles.dart';
import 'package:custom_switch/custom_switch.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../bloc/side_menue/dark_mode_bloc.dart';
import '../../../bloc/side_menue/message_bloc.dart';
import '../../../bloc/side_menue/sub_page.dart';
import '../../../common/DefaultText.dart';
import '../../dashboard/dashboard_import.dart';
import '../../dashboard/widget/widget_import.dart';

part 'app_bar_message.dart';
part 'message_menu_widget.dart';
part 'message_widget.dart';
part 'conversation_widget.dart';
part 'chat_widget.dart';
part 'chat_details.dart';
