import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:pinterest/ui/app_colors.dart';

import 'widgets/category_chip_widget.dart';
import 'widgets/feed_card_widget.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({Key? key}) : super(key: key);

  @override
  State<FeedPage> createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  bool trending = true,
      food = false,
      activity = false,
      shoes = false,
      fashion = false;
  List<bool> isSelected = [
    true,
    false,
    false,
    false,
    false,
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;
    final screenSize = Size(
      width,
      height,
    );
    ScreenUtil.init(
      BoxConstraints(
        maxHeight: height,
        maxWidth: width,
      ),
      designSize: const Size(414, 896),
      context: context,
    );
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Row(
          children: [
            CircleAvatar(
              child: Image.asset(
                "assets/images/kubernetes.png",
              ),
            ),
            SizedBox(
              width: 10.w,
            ),
            Text(
              "Feed",
              style: TextStyle(
                color: AppColors.mineShaft,
                fontSize: 22.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions: [
          InkWell(
            onTap: () {},
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 10.w,
              ),
              child: const Icon(
                CupertinoIcons.add,
                color: AppColors.emperor,
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 10.w,
              ),
              child: const Icon(
                CupertinoIcons.mail,
                color: AppColors.emperor,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 24.h,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(
                left: 24.w,
              ),
              child: Row(
                children: [
                  CategoryChip(
                    label: "#Trending",
                    isSelected: isSelected[0],
                    onSelected: (b) {
                      setState(() {
                        isSelected[0] = !isSelected[0];
                        for (int i = 0; i < isSelected.length; i++) {
                          if (i != 0) {
                            isSelected[i] = false;
                          }
                        }
                      });
                    },
                  ),
                  CategoryChip(
                    label: "#Food",
                    isSelected: isSelected[1],
                    onSelected: (b) {
                      isSelected[1] = !isSelected[1];
                      for (int i = 0; i < isSelected.length; i++) {
                        if (i != 1) {
                          isSelected[i] = false;
                        }
                      }
                      setState(() {});
                    },
                  ),
                  CategoryChip(
                    label: "#Activity",
                    isSelected: isSelected[2],
                    onSelected: (b) {
                      isSelected[2] = !isSelected[2];
                      for (int i = 0; i < isSelected.length; i++) {
                        if (i != 2) {
                          isSelected[i] = false;
                        }
                      }
                      setState(() {});
                    },
                  ),
                  CategoryChip(
                    label: "#Shoes",
                    isSelected: isSelected[3],
                    onSelected: (b) {
                      isSelected[3] = !isSelected[3];
                      for (int i = 0; i < isSelected.length; i++) {
                        if (i != 3) {
                          isSelected[i] = false;
                        }
                      }
                      setState(() {});
                    },
                  ),
                  CategoryChip(
                    label: "#Fashion",
                    isSelected: isSelected[4],
                    onSelected: (b) {
                      isSelected[4] = !isSelected[4];
                      setState(() {});
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: StaggeredGrid.count(
                crossAxisCount: 2,
                crossAxisSpacing: 15.w,
                mainAxisSpacing: 30.h,
                children: const [
                  StaggeredGridTile.fit(
                    crossAxisCellCount: 1,
                    // mainAxisCellCount: 1.3,
                    child: FeedCardWidget(
                      name: "Ingrid Bergman",
                      title: "Selfie",
                      subtitle: "Dare Accepted",
                      assetPath: "img_5",
                    ),
                  ),
                  StaggeredGridTile.fit(
                    crossAxisCellCount: 1,
                    // mainAxisExtent: 1.4,
                    child: FeedCardWidget(
                      assetPath: "img_6",
                      name: "Meryl Streep",
                      title: "Pose in the lockdown without studio",
                      subtitle: "",
                    ),
                  ),
                  StaggeredGridTile.fit(
                    crossAxisCellCount: 1,
                    child: FeedCardWidget(
                      assetPath: "img_7",
                      name: "Hannah Jones",
                      title: "Photobooth at home done",
                      subtitle: "with #sis",
                    ),
                  ),
                  StaggeredGridTile.fit(
                    crossAxisCellCount: 1,
                    child: FeedCardWidget(
                      assetPath: "img_8",
                      name: "Misa Amane",
                      title: "Flying kiss",
                      subtitle: " to my ex boyfriend #dare",
                    ),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1.4,
                    child: FeedCardWidget(
                      assetPath: "img_9",
                      name: "Jason Cruz",
                      title: "360 Degree tornado kick",
                      subtitle: "#challenge",
                    ),
                  ),
                  StaggeredGridTile.fit(
                    crossAxisCellCount: 1,
                    // mainAxisCellCount: 1.3,
                    child: FeedCardWidget(
                      name: "Ingrid Bergman",
                      title: "Selfie",
                      subtitle: "Dare Accepted",
                      assetPath: "img_5",
                    ),
                  ),
                  StaggeredGridTile.fit(
                    crossAxisCellCount: 1,
                    // mainAxisExtent: 1.4,
                    child: FeedCardWidget(
                      assetPath: "img_6",
                      name: "Meryl Streep",
                      title: "Pose in the lockdown without studio",
                      subtitle: "",
                    ),
                  ),
                  StaggeredGridTile.fit(
                    crossAxisCellCount: 1,
                    child: FeedCardWidget(
                      assetPath: "img_7",
                      name: "Hannah Jones",
                      title: "Photobooth at home done",
                      subtitle: "with #sis",
                    ),
                  ),
                  StaggeredGridTile.fit(
                    crossAxisCellCount: 1,
                    child: FeedCardWidget(
                      assetPath: "img_8",
                      name: "Misa Amane",
                      title: "Flying kiss",
                      subtitle: " to my ex boyfriend #dare",
                    ),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1.4,
                    child: FeedCardWidget(
                      assetPath: "img_9",
                      name: "Jason Cruz",
                      title: "360 Degree tornado kick",
                      subtitle: "#challenge",
                    ),
                  ),
                  StaggeredGridTile.fit(
                    crossAxisCellCount: 1,
                    // mainAxisCellCount: 1.3,
                    child: FeedCardWidget(
                      name: "Ingrid Bergman",
                      title: "Selfie",
                      subtitle: "Dare Accepted",
                      assetPath: "img_5",
                    ),
                  ),
                  StaggeredGridTile.fit(
                    crossAxisCellCount: 1,
                    // mainAxisExtent: 1.4,
                    child: FeedCardWidget(
                      assetPath: "img_6",
                      name: "Meryl Streep",
                      title: "Pose in the lockdown without studio",
                      subtitle: "",
                    ),
                  ),
                  StaggeredGridTile.fit(
                    crossAxisCellCount: 1,
                    child: FeedCardWidget(
                      assetPath: "img_7",
                      name: "Hannah Jones",
                      title: "Photobooth at home done",
                      subtitle: "with #sis",
                    ),
                  ),
                  StaggeredGridTile.fit(
                    crossAxisCellCount: 1,
                    child: FeedCardWidget(
                      assetPath: "img_8",
                      name: "Misa Amane",
                      title: "Flying kiss",
                      subtitle: " to my ex boyfriend #dare",
                    ),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1.4,
                    child: FeedCardWidget(
                      assetPath: "img_9",
                      name: "Jason Cruz",
                      title: "360 Degree tornado kick",
                      subtitle: "#challenge",
                    ),
                  ),
                  StaggeredGridTile.fit(
                    crossAxisCellCount: 1,
                    // mainAxisCellCount: 1.3,
                    child: FeedCardWidget(
                      name: "Ingrid Bergman",
                      title: "Selfie",
                      subtitle: "Dare Accepted",
                      assetPath: "img_5",
                    ),
                  ),
                  StaggeredGridTile.fit(
                    crossAxisCellCount: 1,
                    // mainAxisExtent: 1.4,
                    child: FeedCardWidget(
                      assetPath: "img_6",
                      name: "Meryl Streep",
                      title: "Pose in the lockdown without studio",
                      subtitle: "",
                    ),
                  ),
                  StaggeredGridTile.fit(
                    crossAxisCellCount: 1,
                    child: FeedCardWidget(
                      assetPath: "img_7",
                      name: "Hannah Jones",
                      title: "Photobooth at home done",
                      subtitle: "with #sis",
                    ),
                  ),
                  StaggeredGridTile.fit(
                    crossAxisCellCount: 1,
                    child: FeedCardWidget(
                      assetPath: "img_8",
                      name: "Misa Amane",
                      title: "Flying kiss",
                      subtitle: " to my ex boyfriend #dare",
                    ),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1.4,
                    child: FeedCardWidget(
                      assetPath: "img_9",
                      name: "Jason Cruz",
                      title: "360 Degree tornado kick",
                      subtitle: "#challenge",
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: AppColors.mirage,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          boxShadow: [
            BoxShadow(
              color: AppColors.emperor,
              blurRadius: 30,
              offset: Offset(0, -1),
            ),
          ],
        ),
        height: 75.h,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Icon(
                CupertinoIcons.home,
                color: Colors.white,
                size: 30,
              ),
              Icon(
                CupertinoIcons.search,
                color: Colors.white,
                size: 30,
              ),
              Icon(
                CupertinoIcons.add_circled,
                color: Colors.white,
                size: 30,
              ),
              Icon(
                CupertinoIcons.check_mark_circled,
                color: Colors.white,
                size: 30,
              ),
              Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
                size: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
