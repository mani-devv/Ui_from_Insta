import 'package:flutter/material.dart';

import '../constants.dart';

class JobCard extends StatelessWidget {
  final String companyName;
  final String pathToLogo;
  final String location;
  final String tag1;
  final String tag2;
  final int hourlyRate;
  final VoidCallback press;

  const JobCard({
    Key? key,
    required this.companyName,
    required this.pathToLogo,
    required this.location,
    required this.tag1,
    required this.tag2,
    required this.hourlyRate,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: defaultPadding),
          child: Container(
            margin: const EdgeInsets.only(bottom: 20),
            height: 150,
            width: 260,
            padding: const EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: backwhite,
              borderRadius: BorderRadius.circular(25),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 45,
                      child: Image.asset(pathToLogo),
                    ),
                    const SizedBox(width: 5),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          companyName,
                          style: Theme.of(context)
                              .textTheme
                              .headline5
                              ?.copyWith(
                                  color: blackColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          location,
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall
                              ?.copyWith(fontSize: 12),
                        ),
                      ],
                    ),
                    const SizedBox(width: 30),
                    Container(
                      height: 36,
                      width: 36,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        border: Border.all(color: Colors.grey.shade400),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: Image.asset(
                          "assets/icons/saved.png",
                          color: btnColor,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                Row(
                  children: [
                    Tags(tag: tag1),
                    const SizedBox(width: 1),
                    Tags(tag: tag2),
                    const SizedBox(width: 5),
                    Text(
                      "\$ " + hourlyRate.toString() + "k",
                      style: Theme.of(context).textTheme.labelLarge?.copyWith(
                            fontWeight: FontWeight.w600,
                            fontSize: 15,
                          ),
                    ),
                    const Text(
                      "/Year",
                      style: TextStyle(color: Colors.grey, fontSize: 10),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        InkWell(
          onTap: press,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Container(
              alignment: Alignment.center,
              width: 145,
              height: 45,
              color: btnColor,
              child: Text(
                "More Details",
                style: Theme.of(context)
                    .textTheme
                    .labelLarge
                    ?.copyWith(color: backwhite),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class Tags extends StatelessWidget {
  const Tags({
    Key? key,
    required this.tag,
  }) : super(key: key);

  final String tag;

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.only(left: 5, right: 5, top: 2, bottom: 2),
      alignment: Alignment.center,
      height: 22,
      width: 70,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3),
          border: Border.all(color: Colors.grey.shade400)),
      child: Text(
        tag,
        style: TextStyle(color: btnColor, fontSize: 11),
      ),
    );
  }
}
