import 'package:flutter/material.dart';

class HomePageOfIncredibleProject extends StatelessWidget {
  const HomePageOfIncredibleProject({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: Obx(
      //   () => AnimatedBottomNavigationBar(
      //     backgroundColor: Color(0xff363545),
      //     inactiveColor: Colors.white,
      //     activeColor: Colors.red, icons: iconList,
      //     activeIndex: shopPageController.bottomNavigationBarIndex.value,
      //     gapLocation: GapLocation.center,
      //     notchSmoothness: NotchSmoothness.sharpEdge,
      //     onTap: (index) {
      //       shopPageController.bottomNavigationBarIndex.value = index;
      //     },
      //     //other params
      //   ),
      // ),
      body: Column(
        children: [
          Center(
            child: Image.asset("assets/LOGO-whitee.png",
                color: Colors.white,
                height: MediaQuery.of(context).size.height * 43.39 / 375),
          ),
        ],
      ),
    );
  }
}
