import 'package:flutter/material.dart';
import 'injection.dart' as di;
import 'package:flutter_bloc/flutter_bloc.dart';

import 'presentaion/bloc/order_summary/order_summary_bloc.dart';
import 'presentaion/bloc/side_menue/open_menu_bloc.dart';
import 'presentaion/bloc/side_menue/side_menu_bloc.dart';
import 'presentaion/pages/home_page/home_page_import.dart';

void main() {
  di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => di.locator<OrderSummaryBloc>(),
          
        ),
         BlocProvider(
          create: (_) => di.locator<SideMenuCubit>(),
          
        ),BlocProvider(
          create: (_) => di.locator<OpenMenueCubit>(),
          
        )
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        home: const HomePage(),
      ),
    );
  }
}
