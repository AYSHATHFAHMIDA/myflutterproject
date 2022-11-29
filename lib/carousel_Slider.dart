import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
void main()=>runApp(MaterialApp(home: Carousel_Slider_Ex(),));
class Carousel_Slider_Ex extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('carousel slider'),
      ),
      body: ListView(
        children: [
          CarouselSlider(
              items: [
                Container(
                  margin: const EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: const DecorationImage(image: AssetImage("assets/lavender.jpg"),fit: BoxFit.cover),

                  ),
                )
              ],
              options: CarouselOptions(
                height: 200.0,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16/9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                viewportFraction: .5,
              ))
        ],
      ),
    );

  }

}