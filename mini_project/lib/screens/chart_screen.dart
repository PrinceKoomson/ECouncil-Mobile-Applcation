import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ChatsScreen extends StatelessWidget {
  static const routeName = '/chats_screen';

  final List<Map<String, String>> emailReceipient = [
    {'CoS': 'CoS@gmail.com.com'},
    {'CoE': 'CoE@gmail.com'},
    {'COA&NR': 'COA&NS@gamil.com'},
    {'COA&Be': 'COA&Be@gamil.com'},
    {'COHS': 'COHS@gamil.com'},
    {'COH&SS': 'COH&SS@gamil.com'}
  ];

  ChatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  child: Image.asset('assets/images/kcc-knust.png')),
            ),

            const Divider(),
            const Text(
              'NOTE: PLAEASE INDICATE YOUR SUBJECT PRECISELY TO AVOID AMBIGUITY OR MISINTERPRETATION',
              style: TextStyle(color: Colors.red),
            ),
            const SizedBox(
              height: 10,
            ),
            Column(children: [
              const Text(
                'College Of Science Counseling Center',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Icon(
                    Icons.email,
                    size: 36,
                    color: Colors.blue,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'CoS@gmail.com',
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                    softWrap: true,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      String? encodeQueryParameters(
                          Map<String, String> params) {
                        return params.entries
                            .map((MapEntry<String, String> e) =>
                                '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
                            .join('&');
                      }

                      final Uri emailLaunchUri = Uri(
                        scheme: 'mailto',
                        path: 'princekoomson03@gmail.com',
                        query: encodeQueryParameters(
                            <String, String>{'subject': '', 'body': ''}),
                      );

                      if (await canLaunchUrl(emailLaunchUri)) {
                        launchUrl(emailLaunchUri);
                      } else {
                        throw Exception('Could not launch $emailLaunchUri');
                      }

                      try {
                        (await canLaunchUrl(emailLaunchUri));
                      } catch (e) {
                        print(e.toString);
                      }
                    },
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                    child: const Text('Message'),
                  ),
                ],
              ),
            ]),
            //end
            const Divider(
              height: 5,
            ),
            Column(
              children: [
                const Text(
                  'College Of Engineering Counseling Center',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Icon(
                      Icons.email,
                      size: 36,
                      color: Colors.blue,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'CoE@gmail.com',
                      style:
                          TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                      softWrap: true,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    ElevatedButton(
                      onPressed: () async {
                        String? encodeQueryParameters(
                            Map<String, String> params) {
                          return params.entries
                              .map((MapEntry<String, String> e) =>
                                  '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
                              .join('&');
                        }

                        final Uri emailLaunchUri = Uri(
                          scheme: 'mailto',
                          path: 'princekoomson03@gmail.com',
                          query: encodeQueryParameters(<String, String>{
                            'subject': '',
                          }),
                        );

                        if (await canLaunchUrl(emailLaunchUri)) {
                        } else {
                          throw Exception('Could not launch $emailLaunchUri');
                        }
                        launchUrl(emailLaunchUri);
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue),
                      child: const Text('Message'),
                    ),
                  ],
                ),
              ],
            ),
            //end,
            const Divider(
              height: 5,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  'College Of Arts And Natural Resource Counseling Center',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Icon(
                      Icons.email,
                      size: 36,
                      color: Colors.blue,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'CoA&NR@gamil.com',
                      style:
                          TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    ElevatedButton(
                      onPressed: () async {
                        String? encodeQueryParameters(
                            Map<String, String> params) {
                          return params.entries
                              .map((MapEntry<String, String> e) =>
                                  '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
                              .join('&');
                        }

                        final Uri emailLaunchUri = Uri(
                          scheme: 'mailto',
                          path: 'princekoomson03@gmail.com',
                          query: encodeQueryParameters(<String, String>{
                            'subject': '',
                          }),
                        );

                        if (await canLaunchUrl(emailLaunchUri)) {
                        } else {
                          throw Exception('Could not launch $emailLaunchUri');
                        }
                        launchUrl(emailLaunchUri);
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue),
                      child: const Text('Message'),
                    ),
                  ],
                ),
              ],
            ),
            //end,

            const Divider(
              height: 5,
            ),
            Column(
              children: [
                const Text(
                  'College Of Arts And Business Environment Counseling Center',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Icon(
                      Icons.email,
                      size: 36,
                      color: Colors.blue,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'CoA&Be@gamil.com',
                      style:
                          TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    ElevatedButton(
                      onPressed: () async {
                        String? encodeQueryParameters(
                            Map<String, String> params) {
                          return params.entries
                              .map((MapEntry<String, String> e) =>
                                  '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
                              .join('&');
                        }

                        final Uri emailLaunchUri = Uri(
                          scheme: 'mailto',
                          path: 'princekoomson03@gmail.com',
                          query: encodeQueryParameters(<String, String>{
                            'subject': '',
                          }),
                        );

                        if (await canLaunchUrl(emailLaunchUri)) {
                        } else {
                          throw Exception('Could not launch $emailLaunchUri');
                        }
                        launchUrl(emailLaunchUri);
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue),
                      child: const Text('Message'),
                    ),
                  ],
                ),
              ],
            ),
            //end,

            const Divider(
              height: 5,
            ),
            Column(
              children: [
                const Text(
                  'College Of Health Sciences Counseling Center',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Icon(
                      Icons.email,
                      size: 36,
                      color: Colors.blue,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'COHS@gamil.com',
                      style:
                          TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    ElevatedButton(
                      onPressed: () async {
                        String? encodeQueryParameters(
                            Map<String, String> params) {
                          return params.entries
                              .map((MapEntry<String, String> e) =>
                                  '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
                              .join('&');
                        }

                        final Uri emailLaunchUri = Uri(
                          scheme: 'mailto',
                          path: 'princekoomson03@gmail.com',
                          query: encodeQueryParameters(<String, String>{
                            'subject': '',
                          }),
                        );

                        if (await canLaunchUrl(emailLaunchUri)) {
                        } else {
                          throw Exception('Could not launch $emailLaunchUri');
                        }
                        launchUrl(emailLaunchUri);
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue),
                      child: const Text('Message'),
                    ),
                  ],
                ),
              ],
            ),
            //end,

            const Divider(
              height: 5,
            ),
            Column(
              children: [
                const Text(
                  'College Of Health And Social Sciences Counseling Center',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Icon(
                      Icons.email,
                      size: 36,
                      color: Colors.blue,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'COH&SS@gamil.com',
                      style:
                          TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    ElevatedButton(
                      onPressed: () async {
                        String? encodeQueryParameters(
                            Map<String, String> params) {
                          return params.entries
                              .map((MapEntry<String, String> e) =>
                                  '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
                              .join('&');
                        }

                        final Uri emailLaunchUri = Uri(
                          scheme: 'mailto',
                          path: 'princekoomson03@gmail.com',
                          query: encodeQueryParameters(<String, String>{
                            'subject': '',
                          }),
                        );

                        if (await canLaunchUrl(emailLaunchUri)) {
                        } else {
                          throw Exception('Could not launch $emailLaunchUri');
                        }
                        launchUrl(emailLaunchUri);
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue),
                      child: const Text('Message'),
                    ),
                  ],
                ),
              ],
            )
            //end,
          ],
        ),
      ),
    );
  }
}
