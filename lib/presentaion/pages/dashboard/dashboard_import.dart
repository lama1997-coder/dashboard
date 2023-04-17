
import 'dart:developer';
import 'dart:math';

import 'package:base/data/models/best_seller_model.dart';
import 'package:base/data/models/chat_users.dart';
import 'package:base/data/models/height_perf_emp_model.dart';
import 'package:base/data/models/most_bur_model.dart';
import 'package:base/presentaion/bloc/order_summary/order_summary_event.dart';
import 'package:base/presentaion/bloc/order_summary/order_summary_state.dart';
import 'package:base/presentaion/bloc/side_menue/dark_mode_bloc.dart';
import 'package:base/presentaion/bloc/side_menue/sub_page.dart';
import 'package:base/presentaion/common/DefaultText.dart';

import 'package:base/presentaion/common/color.dart';
import 'package:base/presentaion/common/common_widget/widget_import.dart';
import 'package:base/presentaion/common/res.dart';
import 'package:base/presentaion/pages/dashboard/widget/widget_import.dart';
import 'package:base/presentaion/pages/message/message_import.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/models/order_summry_model.dart';
import '../../bloc/order_summary/order_summary_bloc.dart';

part 'dashboard_page.dart';
part 'dashboard_data.dart';
part 'dashboard.dart';