import 'package:flutter/material.dart';
import 'package:smartinternz/screens/home_screen.dart';
import 'package:smartinternz/screens/search_tab.dart';

class BottomNavyBar extends StatefulWidget {
  @override
  _BottomNavyBarState createState() => _BottomNavyBarState();
}

class _BottomNavyBarState extends State<BottomNavyBar> {

  int selectedTab = 0;
  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _selectedTab(int index) {
    setState(() {
      selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.deepPurple,
          child: Icon(Icons.add, color: Colors.white),
          elevation: 2.0,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              IconButton(
                iconSize: 30.0,
                padding: EdgeInsets.only(left: 28.0),
                icon: Icon(Icons.home, color: Colors.white,),
                onPressed: () {
                  setState(() {
                    _pageController.jumpToPage(0);
                  });
                },
              ),

              IconButton(
                iconSize: 30.0,
                padding: EdgeInsets.only(right: 28.0),
                icon: Icon(Icons.search, color: Colors.white,),
                onPressed: () {
                  setState(() {
                    _pageController.jumpToPage(1);
                  });
                },
              ),
              IconButton(
                iconSize: 30.0,
                padding: EdgeInsets.only(left: 28.0),
                icon: Icon(Icons.notifications, color: Colors.white,),
                onPressed: () {
                  setState(() {
                    _pageController.jumpToPage(2);
                  });
                },
              ),
              IconButton(
                iconSize: 30.0,
                padding: EdgeInsets.only(right: 28.0),
                icon: Icon(Icons.account_circle, color: Colors.white,),
                onPressed: () {
                  setState(() {
                    _pageController.jumpToPage(3);
                  });
                },
              )
            ],
          ),
          shape: CircularNotchedRectangle(),
          color: Colors.deepPurple
        ),
        body: PageView(
          controller: _pageController,
          onPageChanged: (int) {
            //print('Page Changes to index $int');
          },
          children: <Widget>[
            HomeScreen(),
            SearchTab(),
            Center(
              child: Container(
                child: Text('Notifications Tab'),
              ),
            ),
            Center(
              child: Container(
                child: Text('Profile Tab'),
              ),
            )
          ],
          physics: NeverScrollableScrollPhysics(),
        ),
      ),
    );


  }
}
