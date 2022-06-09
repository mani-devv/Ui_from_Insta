import 'package:flutter/material.dart';
import 'package:insta_ui/utils/data.dart';

import '../constants.dart';
import 'applied_card.dart';

class AppliedJobsList extends StatelessWidget {
  const AppliedJobsList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: defaultPadding),
      child: SizedBox(
        height: 200,
        width: double.infinity,
        child: ListView.builder(
          itemCount: 3,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => AppliedCard(
            companyName: appliedList[index].companyName,
            pathToLogo: appliedList[index].logoImagePath,
          ),
        ),
      ),
    );
  }
}
