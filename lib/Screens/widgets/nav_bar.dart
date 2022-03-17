import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:travelapp/Screens/widgets/map_markers.dart';

class navBar extends StatefulWidget {

  @override
  State<navBar> createState() => _navBarState();
}

class _navBarState extends State<navBar> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white54,
        borderRadius: BorderRadius.circular(30),
      ),
      child: GNav(
        gap: 8,
        activeColor: Colors.blue,
        iconSize: 25,
        padding: EdgeInsets.all(5),
        duration: Duration(milliseconds: 800),
        tabBackgroundColor: Colors.white,
        tabs: [
          GButton(
            icon: Icons.home,
            text: 'home',
          ),
          GButton(
            icon: Icons.favorite_border,
            text: 'favorite',
          ),
          GButton(
            icon: Icons.map,
            text: 'map',
          ),
          GButton(
            icon: Icons.person_outline,
            text: 'profile',
          ),
        ],
        selectedIndex: _selectedIndex,
        onTabChange: (index) {
          setState(() {
            _selectedIndex = index;
            if(index == 2){
              // Navigator.of(context).pushNamed('mapPreview');
              Navigator.push(context, MaterialPageRoute(builder: (context) => MapMarkers(tipo: 'all',)));
            }
          });
        },
      ),
    );
  }
}