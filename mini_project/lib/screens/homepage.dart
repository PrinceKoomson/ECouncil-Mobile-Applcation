import 'package:flutter/material.dart';

import '../widgets/event_slider.dart';
import '../models/news.dart';

class HomepageScreen extends StatelessWidget {
  static const routeName = './home';

  final List<News> _news = [
    News(
      id: 'c1',
      title: 'Welcome To The Counseling Center',
      subject:
          'We are happy to have you count on us during any emotional time you encounter',
      imageUrl: 'assets/images/flyer.jpg',
    ),
    News(
      id: 'c2',
      title: 'Off Campus Visitation',
      subject:
          'We bring the counseling center to your door step and at your comfort',
      imageUrl: 'assets/event_flyers/flyer_2.jpg',
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //Events session
          EventSlider(),

          Container(
            height: 362,
            child: ListView.builder(
              itemBuilder: ((context, index) => Card(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                      ),
                    ),
                    elevation: 5,
                    margin: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        AspectRatio(
                          aspectRatio: 16 / 9,
                          child: ClipRRect(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15),
                            ),
                            child: Image.asset(
                              _news[index].imageUrl,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                _news[index].title,
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                _news[index].subject,
                                style: const TextStyle(fontSize: 14),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )),
              itemCount: _news.length,
            ),
          )
        ],
      ),
    );
  }
}
