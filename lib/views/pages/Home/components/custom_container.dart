import 'package:fitness_app/utils/size_config.dart';
import 'package:fitness_app/utils/spacing.dart';
import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  String imageURL;
  CustomContainer({super.key, required this.imageURL});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Stack(
      children: [
        Column(
          children: [
            Container(
              height: SizeConfig.heightMultiplier * 23,
              width: SizeConfig.widthMultiplier * 100,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                      imageURL,
                    ),
                    fit: BoxFit.cover),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
              ),
            ),
            Container(
              height: SizeConfig.heightMultiplier * 12,
              width: SizeConfig.widthMultiplier * 100,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                  color: Colors.white),
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.widthMultiplier * 2,
                    vertical: SizeConfig.heightMultiplier * 1),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Danial Cooper • Aug 12, 2022",
                      style: textTheme.bodyLarge,
                    ),
                    Spacing.y(0.5),
                    Text("OVERCOMING SETBACKS",
                        style: textTheme.headlineSmall!
                            .copyWith(fontWeight: FontWeight.w500)),
                  ],
                ),
              ),
            ),
          ],
        ),
        Positioned(
          top: SizeConfig.heightMultiplier * 19,
          left: SizeConfig.widthMultiplier * 72,
          child: Container(
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: Colors.white),
            child: const Padding(
              padding: EdgeInsets.all(5.0),
              child: Center(
                child: CircleAvatar(
                  radius: 25,
                  backgroundImage: NetworkImage(
                      "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
