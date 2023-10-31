import 'package:fitness_app/constants/icons.dart';
import 'package:fitness_app/utils/size_config.dart';
import 'package:fitness_app/utils/spacing.dart';
import 'package:flutter/material.dart';

class PostTile extends StatelessWidget {
  String text;
  String image;
  var index;
  PostTile(
      {super.key,
      required this.index,
      required this.text,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.widthMultiplier * 100,
      padding: EdgeInsets.all(SizeConfig.heightMultiplier * 2),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage("assets/images/avatar2.jpeg"),
              ),
              Spacing.x(2),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Usman Tahir"),
                  Spacing.y(0),
                  Text(
                    "4 minutes ago",
                  )
                ],
              ),
            ],
          ),
          Spacing.y(2),
          index % 2 == 0
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image(
                        image: NetworkImage(
                          image,
                        ),
                      ),
                    ),
                    Spacing.y(2),
                    Text(text),
                  ],
                )
              : Text(text),
          Spacing.y(1),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/icons/heart.png',
                    height: SizeConfig.imageSizeMultiplier * 6,

                    // width: 0.1,
                  ),
                  Spacing.x(1),
                  const Text("145"),
                  Spacing.x(3),
                  Image.asset(
                    'assets/icons/comment.png',
                    height: SizeConfig.imageSizeMultiplier * 6,

                    // width: 0.1,
                  ),
                  Spacing.x(1),
                  const Text("145"),
                  Spacing.x(3),
                  Image.asset(
                    'assets/icons/send.png',
                    height: SizeConfig.imageSizeMultiplier * 5,

                    // width: 0.1,
                  ),
                ],
              ),
              const Icon(Icons.more_horiz),
            ],
          )
        ],
      ),
    );
  }
}
