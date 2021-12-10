import 'package:flutter/material.dart';

BottomAppBar bottomBuild() {
  return BottomAppBar(
    shape: CircularNotchedRectangle(),
    notchMargin: 5,
    color: Color(0xff363545),
    child: Container(
      height: 40,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 60),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.shop,
              color: Colors.white,
            ),
            Icon(
              Icons.comment,
              color: Colors.white,
            ),
          ],
        ),
      ),
    ),
  );
}
