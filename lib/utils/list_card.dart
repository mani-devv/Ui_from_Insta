import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:insta_ui/details_page.dart';

import 'data.dart';
import 'job_card.dart';

class CardList extends StatelessWidget {
  const CardList({Key? key}) : super(key: key);

  // final List jobsForYou;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 50,
      shadowColor: Colors.black26,
      color: Colors.transparent,
      child: SizedBox(
        height: 170,
        width: double.infinity,
        child: ListView.builder(
          itemCount: jobsForYou.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return JobCard(
              companyName: jobsForYou[index].companyName,
              pathToLogo: jobsForYou[index].logoImagePath,
              location: jobsForYou[index].jobTitle,
              tag1: jobsForYou[index].tag1,
              tag2: jobsForYou[index].tag2,
              hourlyRate: jobsForYou[index].hourlyRate,
              press: () {
                Navigator.push(context, CupertinoPageRoute(
                  builder: (context) {
                    return DetailsPage(
                      jobsForYou: jobsForYou[index],
                    );
                  },
                ));
              },
            );
          },
        ),
      ),
    );
  }
}
