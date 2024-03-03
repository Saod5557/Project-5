
import 'package:flutter/material.dart';

import 'Sreen/account.dart';
import 'Sreen/cart.dart';
import 'Sreen/catalogue.dart';
import 'Sreen/home.dart';


class NavBottom extends StatefulWidget {
  const NavBottom({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _NavBottomState createState() => _NavBottomState();
}

class _NavBottomState extends State<NavBottom> {
  
  int _selectedIndex = 0;

  final List<Widget> _pages = [
     Home(),
     Catalogue(),
     Cart(),
     Account(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body: _pages.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
         backgroundColor:  Colors.white,
        items: const <BottomNavigationBarItem>[
       
           
          

          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'HOME',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'CATALOGUE',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: 'CART',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: 'ACCOUNT',

          ),
          
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.teal,
      
        unselectedItemColor: Colors.black, // Change the color of inactive items
        onTap: _onItemTapped,
      ),
    );
  }
}
