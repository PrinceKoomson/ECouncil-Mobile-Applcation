import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class EventSlider extends StatefulWidget {
  @override
  State<EventSlider> createState() => _EventSliderState();
}

class _EventSliderState extends State<EventSlider> {
  int activeIndex = 0;

  final _events = [
    'assets/event_flyers/flyer.jpg',
    'assets/event_flyers/flyer_2.jpg',
    'assets/event_flyers/flyer_3.jpg',
    'assets/event_flyers/flyer_4.jpg',
  ];

  Widget buildImage(String event, index) {
    return Container(
      color: Colors.grey,
      child: Image.asset(
        event,
        fit: BoxFit.fitWidth,
      ),
    );
  }

  Widget buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: _events.length,
        effect: const SlideEffect(
          activeDotColor: Colors.green,
          dotColor: Colors.grey,
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: CarouselSlider.builder(
            options: CarouselOptions(
              height: 250,
              autoPlay: true,
              reverse: true,
              autoPlayInterval: const Duration(seconds: 5),
              viewportFraction: 1,
              onPageChanged: (index, reason) => setState(
                () => activeIndex = index,
              ),
            ),
            itemCount: _events.length,
            itemBuilder: ((context, index, realIndex) {
              final event = _events[index];

              return buildImage(event, index);
            }),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        buildIndicator()
      ],
    );
  }
}
