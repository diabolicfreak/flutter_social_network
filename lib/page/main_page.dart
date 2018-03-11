import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {

  @override
  State createState() {
    return new _MainPageState();
  }
}

class _MainPageState extends State<MainPage> {
  PageController _pageController;
  int _page = 0;

  @override
  void initState() {
    super.initState();
    _pageController = new PageController();
  }

  @override
  void dispose(){
    super.dispose();
    _pageController.dispose();
  }

  void _onPageChanged(int page){
    setState(()=>_page = page);;
  }

  navigationTapped(int page){
    _pageController.animateToPage(
        page,
        duration: const Duration(milliseconds: 300),
        curve: Curves.ease
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new PageView(
        children: <Widget>[
          new Container(color: Colors.red, child: new Text("sdasd"),),
          new Container(color: Colors.blue,),
          new Container(color: Colors.grey,)
        ],
        onPageChanged: _onPageChanged,
        controller: _pageController,
      ),
      bottomNavigationBar: new BottomNavigationBar(
        items: [
          new BottomNavigationBarItem(
            icon: new Icon(Icons.add),
            title: new Text("trends")
          ),
          new BottomNavigationBarItem(
            icon: new Icon(Icons.add),
            title: new Text("feed")
          ),
          new BottomNavigationBarItem(
            icon: new Icon(Icons.add),
            title: new Text("community")
          ),
        ],
        currentIndex: _page,
        onTap: navigationTapped,
      ),
    );
  }
}