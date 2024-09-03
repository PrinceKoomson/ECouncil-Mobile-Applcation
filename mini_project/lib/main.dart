import 'package:flutter/material.dart';
import 'package:mini_project/screens/call_screen.dart';
import 'package:mini_project/screens/chart_screen.dart';
import './provider/auth.dart';
import 'package:provider/provider.dart';

import './screens/tabs_screen.dart';
import './screens/booking_screen.dart';
import './screens/audio_screen.dart';
import './screens/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: Auth(),
        ),
      ],
      child: Consumer<Auth>(
        builder: (context, auth, _) => MaterialApp(
            theme: ThemeData(primarySwatch: Colors.green),
            home: /* auth.isAuth ? */ TabsScreen(),
            /*  :  AuthScreen(),*/
            routes: {
              HomepageScreen.routeName: (context) => TabsScreen(),
              ChatsScreen.routeName: (context) => ChatsScreen(),
              CallScreen.routeName: (context) => CallScreen(),
              BookingScreen.routeName: (context) => BookingScreen(),
              AudioScreen.routeName: (context) => AudioScreen(),
              TabsScreen.routeName: (context) => TabsScreen()
            }),
      ),
    );
  }
}
