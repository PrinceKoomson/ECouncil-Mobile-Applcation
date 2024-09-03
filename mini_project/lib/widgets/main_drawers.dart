import 'package:flutter/material.dart';
import 'package:mini_project/screens/audio_screen.dart';
import 'package:mini_project/screens/booking_screen.dart';
import 'package:mini_project/screens/call_screen.dart';
import 'package:mini_project/screens/chart_screen.dart';
import 'package:mini_project/screens/tabs_screen.dart';
import 'package:provider/provider.dart';

import '../provider/auth.dart';

class MAINDRAWERS extends StatelessWidget {
  const MAINDRAWERS({super.key});

  Widget buildListTile(title, IconData icon, Function tapHandler) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        title,
        style: const TextStyle(fontSize: 10),
      ),
      onTap: (() => tapHandler),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(children: [
        Container(
          height: 120,
          width: double.infinity,
          padding: const EdgeInsets.all(20),
          alignment: Alignment.centerLeft,
          color: Theme.of(context).primaryColor,
          child: const Text(
            'Welcom To Icare',
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 28,
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        buildListTile('Home', Icons.home, () {
          Navigator.of(context).pushNamed(TabsScreen.routeName);
        }),
        buildListTile('Chat', Icons.chat,
            () => Navigator.of(context).pushNamed(ChatsScreen.routeName)),
        buildListTile('Call', Icons.call, () {
          Navigator.of(context).pushNamed(CallScreen.routeName);
        }),
        buildListTile('Audio', Icons.audio_file, () {
          Navigator.of(context).pushNamed(AudioScreen.routeName);
        }),
        buildListTile('Book Appoinment', Icons.book, () {
          Navigator.of(context).pushNamed(BookingScreen.routeName);
        }),
        const Divider(),
        ListTile(
          leading: const Icon(Icons.exit_to_app),
          title: const Text(
            'Logout',
            style: TextStyle(fontSize: 10),
          ),
          onTap: () {
            Navigator.of(context).pop();

            Provider.of<Auth>(context, listen: false).logout();
          },
        )
      ]),
    );
  }
}
