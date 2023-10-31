import 'package:fitness_app/constants/colors.dart';
import 'package:fitness_app/utils/size_config.dart';
import 'package:fitness_app/utils/spacing.dart';
import 'package:flutter/material.dart';

class CalanderTile extends StatelessWidget {
  const CalanderTile({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      children: [
        Container(
          height: SizeConfig.heightMultiplier * 6,
          width: SizeConfig.widthMultiplier * 100,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              color: Colors.black),
          child: Center(
            child: Text(
              "WARM UP",
              style: textTheme.displayLarge!.copyWith(color: Colors.white),
            ),
          ),
        ),
        Container(
          height: SizeConfig.heightMultiplier * 20,
          width: SizeConfig.widthMultiplier * 100,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
              color: Colors.white),
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.widthMultiplier * 4),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Build to 7.10 PRE",
                      style: textTheme.bodyMedium,
                    ),
                    Text(
                      "0:00 - 1:00",
                      style: textTheme.bodyMedium!.copyWith(
                          color: AppColors.greyDark.withOpacity(0.70)),
                    ),
                  ],
                ),
                Spacing.y(1),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Alternate 10 Secs 8/10 & 5/10 RPE with\n2/10",
                      style: textTheme.bodyMedium,
                    ),
                    Text(
                      "0:00 - 1:00",
                      style: textTheme.bodyMedium!.copyWith(
                          color: AppColors.greyDark.withOpacity(0.70)),
                    ),
                  ],
                ),
                Spacing.y(1),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Build to 7.10 PRE",
                      style: textTheme.bodyMedium,
                    ),
                    Text(
                      "0:00 - 1:00",
                      style: textTheme.bodyMedium!.copyWith(
                          color: AppColors.greyDark.withOpacity(0.70)),
                    ),
                  ],
                ),
                Spacing.y(1),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Build to 7.10 PRE",
                      style: textTheme.bodyMedium,
                    ),
                    Text(
                      "0:00 - 1:00",
                      style: textTheme.bodyMedium!.copyWith(
                          color: AppColors.greyDark.withOpacity(0.70)),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
