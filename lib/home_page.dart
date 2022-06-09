import 'package:flutter/material.dart';
import 'package:insta_ui/constants.dart';
import 'package:insta_ui/utils/applied_c_list.dart';
import 'package:insta_ui/utils/bottom_bar.dart';
import 'package:insta_ui/utils/list_card.dart';
import 'package:insta_ui/utils/search_field.dart';

import 'category.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: backGrey,
      ),
      backgroundColor: backGrey,
      bottomNavigationBar: const BottomBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //AppBar
              Padding(
                padding: EdgeInsets.only(
                  left: defaultPadding / 1.8,
                  top: defaultPadding / 2,
                  right: defaultPadding / 1.8,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        "assets/icons/menu.png",
                        scale: 22.0,
                        color: btnColor,
                      ),
                    ),
                    Text(
                      "Hello, Usman",
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(color: Colors.grey),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        "assets/icons/notification.png",
                        scale: 21.0,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: defaultPadding),

              //Text
              Padding(
                padding: EdgeInsets.symmetric(horizontal: defaultPadding),
                child: Text(
                  "Kickstart",
                  style: Theme.of(context)
                      .textTheme
                      .headline4!
                      .copyWith(color: blackColor, fontWeight: FontWeight.w400),
                ),
              ),

              //Text
              Padding(
                padding: EdgeInsets.symmetric(horizontal: defaultPadding),
                child: Text(
                  "Your Career",
                  style: Theme.of(context)
                      .textTheme
                      .headline4!
                      .copyWith(color: btnColor, fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(height: defaultPadding * 2),

              //SearchField
              Padding(
                padding: EdgeInsets.symmetric(horizontal: defaultPadding),
                child: const SearchField(),
              ),
              SizedBox(height: defaultPadding * 2.3),

              //Category List
              Padding(
                padding: EdgeInsets.symmetric(horizontal: defaultPadding),
                child: const Category(),
              ),
              SizedBox(height: defaultPadding * 1.2),

              //CardList
              const CardList(),
              SizedBox(height: defaultPadding * 2.3),

              // Applied Jobs
              Padding(
                padding: EdgeInsets.symmetric(horizontal: defaultPadding * 1.2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Applied Jobs",
                      style: Theme.of(context).textTheme.headline6?.copyWith(
                            fontWeight: FontWeight.w700,
                            fontSize: 19,
                          ),
                    ),
                    const Text(
                      "Show All",
                      style: TextStyle(color: Colors.black38),
                    ),
                  ],
                ),
              ),
              SizedBox(height: defaultPadding),

              // Applied Jobs List
              const AppliedJobsList()
            ],
          ),
        ),
      ),
    );
  }
}
