import 'package:fitness_app/constants/colors.dart';
import 'package:fitness_app/utils/size_config.dart';
import 'package:flutter/material.dart';

class ScrollableList extends StatefulWidget {
  const ScrollableList({super.key});

  @override
  State<ScrollableList> createState() => _ScrollableListState();
}

class _ScrollableListState extends State<ScrollableList> {
  List<String> title = [
    "All",
    "For You",
    "Following",
    "News",
    "Sports",
    "Health"
  ];

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      child: Row(
        children: [
          SizedBox(
            height: SizeConfig.heightMultiplier * 4.5,
            child: ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: title.length,
                itemBuilder: (context, index) {
                  return Padding(
                      padding:
                          EdgeInsets.only(left: SizeConfig.widthMultiplier * 3),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            if (selectedIndex == index) {
                              selectedIndex = 0;
                            } else {
                              selectedIndex = index;
                            }
                          });
                        },
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 150),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: selectedIndex == index
                                  ? Colors.black
                                  : AppColors.greyLight),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: SizeConfig.widthMultiplier * 5.0,
                                vertical: SizeConfig.heightMultiplier * 0.5),
                            child: Center(
                                child: Text(
                              title[index],
                              style: textTheme.bodyMedium!.copyWith(
                                  color: selectedIndex == index
                                      ? Colors.white
                                      : Colors.grey),
                            )),
                          ),
                        ),
                      ));
                }),
          ),
          SizedBox(
            width: SizeConfig.widthMultiplier * 4,
          )
        ],
      ),
    );
  }
}
