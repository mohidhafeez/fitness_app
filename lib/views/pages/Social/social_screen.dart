import 'package:fitness_app/models/model.dart';
import 'package:fitness_app/utils/size_config.dart';
import 'package:fitness_app/utils/spacing.dart';
import 'package:fitness_app/views/pages/Social/components/post.dart';
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
        backgroundColor: Colors.white.withOpacity(0.97),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: SizeConfig.heightMultiplier * 4,
                  horizontal: SizeConfig.widthMultiplier * 4),
              child: SearchField(),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: SizeConfig.widthMultiplier * 2,
                  bottom: SizeConfig.heightMultiplier * 4),
              child: ScrollableList(),
            ),
            Expanded(
              child: SizedBox(
                // color: Colors.red,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: SizeConfig.widthMultiplier * 4),
                  child: ListView.builder(
                    itemCount: postDetails.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          PostTile(
                              index: index,
                              text: postDetails[index].text,
                              image: postDetails[index].imageUrl),
                          Spacing.y(2),
                        ],
                      );
                    },
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
