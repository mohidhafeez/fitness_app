import 'package:fitness_app/constants/colors.dart';
import 'package:fitness_app/utils/size_config.dart';
import 'package:fitness_app/views/widgets/scrollable_list.dart';
import 'package:fitness_app/views/widgets/search_field.dart';
import 'package:flutter/material.dart';

class SocialScreen extends StatefulWidget {
  const SocialScreen({super.key});

  @override
  State<SocialScreen> createState() => _SocialScreenState();
}

class _SocialScreenState extends State<SocialScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
                padding: EdgeInsets.symmetric(
                    vertical: SizeConfig.heightMultiplier * 4,
                    horizontal: SizeConfig.widthMultiplier * 4),
                child: SearchField()),
            Padding(
              padding: EdgeInsets.only(left: SizeConfig.widthMultiplier * 2),
              child: SocialScreen(),
            ),
          ],
        ),
      ),
    );
  }
}
