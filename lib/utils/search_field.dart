import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 30,
      shadowColor: Colors.black26,
      borderRadius: const BorderRadius.all(
        Radius.circular(10),
      ),
      child: Form(
        child: TextFormField(
          decoration: InputDecoration(
            prefixIcon: Padding(
              padding: EdgeInsets.all(defaultPadding / 1.7),
              child: SvgPicture.asset("assets/icons/Search.svg",
                  color: blackColor),
            ),
            hintText: "Search Jobs",
            hintStyle: const TextStyle(color: Colors.black38),
            fillColor: backwhite,
            filled: true,
            border: outlineInputBorder,
            enabledBorder: outlineInputBorder,
            focusedBorder: outlineInputBorder,
          ),
        ),
      ),
    );
  }
}

const outlineInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.all(
    Radius.circular(10),
  ),
  borderSide: BorderSide.none,
);
