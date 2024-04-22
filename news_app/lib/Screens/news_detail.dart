import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/Screens/HomeScreen/home_page.dart';

class newsDetails extends StatelessWidget {
  const newsDetails({Key? key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: screenWidth,
                height: screenHeight * 0.5,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/Rectangle60.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // RichText widget wrapped inside a container with circular border
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 20, right: 20, bottom: 20, top: 100),
                          child: Column(
                            children: [
                              RichText(
                                text: TextSpan(
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: 'LONDON —',
                                      style: GoogleFonts.nunito(
                                        fontWeight: FontWeight.w900,
                                        fontSize: 14,
                                        color: Color(0xff2E0505),
                                      ),
                                    ),
                                    TextSpan(
                                      text:
                                          ' Cryptocurrencies “have no intrinsic value” and people who invest in them should be prepared to lose all their money, Bank of England Governor Andrew Bailey said.',
                                      style: GoogleFonts.nunito(
                                        color: Color(0xff2E0505),
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 20),
                              Text(
                                'Digital currencies like bitcoin, ether and even dogecoin have been on a tear this year, reminding some investors of the 2017 crypto bubble in which bitcoin blasted toward \$20,000, only to sink as low as \$3,122 a year later.',
                                style: GoogleFonts.nunito(
                                  color: Color(0xff2E0505),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(height: 20),
                              Text(
                                'Asked at a press conference Thursday about the rising value of cryptocurrencies, Bailey said: “They have no intrinsic value. That doesn’t mean to say people don’t put value on them, because they can have extrinsic value. But they have no intrinsic value.”',
                                style: GoogleFonts.nunito(
                                  color: Color(0xff2E0505),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(height: 20),
                              Text(
                                'I’m going to say this very bluntly again,” he added. “Buy them only if you’re prepared to lose all your money.',
                                style: GoogleFonts.nunito(
                                  color: Color(0xff2E0505),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(height: 20),
                              Text(
                                'Bailey’s comments echoed a similar warning from the U.K.’s Financial Conduct Authority.',
                                style: GoogleFonts.nunito(
                                  color: Color(0xff2E0505),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(height: 20),
                              Text(
                                '“Investing in cryptoassets, or investments and lending linked to them, generally involves taking very high risks with investors’ money,” the financial services watchdog said in January.',
                                style: GoogleFonts.nunito(
                                  color: Color(0xff2E0505),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(height: 20),
                              Text(
                                'If consumers invest in these types of product, they should be prepared to lose all their money.',
                                style: GoogleFonts.nunito(
                                  color: Color(0xff2E0505),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(height: 20),
                              Text(
                                'Bailey, who was formerly the chief executive of the FCA, has long been a skeptic of crypto. In 2017, he warned: “If you want to invest in bitcoin, be prepared to lose all your money.',
                                style: GoogleFonts.nunito(
                                  color: Color(0xff2E0505),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: 70,
            left: 15,
            child: Container(
              width: 32,
              height: 32,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 8,
                      offset: const Offset(0, 2),
                    ),
                  ],
                  color: const Color.fromRGBO(245, 245, 245, 0.5),
                  borderRadius: const BorderRadius.all(Radius.circular(10))),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => HomePage(),
                    ),
                  );
                },
                child: const Icon(
                  Icons.arrow_back_ios_new,
                  color: Color(0xff173418),
                ),
              ),
            ),
          ),
          Center(
            child: Container(
              width: 311,
              height: 150,
              decoration: BoxDecoration(
                color: Color.fromRGBO(245, 245, 245, 0.5),
                borderRadius: BorderRadius.all(Radius.circular(14)),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 3),
                    Text(
                      'Sunday, 9 May 2021',
                      style: GoogleFonts.nunito(
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Crypto investors should be prepared to lose all their money, BOE governor says',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'NewYorkSmall',
                        fontSize: 15,
                        color: Color(0xff2E0505),
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Published by Ryan Browne',
                      style: GoogleFonts.nunito(
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                        color: Color(0xff2E0505),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            right: 20,
            child: Container(
              width: 56,
              height: 56,
              padding: const EdgeInsets.all(16),
              clipBehavior: Clip.antiAlias,
              decoration: ShapeDecoration(
                gradient: LinearGradient(
                  begin: Alignment(0.87, -0.49),
                  end: Alignment(-0.87, 0.49),
                  colors: [Color(0xFFFF3A44), Color(0xFFFF7F85)],
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32),
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 24,
                    height: 24,
                    child: Stack(
                      children: [
                        Image.asset(
                          'assets/Vector.png',
                          width: 24,
                          height: 24,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
