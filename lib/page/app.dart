import 'package:dag_book/page/page_library_menu.dart';
import 'package:dag_book/page/page_my_book.dart';
import 'package:dag_book/page/page_what_they_read.dart';
import 'package:dag_book/page/start/start_page.dart';
import 'package:flutter/material.dart';

import '../Theme/app_colors.dart';
import '../widgets/bottom_navigation_menu.dart';
import 'page_search.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.scaffoldMainLight,
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.mainLight
        ),
            bottomNavigationBarTheme: const BottomNavigationBarThemeData(
              backgroundColor: AppColors.mainLight,
              selectedItemColor: Colors.white,
              unselectedItemColor: Colors.black45,

      )
      ),

      initialRoute: '/',
      routes: {
        '/': (context) => StartPage(),
        '/menu': (context) => BottomMenuNavigation(),
        '/home': (context) => Menu(),
        '/mybook': (context) => MyBook(),
        '/whatread': (context) => WhatRead(),
        '/pagesearch': (context) => PageSearch(),
      },
    );
  }
}
