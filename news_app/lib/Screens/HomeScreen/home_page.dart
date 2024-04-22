import 'package:flutter/material.dart';
import 'package:news_app/Screens/Widgets/card_three.dart';
import 'package:news_app/Screens/Widgets/category_container.dart';
import 'package:news_app/Screens/Widgets/home_bar.dart';
import 'package:news_app/Screens/Widgets/photo_container.dart';
import 'package:news_app/Screens/notification_page.dart';
import 'package:news_app/Screens/search_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: MediaQuery.of(context).padding.top),
                    Row(
                      children: [
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xffF0F1FA)),
                                borderRadius: BorderRadius.circular(55),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xffF0F1FA)),
                                borderRadius: BorderRadius.circular(55),
                              ),
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 20),
                              suffixIcon: IconButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Search(),
                                    ),
                                  );
                                },
                                icon: Icon(Icons.search),
                              ),
                              border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xffF0F1FA)),
                                borderRadius: BorderRadius.circular(55),
                              ),
                              hintStyle: TextStyle(
                                color: Color(0xff818181),
                                fontFamily: 'NunitoSans',
                              ),
                              hintText: 'Dogecoin to the Moon...',
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => notification(),
                              ),
                            );
                          },
                          child: ClipOval(
                            child: Container(
                              width: 33,
                              height: 32,
                              decoration: BoxDecoration(
                                color: Color(0xffFF3A44),
                              ),
                              child: Center(
                                child: Image.asset(
                                  'assets/Iconnotifications.png',
                                  scale: 0.8,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Latest News',
                          style: TextStyle(
                            fontFamily: 'NewYorkSmall',
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              'See all',
                              style: TextStyle(
                                fontFamily: 'NewYorkSmall',
                                color: Colors.blue,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward,
                              color: Colors.blue,
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          CardThree(
                            image: 'assets/Rectangle60.png',
                            textAuthor: 'by Ryan Browne',
                            text1:
                                'Crypto investors should be prepared to lose all their money, BOE governor says',
                            text2:
                                '“I’m going to say this very bluntly again,” he added. “Buy them only if you’re prepared to lose all your money.”',
                            opacity: 1,
                            fun: () {},
                          ),
                          SizedBox(width: 10),
                          CardThree(
                            image: 'assets/news2.png',
                            textAuthor: '',
                            text1: 'Another news headline',
                            text2: 'Description of the news article',
                            opacity: 0.5,
                            fun: () {},
                          ),
                          SizedBox(width: 10),
                          CardThree(
                            image: 'assets/news2.png',
                            textAuthor: '',
                            text1: 'Yet another news headline',
                            text2: 'Description of the news article',
                            opacity: 0.5,
                            fun: () {},
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          buildCategoryContainer('Health',
                              Color.fromARGB(255, 255, 58, 68), Colors.white),
                          buildCategoryContainer(
                              'Technology', Colors.white, Colors.black),
                          buildCategoryContainer(
                              'Finance', Colors.white, Colors.black),
                          buildCategoryContainer(
                              'Arts', Colors.white, Colors.black),
                          buildCategoryContainer(
                              'Sports', Colors.white, Colors.black),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Center(
                      child: CulomnList(
                        image: 'assets/frame33.jpeg',
                        text1: '5 things to know about the conundrum of lupus',
                        text2: 'Matt Villano',
                        text3: 'Sunday, 9 May 2021',
                        height: 40,
                        width: 139,
                      ),
                    ),
                    SizedBox(height: 10),
                    Center(
                      child: CulomnList(
                        image: 'assets/frame34.jpeg',
                        text1: '4 ways families can ease anxiety together',
                        text2: 'Zain Korsgaard',
                        text3: 'Sunday, 9 May 2021',
                        height: 40,
                        width: 139,
                      ),
                    ),
                    SizedBox(height: 10),
                    Center(
                      child: CulomnList(
                        image: 'assets/frame49.png',
                        text1:
                            'What to do if you\'re planning or attending a \nwedding during the pandemic',
                        text2: 'Matt Villano',
                        text3: 'Sunday, 9 May 2021',
                        height: 40,
                        width: 139,
                      ),
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 15,
              left: 0,
              right: 0,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  width: 289,
                  height: 66,
                  decoration: BoxDecoration(
                    color: Color(0xffFFFFFF),
                    borderRadius: BorderRadius.all(
                      Radius.circular(32),
                    ),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 5),
                      Container(
                        width: 32,
                        height: 4,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          color: Color(0xffE0E0E0),
                        ),
                      ),
                      SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          WidgetBottomNavigationBar(
                            image: 'assets/Home.png',
                            text: 'Home',
                            textColor: Color(0xff2E0505),
                          ),
                          WidgetBottomNavigationBar(
                            image: 'assets/heart.png',
                            text: 'Favorite',
                            textColor: Color(0xffA6A6A6),
                          ),
                          WidgetBottomNavigationBar(
                            image: 'assets/face.png',
                            text: 'Profile',
                            textColor: Color(0xffA6A6A6),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
