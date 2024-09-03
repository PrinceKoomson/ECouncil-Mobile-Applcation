import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CallScreen extends StatelessWidget {
  const CallScreen({super.key});
  static const routeName = '/ call_screen';

  Widget buildCall(IconData icon, String number, String prefix) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          children: [
            Icon(
              icon,
              size: 36,
              color: Colors.blue,
            ),
            const SizedBox(
              width: 8,
            ),
            SelectableText(
              number,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        SizedBox(
          width: 20,
        ),
        ElevatedButton(
            onPressed: () async {
              final Uri url = Uri(
                scheme: prefix,
                path: number,
              );

              if (await canLaunchUrl(url)) {
                await launchUrl(url);
              } else {
                print('cannot Launch this url');
              }
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green.shade600,
            ),
            child: const Text('Call'))
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            child: Container(
              width: 300,
              height: 200,
              child: Card(
                elevation: 5,
                child: Image.asset('assets/images/kcc-knust.png'),
              ),
            ),
          ),
          Divider(),
          // Call logs
          buildCall(Icons.call, '+233-244-606-579', 'tel'),

          const Divider(
            thickness: 2,
          ),

          buildCall(Icons.call, '(+233)-201-469-446', 'tel')
        ],
      ),
    );
  }
}
