// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:svg_flutter/svg.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});

  List imagesStory = [
    "assets/images/str (1).png",
    "assets/images/str (2).png",
    "assets/images/str (3).png",
    "assets/images/str (4).png",
    "assets/images/str (5).png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
                  padding: EdgeInsets.only(
            top: 14,
                  ),
                  child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TopInfo(),
              ProfileAndFollowers(),
              UserInfo(),
              FollowersInfo(),
              Container(
                padding: EdgeInsets.only(left: 14, right: 14, top: 14),
                child: Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          backgroundColor: Color(0xffEFEFEF),
                        ),
                        onPressed: () {},
                        child: Text(
                          "Edit profile",
                          style: GoogleFonts.arimo(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Container(
                      width: 45,
                      height: 37,
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Color(0xffEFEFEF),
                        borderRadius: BorderRadius.circular(3),
                      ),
                      child: SvgPicture.asset(
                        "assets/svgs/Frame 6.svg",
                      ),
                    )
                  ],
                ),
              ),
              StoryList(imagesStory: imagesStory),
              TabMenu(),
              GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 2,
                  crossAxisSpacing: 2,
                ),
                itemCount: 50,
                itemBuilder: (context, index) {
                  return Image.network(
                    "https://picsum.photos/id/${64 + index}/500/500",
                    fit: BoxFit.cover,
                  );
                },
              ),
            ],
                  ),
                ),
          )),
    );
  }
}

class TabMenu extends StatelessWidget {
  const TabMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(14),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {},
            child: Container(
              width: (Get.width / 3) - 10,
              child: Center(
                child: SvgPicture.asset("assets/svgs/mn (1).svg"),
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              width: (Get.width / 3) - 10,
              child: Center(
                child: SvgPicture.asset("assets/svgs/mn (2).svg"),
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              width: (Get.width / 3) - 10,
              child: Center(
                child: SvgPicture.asset("assets/svgs/mn (3).svg"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class StoryList extends StatelessWidget {
  const StoryList({
    super.key,
    required this.imagesStory,
  });

  final List imagesStory;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 14, top: 14),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(
            imagesStory.length,
            (index) => Story(
              title: "Text here",
              bg: imagesStory[index],
            ),
          ),
        ),
      ),
    );
  }
}

class Story extends StatelessWidget {
  final String title;
  final String bg;
  const Story({
    Key? key,
    required this.title,
    required this.bg,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 60,
            height: 60,
            padding: EdgeInsets.all(4),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              border: Border.all(
                width: 1,
                color: Color(0xffC4C4C4),
              ),
            ),
            child: CircleAvatar(
              backgroundImage: AssetImage(bg),
            ),
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            title,
            textAlign: TextAlign.center,
            style: GoogleFonts.arimo(
              fontSize: 12,
              color: Colors.black,
            ),
          )
        ],
      ),
    );
  }
}

class FollowersInfo extends StatelessWidget {
  const FollowersInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 14, right: 14, top: 14),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 54,
            child: Stack(
              children: [
                Positioned(
                  child: Container(
                    width: 26,
                    height: 26,
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(
                        width: 1,
                        color: Colors.white,
                      ),
                    ),
                    child: CircleAvatar(
                      backgroundImage: AssetImage("assets/images/Avatar.png"),
                    ),
                  ),
                ),
                Positioned(
                  right: 14,
                  child: Container(
                    width: 26,
                    height: 26,
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(
                        width: 1,
                        color: Colors.white,
                      ),
                    ),
                    child: CircleAvatar(
                      backgroundImage: AssetImage("assets/images/Avatar-1.png"),
                    ),
                  ),
                ),
                Positioned(
                  right: 0,
                  child: Container(
                    width: 26,
                    height: 26,
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(
                        width: 1,
                        color: Colors.white,
                      ),
                    ),
                    child: CircleAvatar(
                      backgroundImage: AssetImage("assets/images/Avatar-2.png"),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 12,
          ),
          RichText(
            text: TextSpan(
              text: "Followed by ",
              style: GoogleFonts.arimo(
                fontSize: 12,
                color: Colors.black,
              ),
              children: [
                TextSpan(
                  text: "username, username \n",
                  style: GoogleFonts.arimo(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(text: "and "),
                TextSpan(
                  text: "100 others",
                  style: GoogleFonts.arimo(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class UserInfo extends StatelessWidget {
  const UserInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 14, right: 14, top: 14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Username",
            style: GoogleFonts.arimo(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            "Category/Genre text",
            style: GoogleFonts.arimo(
              fontSize: 12,
              color: Color(0xff6E6E6E),
            ),
          ),
          SizedBox(
            height: 4,
          ),
          RichText(
            text: TextSpan(
                text:
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ",
                style: GoogleFonts.arimo(
                  fontSize: 12,
                  color: Colors.black,
                ),
                children: [
                  TextSpan(
                    text: "#hashtag",
                    style: GoogleFonts.arimo(
                      color: Color(0xff004C8B),
                    ),
                  )
                ]),
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            "CategLink goes here",
            style: GoogleFonts.arimo(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: Color(0xff004C8B),
            ),
          ),
        ],
      ),
    );
  }
}

class ProfileAndFollowers extends StatelessWidget {
  const ProfileAndFollowers({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 14, right: 14, top: 14),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 83,
            height: 83,
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              gradient: LinearGradient(
                colors: [Color(0xffC913B9), Color(0xffFECD00)],
                stops: [0, 1],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
              ),
            ),
            child: Center(
              child: Container(
                width: 75,
                height: 75,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(
                    width: 5,
                    color: Colors.white,
                  ),
                ),
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/fghfghfgh.jpg"),
                ),
              ),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "1,234",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.arimo(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Posts",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.arimo(
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 24,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "5,678",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.arimo(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Followers",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.arimo(
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 24,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "9,101",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.arimo(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Following",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.arimo(
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}

class TopInfo extends StatelessWidget {
  const TopInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 14,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "username",
                style: GoogleFonts.arimo(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
              SizedBox(
                width: 6,
              ),
              Container(
                clipBehavior: Clip.hardEdge,
                padding: EdgeInsets.symmetric(
                  horizontal: 4,
                  vertical: 2,
                ),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Text(
                  "10+",
                  style: GoogleFonts.arimo(
                    fontSize: 11,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SvgPicture.asset("assets/svgs/Icons.svg"),
              SizedBox(
                width: 24,
              ),
              SvgPicture.asset("assets/svgs/Icons-1.svg"),
            ],
          )
        ],
      ),
    );
  }
}
