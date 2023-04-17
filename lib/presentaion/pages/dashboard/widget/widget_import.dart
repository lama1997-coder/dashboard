import 'dart:developer';

import 'package:base/data/models/best_seller_model.dart';
import 'package:base/data/models/most_bur_model.dart';
import 'package:base/presentaion/bloc/side_menue/open_menu_bloc.dart';
import 'package:base/presentaion/bloc/side_menue/sub_page.dart';
import 'package:base/presentaion/common/color.dart';
import 'package:base/presentaion/common/res.dart';
import 'package:base/presentaion/pages/dashboard/dashboard_import.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../../data/models/height_perf_emp_model.dart';
import '../../../../data/models/order_summry_model.dart';
import '../../../bloc/side_menue/dark_mode_bloc.dart';
import '../../../common/DefaultText.dart';
import '../../../common/common_widget/widget_import.dart';

part 'app_bar_widget.dart';
part 'order_summary_cards.dart';
part 'buttons.dart';
part 'seller_summary_card.dart';
part 'statictics_widget.dart';
part 'branch_performance.dart';
part 'best_seller.dart';
part 'best_seller_widget.dart';
part 'most_bur_widget.dart';
part 'height_per_emp_widget.dart';
part 'social_media_widget.dart';
