import 'package:flutter/material.dart';

import '../constants.dart';

class AppliedCard extends StatelessWidget {
  final String companyName;
  final String pathToLogo;

  const AppliedCard({
    Key? key,
    required this.companyName,
    required this.pathToLogo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: defaultPadding),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(defaultPadding / 1.3),
            child: Container(
              height: 190,
              width: 140,
              color: backwhite,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: 55,
                        child: Image.asset(pathToLogo),
                      ),
                      const SizedBox(height: 6),
                      Text(
                        companyName,
                        style: Theme.of(context).textTheme.headline5?.copyWith(
                            fontWeight: FontWeight.bold, fontSize: 22),
                      ),
                    ],
                  ),
                  ElevatedButton.icon(
                    onPressed: null,
                    icon: const Icon(Icons.done_rounded, color: Colors.black45),
                    label: const Text(
                      "Applied",
                      style: TextStyle(color: Colors.black54),
                    ),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.grey.shade300),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
