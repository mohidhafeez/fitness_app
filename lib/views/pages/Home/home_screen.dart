import 'package:fitness_app/constants/colors.dart';
import 'package:fitness_app/constants/icons.dart';
import 'package:fitness_app/utils/size_config.dart';
import 'package:fitness_app/utils/spacing.dart';
import 'package:fitness_app/views/pages/Calander/calander_screen.dart';
import 'package:fitness_app/views/pages/Home/components/custom_container.dart';
import 'package:fitness_app/views/pages/Social/social_screen.dart';
import 'package:fitness_app/views/widgets/scrollable_list.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    // List<String> title = [
    //   "All",
    //   "For You",
    //   "Following",
    //   "News",
    //   "Sports",
    //   "Health"
    // ];
    final textTheme = Theme.of(context).textTheme;
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        drawer: CustomDrawer(),
        body: Column(
          children: [
            SizedBox(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: SizeConfig.widthMultiplier * 2,
                        vertical: SizeConfig.heightMultiplier * 3),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                            onTap: () {
                              _scaffoldKey.currentState?.openDrawer();
                            },
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: SizeConfig.widthMultiplier * 2),
                              child: Container(
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all()),
                                  child: Padding(
                                    padding: const EdgeInsets.all(3.0),
                                    child: CircleAvatar(
                                      radius:
                                          SizeConfig.imageSizeMultiplier * 4,
                                      backgroundImage: NetworkImage(
                                          "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                                    ),
                                  )),
                            )),
                        Text("KNOWLEDGE BASE", style: textTheme.headlineSmall),
                        IconButton(
                            onPressed: () {},
                            icon: Image.asset(
                              AppIcons.notification,
                              height: SizeConfig.imageSizeMultiplier * 6,
                            ))
                      ],
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(
                        bottom: SizeConfig.heightMultiplier * 4,
                      ),
                      child: ScrollableList()),
                ],
              ),
            ),

            //MAIN
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: SizeConfig.widthMultiplier * 4),
                  child: Column(
                    children: [
                      CustomContainer(
                          imageURL:
                              "https://images.pexels.com/photos/700392/pexels-photo-700392.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                      Spacing.y(2),
                      CustomContainer(
                        imageURL:
                            "https://images.pexels.com/photos/949126/pexels-photo-949126.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                      ),
                      Spacing.y(2),
                      CustomContainer(
                        imageURL:
                            "https://images.pexels.com/photos/116077/pexels-photo-116077.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                      ),
                      Spacing.y(2),
                    ],
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

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.widthMultiplier * 80,
      color: Colors.white,
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text('John Doe'),
            accountEmail: Text('johndoe@example.com'),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              child: Text('JD'),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {
              // Handle home menu item
            },
          ),
          ListTile(
            leading: Icon(Icons.navigate_next),
            title: Text('Social'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SocialScreen()));
              // Handle settings menu item
            },
          ),
          ListTile(
            leading: Icon(Icons.navigate_next),
            title: Text('Calander'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CalanderScreen()));
              // Handle settings menu item
            },
          ),
        ],
      ),
    );
  }
}
