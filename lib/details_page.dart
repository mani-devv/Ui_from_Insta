import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:insta_ui/constants.dart';
import 'package:insta_ui/utils/data.dart';
import 'package:insta_ui/utils/job_card.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({
    Key? key,
    required this.jobsForYou,
  }) : super(key: key);
  final Jobs jobsForYou;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGrey,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.grey),
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: IconButton(
            icon: Image.asset(
              "assets/icons/left-arrow.png",
              color: Colors.grey,
              scale: 25,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        title: Text(
          "Details",
          style: TextStyle(color: blackColor),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              onPressed: () {},
              icon: Image.asset(
                "assets/icons/saved.png",
                scale: 23,
                color: Colors.grey,
              ),
            ),
          ),
        ],
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark,
          systemNavigationBarColor: backwhite,
          systemNavigationBarIconBrightness: Brightness.dark,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(defaultPadding * 3),
              topRight: Radius.circular(defaultPadding * 3),
            ),
            child: Container(
              height: double.infinity,
              width: double.infinity,
              color: backwhite,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: defaultPadding * 1.5),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(
                            vertical: defaultPadding * 1.7),
                        height: 90,
                        child: Image.asset(jobsForYou.logoImagePath),
                      ),
                      SizedBox(height: defaultPadding * 1.5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            jobsForYou.companyName,
                            style:
                                Theme.of(context).textTheme.headline5?.copyWith(
                                      color: blackColor,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22,
                                    ),
                          ),
                          Row(
                            children: [
                              Text(
                                "\$ " + jobsForYou.hourlyRate.toString() + "k",
                                style: Theme.of(context)
                                    .textTheme
                                    .labelLarge
                                    ?.copyWith(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 22,
                                    ),
                              ),
                              const Text(
                                "/Year",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 13),
                              )
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 25),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Tags(tag: jobsForYou.tag1),
                              const SizedBox(width: 2),
                              Tags(tag: jobsForYou.tag2),
                            ],
                          ),
                          const SizedBox(width: 8),
                          Text(jobsForYou.jobTitle),
                        ],
                      ),
                      const SizedBox(height: 45),
                      Row(
                        children: [
                          Text(
                            "Description",
                            style:
                                Theme.of(context).textTheme.headline5?.copyWith(
                                      color: blackColor,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22,
                                    ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 25),
                      Text(
                        dummyText,
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge
                            ?.copyWith(color: Colors.grey),
                      ),
                      const SizedBox(height: 45),
                      Row(
                        children: [
                          Text(
                            "Requirements",
                            style:
                                Theme.of(context).textTheme.headline5?.copyWith(
                                      color: blackColor,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22,
                                    ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 25),
                      Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          listText + listText,
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge
                              ?.copyWith(color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: defaultPadding / 1.5),
            child: MaterialButton(
              onPressed: () {},
              child: Text(
                "Apply",
                style: Theme.of(context)
                    .textTheme
                    .labelLarge
                    ?.copyWith(color: backwhite, fontWeight: FontWeight.bold),
              ),
              color: btnColor,
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              height: 50,
              minWidth: 300,
            ),
          ),
        ],
      ),
    );
  }
}
