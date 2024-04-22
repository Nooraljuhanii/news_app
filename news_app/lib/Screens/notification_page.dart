import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/Screens/HomeScreen/home_page.dart';

class notification extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Hot Update',
          style: TextStyle(color: Color(0xffFF3A44)),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: Color(0xff2E0505),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute<void>(
                builder: (BuildContext context) => HomePage(),
              ),
            );
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildNotificationCard(
              image: "assets/Frame32.png",
              date: "Monday, 10 May 2021",
              title:
                  "WHO classifies triple-mutant Covid variant from India as global health risk",
              description:
                  "A World Health Organization official said Monday it is reclassifying the highly contagious triple-mutant Covid variant spreading in India as a “variant of concern,” indicating that it’s become a...",
              publishedBy: "Published by Berkeley Lovelace Jr.",
            ),
            SizedBox(height: 10),
            _buildNotificationCard(
              image: "assets/frame49.png",
              date: "Sunday, 9 May 2021",
              title:
                  "What to do if you're planning or attending a wedding during the pandemic",
              description:
                  "They had the artsy, rustic venue, the tailored dress and a guest list including about 150 of their closest friends and family. But the pandemic had other plans, forcing Carly Chalmers and Mitchell Gauvin to make a difficult decision about their wedding... ",
              publishedBy: "Published by Kristen Rogers",
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNotificationCard({
    required String image,
    required String date,
    required String title,
    required String description,
    required String publishedBy,
    double imageWidth = 365,
    double imageHeight = 130,
  }) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  image,
                  width: imageWidth,
                  height: imageHeight,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              date,
              style: GoogleFonts.nunitoSans(
                color: Color(0xff2E0505),
                fontWeight: FontWeight.w300,
                fontSize: 12,
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            Text(
              title,
              style: const TextStyle(
                color: Color(0xff121212),
                fontWeight: FontWeight.w600,
                fontSize: 14,
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            RichText(
              text: TextSpan(
                text: description,
                style: GoogleFonts.nunitoSans(
                  color: Color(0xff121212),
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                ),
                children: const <TextSpan>[
                  TextSpan(
                    text: 'Read More',
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            Text(
              publishedBy,
              style: GoogleFonts.nunitoSans(
                color: Color(0xff2E0505),
                fontWeight: FontWeight.w700,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
