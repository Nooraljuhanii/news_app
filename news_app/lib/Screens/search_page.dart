import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/Screens/Widgets/category_container.dart';
import 'package:news_app/Screens/Widgets/photo_container.dart';
import 'package:news_app/Screens/Widgets/widget_category.dart';

class Search extends StatelessWidget {
  const Search({Key? key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(12),
          child: Column(
            children: [
              Container(
                width: screenWidth * 0.9,
                height: screenHeight * 0.05,
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 1,
                      strokeAlign: BorderSide.strokeAlignCenter,
                      color: Color(0xFFEFF0FA),
                    ),
                    borderRadius: BorderRadius.circular(24),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                        child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'COVID New Variant',
                        hintStyle: TextStyle(
                          color: Color(0xFF202663),
                          fontSize: 12,
                          fontFamily: GoogleFonts.nunito().fontFamily,
                          fontWeight: FontWeight.w600,
                        ),
                        suffixIcon: Icon(
                          Icons.close,
                          color: Color(0xFF202663),
                        ),
                      ),
                    )),
                  ],
                ),
              ),
              SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    buildCategoryContainer(
                      'Filter',
                      Color.fromARGB(255, 255, 58, 68),
                      Colors.white,
                      icon: Icon(
                        Icons.filter_alt_outlined,
                        color: Colors.white,
                      ),
                    ),
                    buildCategoryContainer(
                        'Health', Colors.white, Colors.black),
                    buildCategoryContainer(
                        'Technology', Colors.white, Colors.black),
                    buildCategoryContainer(
                        'Finance', Colors.white, Colors.black),
                  ],
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: 345,
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'About 11,130,000 results for ',
                        style: TextStyle(
                          color: Color.fromRGBO(3, 29, 47, 1),
                          fontSize: 14,
                          fontFamily: GoogleFonts.nunito().fontFamily,
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                      TextSpan(
                        text: 'COVID New Variant.',
                        style: TextStyle(
                          color: Color.fromRGBO(23, 52, 24, 1),
                          fontSize: 14,
                          fontStyle: FontStyle.italic,
                          fontFamily: GoogleFonts.nunito().fontFamily,
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Expanded(
                // Added Expanded to make the container expand to fill available space
                child: Container(
                  // Wrapped the container with a finite height
                  width: 345,
                  height: 400, // Adjust the height as needed
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CulomnList(
                          image: 'assets/frame49.png',
                          text1:
                              'What to do if you\'re planning or attending \n a wedding during the pandemic',
                          text2: 'Kristen Rogers',
                          text3: 'Sunday, 9 May 2021',
                          height: 40,
                          width: 139,
                        ),
                        const SizedBox(height: 8),
                        CulomnList(
                          image: 'assets/search2.jpeg',
                          text1:
                              'Doctors on digital front lines help fight India`s Covid surge',
                          text2: 'Shepard Smith',
                          text3: 'Friday, 7 May 2021',
                          height: 40,
                          width: 139,
                        ),
                        const SizedBox(height: 8),
                        CulomnList(
                          image: 'assets/frame34.jpeg',
                          text1: '4 ways families can ease anxiety together',
                          text2: 'Zain Korsgaard',
                          text3: 'Sunday, 9 May 2021',
                          height: 40,
                          width: 139,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomSheet: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            InkWell(
                onTap: () {
                  showModalBottomSheet<void>(
                    context: context,
                    builder: (BuildContext context) {
                      return Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(14),
                            topRight: Radius.circular(14),
                          ),
                        ),
                        height: 315,
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    'Filter',
                                    style: TextStyle(
                                      fontFamily: 'NunitoSans',
                                      color: Color(0xff041E2F),
                                      fontWeight: FontWeight.w700,
                                      fontSize: 22,
                                    ),
                                  ),
                                  OutlinedButton(
                                    onPressed: () {},
                                    child: Row(
                                      children: [
                                        Image.asset('assets/deleteIcon.png'),
                                        const SizedBox(width: 6),
                                        const Text(
                                          'Reset',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'NunitoSans',
                                            color: Color(0xff041E2F),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 20),
                              const Text(
                                'Sort By',
                                style: TextStyle(
                                  fontFamily: 'NunitoSans',
                                  color: Color(0xff041E2F),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  WidgetCategory(
                                    text: 'Recommended',
                                    textColor: Color(0xff041E2F),
                                    color: Colors.transparent,
                                    width: 114,
                                    height: 32,
                                  ),
                                  SizedBox(width: 8),
                                  WidgetCategory(
                                    text: 'Latest',
                                    textColor: Color(0xff041E2F),
                                    color: Colors.transparent,
                                    width: 66,
                                    height: 32,
                                  ),
                                  SizedBox(width: 8),
                                  WidgetCategory(
                                    text: 'Most Viewed',
                                    textColor: Color(0xff041E2F),
                                    color: Colors.transparent,
                                    width: 104,
                                    height: 32,
                                  ),
                                ],
                              ),
                              const SizedBox(height: 8),
                              Row(
                                children: [
                                  WidgetCategory(
                                    text: 'Channel',
                                    textColor: Color(0xff041E2F),
                                    color: Colors.transparent,
                                    width: 77,
                                    height: 32,
                                  ),
                                  SizedBox(width: 8),
                                  WidgetCategory(
                                    text: 'Following',
                                    textColor: Color(0xff041E2F),
                                    color: Colors.transparent,
                                    width: 86,
                                    height: 32,
                                  ),
                                ],
                              ),
                              const SizedBox(height: 25),
                              SizedBox(
                                width: double.infinity,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(0xffFF3A44),
                                  ),
                                  onPressed: () {},
                                  child: const Text(
                                    'SAVE',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'NunitoSans',
                                      color: Color(0xffFFFFFF),
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
                child: Divider(
                  color: Colors.grey,
                  indent: 80,
                  endIndent: 80,
                )),
          ],
        ),
      ),
    );
  }
}
