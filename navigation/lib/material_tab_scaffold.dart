import 'package:flutter/material.dart';

class MaterialTabScaffold extends StatefulWidget {
  final List<Widget> tabs;
  final List<BottomNavigationBarItem> items;
  MaterialTabScaffold({this.tabs, this.items});

  @override
  _MaterialTabScaffoldState createState() => new _MaterialTabScaffoldState();
}

class _MaterialTabScaffoldState extends State<MaterialTabScaffold> {
  int _selectedTabIndex = 0;
  Widget _selectedTab;

  @override
  Widget build(BuildContext context) {
    _selectedTab = widget.tabs[_selectedTabIndex];

    var bottomNavigationBar = BottomNavigationBar(
      items: widget.items,
      currentIndex: _selectedTabIndex,
      onTap: (index) => setState(
            () {
              _selectedTabIndex = index;
              _selectedTab = widget.tabs[_selectedTabIndex];
            },
          ),
      type: BottomNavigationBarType.fixed,
    );

    return Scaffold(
      body: _selectedTab,
      bottomNavigationBar: BottomAppBar(
        child: bottomNavigationBar,
      ),
    );
  }
}