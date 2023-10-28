import 'package:fitness_app/constants/colors.dart';
import 'package:fitness_app/utils/size_config.dart';
import 'package:fitness_app/views/pages/Moment%20Library/componenets/small_tile.dart';
import 'package:fitness_app/views/widgets/search_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class MomentLibrary extends StatelessWidget {
  const MomentLibrary({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: SizeConfig.widthMultiplier * 3,
              vertical: SizeConfig.heightMultiplier * 4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "MOVEMENT LIBRARY",
                style: textTheme.headlineSmall,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: SizeConfig.heightMultiplier * 4),
                child: SearchField(),
              ),
              StaggeredGrid.count(
                crossAxisCount: 2,
                children: [
                  SmallTile(),
                  SmallTile(),
                  SmallTile(),
                  SmallTile(),
                  SmallTile(),
                  SmallTile(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
