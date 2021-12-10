import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:manyakbirproje/widgets/bottom_app_bar.dart';

class HomePageOfIncredibleProject extends StatelessWidget {
  HomePageOfIncredibleProject({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color(0xff363545),
        child: const Icon(
          Icons.star,
          size: 40,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: bottomBuild(),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Color(0xff22222C), Color(0xff393848)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter),
        ),
        child: SafeArea(
          bottom: false,
          child: Column(
            children: [
              Center(
                child: Image.asset("assets/LOGO-whitee.png",
                    color: Colors.white,
                    height: MediaQuery.of(context).size.height * 43.39 / 375),
              ),
              CarouselSlider(
                options: CarouselOptions(
                  enlargeCenterPage: true,
                  height: 200.0,
                  enlargeStrategy: CenterPageEnlargeStrategy.scale,
                  viewportFraction: 0.4,
                ),
                items: [1, 2, 3, 4, 5].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                          width: MediaQuery.of(context).size.width * 0.4,
                          margin: EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: BoxDecoration(color: Colors.amber),
                          child: Text(
                            'text $i',
                            style: TextStyle(fontSize: 16.0),
                          ));
                    },
                  );
                }).toList(),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildItemList(BuildContext context, int index) {
  List<int> data = [10, 9, 8, 7, 6, 5, 4, 3, 2, 1];

  if (index == data.length)
    return Center(
      child: CircularProgressIndicator(),
    );
  return Container(
    width: 150,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          color: Colors.yellow,
          width: 150,
          height: 200,
          child: Center(
            child: Text(
              '${data[index]}',
              style: TextStyle(fontSize: 50.0, color: Colors.black),
            ),
          ),
        ),
      ],
    ),
  );
}
