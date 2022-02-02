import 'package:flutter/material.dart';


import '../page/page_library_menu.dart';
import '../page/page_my_book.dart';
import '../page/page_what_they_read.dart';

class BottomMenuNavigation extends StatefulWidget {
  const BottomMenuNavigation({Key? key}) : super(key: key);

  @override
  _BottomMenuNavigation createState() => _BottomMenuNavigation();
}

class _BottomMenuNavigation extends State<BottomMenuNavigation> {
  int _selectedTab = 1;

  static const List<Widget> _widgetOptions = <Widget>[
    MyBook(),
    Menu(),
    WhatRead()
  ];


  void onSelectTab(int index) {
    if(_selectedTab == index) return;
    setState(() {
      _selectedTab = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const[
          BottomNavigationBarItem(
              icon: Icon(Icons.book),
              // SvgPicture.asset('assets/icons/book1.svg'),
              label: 'Мои книги'),
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Библиотека',
              // backgroundColor: AppColors.mainLight
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.face),
              label: 'Что читают'),
          // BottomNavigationBarItem(
          //     icon: Icon(Icons.accessibility_new),
          //     label: 'Профиль'),
        ],
        currentIndex: _selectedTab,
        onTap: onSelectTab,
      ),
      body: IndexedStack(
        index:_selectedTab,
        children: _widgetOptions,
      )
      // _widgetOptions[_selectedTab],
    );
  }
}

