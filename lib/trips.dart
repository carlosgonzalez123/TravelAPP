import 'package:flutter/material.dart';
import 'home_trips.dart';
import 'search_trips.dart';
class Trips extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _Trips();
  }

}
class _Trips extends State<Trips>{

  int indexTap=0;

  final List<Widget> widgetsChildren = [
    HomeTrips(),
    SearchTrips()
  ];

  void onTapTapped(int index){
      setState(() {
        indexTap=index;
      });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build


    return Scaffold(
      body: widgetsChildren[indexTap],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
          primaryColor: Colors.purple
        ),
        child: BottomNavigationBar(
            currentIndex: indexTap,
            onTap: onTapTapped,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text("")
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search),
                  title: Text("")
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  title: Text("")
              ),
            ]
        ),
      ),
    );
  }

}