import 'package:fitness_app/constants/colors.dart';
import 'package:fitness_app/utils/size_config.dart';
import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          contentPadding:
              EdgeInsets.symmetric(vertical: SizeConfig.heightMultiplier * 1),
          hintText: "Search",
          filled: true,
          fillColor: AppColors.greyLight,
          prefixIcon: Icon(Icons.search_outlined),
          border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(10))),
    );
  }
}
