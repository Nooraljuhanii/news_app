import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardThree extends StatelessWidget {
  const CardThree({
    Key? key,
    required this.image,
    required this.text1,
    required this.text2,
    required this.textAuthor,
    required this.opacity,
    required this.fun,
  }) : super(key: key);

  final String image;
  final String text1;
  final String text2;
  final String textAuthor;
  final double opacity;
  final VoidCallback fun;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: fun,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Stack(
          children: [
            Opacity(
              opacity: opacity,
              child: Image.asset(
                image,
                width: 321,
                height: 240,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: 30,
              left: 15,
              right: 40,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    textAuthor,
                    style: GoogleFonts.nunitoSans(
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    text1,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'NewYorkSmall',
                      fontSize: 19,
                    ),
                  ),
                  SizedBox(height: 22),
                  Text(
                    text2,
                    style: GoogleFonts.nunitoSans(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}



// class WidgetLastNew  extends StatelessWidget {
//   const WidgetLastNew (
//       {super.key,
//       required this.text1,
//       required this.text2,
//       required this.image,
//       required this.opacity,
//       required this.fun,
//       required this.textAuthor});
//   final String text1;
//   final String text2;
//   final String textAuthor;
//   final String image;
//   final double opacity;
//   final Function() fun;
//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: () {
//         fun();
//       },
//       child: ClipRRect(
//         borderRadius: BorderRadius.circular(8.0),
//         child: Stack(children: [
//           Opacity(
//             opacity: opacity,
//             child: Image.network(
//               image,
//               width: 321,
//               height: 240,
//               fit: BoxFit.cover,
//             ),
//           ),
//           Positioned(
//             top: 30,
//             left: 15,
//             right: 40,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   textAuthor,
//                   style: const TextStyle(
//                       fontFamily: 'NunitoSans',
//                       color: Color(0xffFFFFFF),
//                       fontWeight: FontWeight.w800,
//                       fontSize: 12),
//                 ),
//                 Text(
//                   text1,
//                   style: const TextStyle(
//                       color: Color(0xffFFFFFF),
//                       fontWeight: FontWeight.w700,
//                       fontSize: 19),
//                 ),
//                 const SizedBox(
//                   height: 22,
//                 ),
//                 Text(
//                   text2,
//                   style: const TextStyle(
//                       fontFamily: 'NunitoSans',
//                       color: Color(0xffFFFFFF),
//                       fontWeight: FontWeight.w600,
//                       fontSize: 10),
//                 )
//               ],
//             ),
//           ),
//         ]),
//       ),
//     );
//   }
// }