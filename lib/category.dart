import 'package:flutter/material.dart';

import 'constants.dart';

class Category extends StatefulWidget {
  const Category({Key? key}) : super(key: key);

  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  final List<String> category = [
    "Popular",
    "UI/UX",
    "Graphic Designer",
    "Flutter",
    "Web Developer",
    "Video Editor"
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: ListView.builder(
        itemCount: category.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return buildCategory(index);
        },
      ),
    );
  }

  Widget buildCategory(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: EdgeInsets.only(right: defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              category[index],
              style: TextStyle(
                fontWeight: selectedIndex == index
                    ? FontWeight.bold
                    : FontWeight.normal,
                color: selectedIndex == index ? blackColor : Colors.black38,
                fontSize: selectedIndex == index ? 16 : 15,
              ),
            ),
            AnimatedContainer(
              duration: const Duration(milliseconds: 350),
              margin: EdgeInsets.only(top: defaultPadding / 4),
              height: 2,
              width: selectedIndex == index ? 38 : 0,
              decoration: BoxDecoration(
                  color: selectedIndex == index ? btnColor : Colors.transparent,
                  borderRadius: BorderRadius.circular(100)),
            ),
          ],
        ),
      ),
    );
  }
}
