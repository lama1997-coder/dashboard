import 'package:base/domain/use_cases/get_order_summary.dart';
import 'package:base/presentaion/bloc/side_menue/dark_mode_bloc.dart';
import 'package:base/presentaion/bloc/side_menue/message_bloc.dart';
import 'package:base/presentaion/bloc/side_menue/open_menu_bloc.dart';
import 'package:base/presentaion/bloc/side_menue/sub_page.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'package:http/http.dart' as http;

import 'data/datasources/remote_data_source.dart';
import 'data/repositories/order_summary_repository_imp.dart';
import 'domain/repository/order_summary_repository.dart';
import 'presentaion/bloc/order_summary/order_summary_bloc.dart';
import 'presentaion/bloc/side_menue/side_menu_bloc.dart';

final locator = GetIt.instance;

void init() {
  // bloc
  locator.registerFactory(() => OrderSummaryBloc(locator()));

  locator.registerFactory(() => SideMenuCubit());
  locator.registerFactory(() => OpenMenueCubit());
  locator.registerFactory(() => DarkModeCubit());
    locator.registerFactory(() => SubPageCubit());
        locator.registerFactory(() => MessageBloc());



  // usecase
  locator.registerLazySingleton(() => GetOrderSummary(locator()));

  // repository
  locator.registerLazySingleton<OrderSummaryRepository>(
    () => OrderSummaryRepositoryImp(remoteDataSource: locator()),
  );

  locator.registerLazySingleton<RemoteDataSource>(
    () => RemoteDataSourceImp(),
  );

  // // external
  // locator.registerLazySingleton(() => Dio());
}
