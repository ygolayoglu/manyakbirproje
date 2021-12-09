import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:manyakbirproje/controller/shop_page_controller.dart';

class ShopPageOfIncredibleProject extends GetWidget {
  ShopPageOfIncredibleProject({Key? key}) : super(key: key);
  ShopPageController shopPageController = ShopPageController();

  List<String> categoryList = [
    "GİYİM",
    "BAKIM SIVILARI",
    "ARAÇ AKSESUAR",
    "ARAÇ BAKIM",
  ];

  List<String> subCategoryList = [
    "DİĞER",
    "CİLA",
    "YIKAMA ŞAMPUANLARI",
    "TEMİZLİK",
    "YAĞLAYICILAR",
  ];

  List<IconData> iconList = [
    Icons.add,
    Icons.ac_unit_outlined,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff23232D),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
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
        body: SafeArea(
          child: Column(
            children: [
              Center(
                child: Image.asset("assets/LOGO-whitee.png",
                    color: Colors.white,
                    height: MediaQuery.of(context).size.height * 43.39 / 375),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              Container(
                width: MediaQuery.of(context).size.width * 335 / 375,
                height: 1.5,
                color: Colors.white,
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  RotatedBox(
                    quarterTurns: 3,
                    child: Container(
                      color: Color(0xff000000ED),
                      width: MediaQuery.of(context).size.width * 1.6,
                      height: 30,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: categoryList.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(left: 50.0),
                              child: Center(
                                child: Obx(
                                  () => GestureDetector(
                                    onTap: () {
                                      shopPageController
                                          .selectedCategoryIndex.value = index;
                                    },
                                    child: Text(
                                      categoryList[index],
                                      style: TextStyle(
                                        color: shopPageController
                                                        .selectedCategoryIndex
                                                        .value !=
                                                    null &&
                                                shopPageController
                                                        .selectedCategoryIndex
                                                        .value ==
                                                    index
                                            ? Color(0xffFF9B34)
                                            : Colors.white,
                                        fontSize: 20,
                                        fontWeight: shopPageController
                                                        .selectedCategoryIndex
                                                        .value !=
                                                    null &&
                                                shopPageController
                                                        .selectedCategoryIndex
                                                        .value ==
                                                    index
                                            ? FontWeight.w500
                                            : FontWeight.w200,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }),
                    ),
                  ),
                  SizedBox(width: 10),
                  RotatedBox(
                    quarterTurns: 3,
                    child: Container(
                      color: Color(0xff2E2C4E),
                      width: MediaQuery.of(context).size.width * 1.6,
                      height: 30,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: subCategoryList.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(left: 50.0),
                              child: Center(
                                  child: Obx(
                                () => GestureDetector(
                                  onTap: () {
                                    shopPageController
                                        .selectedSubCategoryIndex.value = index;
                                  },
                                  child: Text(
                                    subCategoryList[index],
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: shopPageController
                                                      .selectedSubCategoryIndex
                                                      .value !=
                                                  null &&
                                              shopPageController
                                                      .selectedSubCategoryIndex
                                                      .value ==
                                                  index
                                          ? FontWeight.w500
                                          : FontWeight.w200,
                                    ),
                                  ),
                                ),
                              )),
                            );
                          }),
                    ),
                  ),
                  Container(
                    height: Get.height * 0.741,
                    width: Get.width * 0.7,
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 50.0),
                            child: Container(
                                height: Get.height * 0.4,
                                width: Get.width * 0.3,
                                decoration: BoxDecoration(
                                  color: Color(0xffD9D2D2),
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(16),
                                      bottomRight: Radius.circular(16)),
                                )),
                          );
                        }),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
