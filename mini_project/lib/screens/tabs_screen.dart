import 'package:flutter/material.dart';
import 'package:mini_project/screens/audio_screen.dart';

import '../screens/homepage.dart';
import '../screens/chart_screen.dart';
import '../screens/call_screen.dart';
import '../screens/booking_screen.dart';
import '../widgets/main_drawers.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});
  static const routeName = '/tabs_screen';

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  final List<Map<String, dynamic>> _pages = [
    {'page': HomepageScreen(), 'title': 'HOME'},
    {'page': ChatsScreen(), 'title': 'CHAT'},
    {'page': const CallScreen(), 'title': 'CALLS'},
    {'page': AudioScreen(), 'title': 'AUDIO'},
    {'page': BookingScreen(), 'title': 'BOOKING'}
  ];

  int _selectedPageIndex = 0;

  void _selectPage(int index) => setState(() {
        _selectedPageIndex = index;
      });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pages[_selectedPageIndex]['title']),
        actions: [Image.asset('assets/images/icare2.jpg')],
        elevation: 3,
      ),
      drawer: const MAINDRAWERS(),
      body: _pages[_selectedPageIndex]['page'],
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(5),
            topRight: Radius.circular(5),
          ),
        ),
        child: BottomNavigationBar(
          onTap: _selectPage,
          /* backgroundColor: Theme.of(context).primaryColor, */
          unselectedItemColor: Colors.blue,
          selectedItemColor: Colors.white,
          currentIndex: _selectedPageIndex,
          items: [
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: const Icon(Icons.home),
                label: 'Home'),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: const Icon(Icons.chat),
                label: 'Chat'),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: const Icon(Icons.call),
                label: 'Call'),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: const Icon(Icons.audio_file),
                label: 'Audio'),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: const Icon(Icons.book),
                label: 'Book Appointment')
          ],
        ),
      ),
    );
  }
}
