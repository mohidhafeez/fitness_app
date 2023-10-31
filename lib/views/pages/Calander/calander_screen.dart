import 'package:fitness_app/constants/icons.dart';
import 'package:fitness_app/utils/size_config.dart';
import 'package:fitness_app/utils/spacing.dart';
import 'package:fitness_app/views/pages/Calander/component/calander_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CalanderScreen extends StatelessWidget {
  const CalanderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: SizeConfig.heightMultiplier * 2,
                horizontal: SizeConfig.widthMultiplier * 1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {}, icon: Icon(CupertinoIcons.calendar)),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.black),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: SizeConfig.widthMultiplier * 4,
                        vertical: SizeConfig.heightMultiplier * 1),
                    child: Row(
                      children: [
                        Text(
                          "98 Performance",
                          style: textTheme.labelLarge!
                              .copyWith(color: Colors.white),
                        ),
                        Spacing.x(6),
                        Icon(
                          CupertinoIcons.chevron_down,
                          color: Colors.white,
                          size: SizeConfig.imageSizeMultiplier * 4,
                        )
                      ],
                    ),
                  ),
                ),
                IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      AppIcons.comment,
                      height: SizeConfig.imageSizeMultiplier * 6,
                    ))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Placeholder(
              fallbackHeight: SizeConfig.heightMultiplier * 10,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.widthMultiplier * 3),
            child: Column(
              children: [
                CalanderTile(),
                Spacing.y(2),
                CalanderTile(),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
