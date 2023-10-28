import 'package:fitness_app/utils/size_config.dart';
import 'package:flutter/material.dart';

class SmallTile extends StatelessWidget {
  const SmallTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: SizeConfig.heightMultiplier * 20,
          width: SizeConfig.widthMultiplier * 100,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
              color: Colors.red),
        ),
        Container(
          height: SizeConfig.heightMultiplier * 10,
          width: SizeConfig.widthMultiplier * 100,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15),
              ),
              color: Colors.green),
        ),
      ],
    );
  }
}
