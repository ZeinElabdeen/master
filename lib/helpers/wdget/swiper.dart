import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class SwiperSlider extends StatelessWidget {
  final String img;
  final String titel;
  const SwiperSlider({Key key, this.img, this.titel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        // height: MediaQuery.of(context).size.height / 3,
        height: 220,
        child: Swiper(
          itemBuilder: (BuildContext context, int index) {
            return Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 1,
              child: Stack(
                children: [
                  Image.asset(
                    img ?? "",
                    // "assets/icons/xf.jpg",
                    fit: BoxFit.cover,
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      padding: const EdgeInsets.only(
                          right: 15, left: 15, top: 13, bottom: 13),
                      decoration: BoxDecoration(
                        color: Colors.black38.withOpacity(0.80),
                      ),
                      width: MediaQuery.of(context).size.width,
                      // string.length > 20? "..." + string.substring(0, 20)  : string
                      child: Text(
                        titel ?? "",
                        // "انباء عن انطلاق البطوله الدوليه والتي سيشارك".length >
                        //         40
                        //     ? "...." +
                        //         "انباء عن انطلاق البطوله الدوليه والتي سيشارك"
                        //             .substring(0, 40)
                        //     : "انباء عن انطلاق البطوله الدوليه والتي سيشارك",
                        textDirection: TextDirection.ltr,
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
          autoplay: true,
          itemCount: 5,
          scrollDirection: Axis.horizontal,
          pagination: SwiperPagination(
            alignment: Alignment.bottomCenter,
            builder: DotSwiperPaginationBuilder(
              color: Colors.grey,
              // activeColor: Colors.red,
            ),
            margin: EdgeInsets.only(
              top: 90,
            ),
          ),

          // viewportFraction: 0.8,
          // scale: 0.9,
          // control: new SwiperControl(),
        ),
      ),
    );
  }
}
// Padding(
//         padding: const EdgeInsets.only(bottom: 0),
//         child: Container(
//           width: MediaQuery.of(context).size.width,
//           height: MediaQuery.of(context).size.height / 3,
//           child: Swiper(
//             itemBuilder: (BuildContext context, int index) {
//               return Container(
//                 width: MediaQuery.of(context).size.width,
//                 height: MediaQuery.of(context).size.height / 1,
//                 child: Stack(
//                   children: [
//                     Image.asset(
//                       "assets/icons/xf.jpg",
//                       fit: BoxFit.cover,
//                       width: MediaQuery.of(context).size.width,
//                       height: MediaQuery.of(context).size.height,
//                     ),
//                     Positioned(
//                       bottom: 0,
//                       left: 0,
//                       right: 0,
//                       child: Container(
//                         padding: const EdgeInsets.only(
//                             right: 15, left: 15, top: 13, bottom: 13),
//                         decoration: BoxDecoration(
//                           color: Colors.black38.withOpacity(0.80),
//                         ),
//                         width: MediaQuery.of(context).size.width,
//                         // string.length > 20? "..." + string.substring(0, 20)  : string
//                         child: Text(
//                           "انباء عن انطلاق البطوله الدوليه والتي سيشارك"
//                                       .length >
//                                   40
//                               ? "...." +
//                                   "انباء عن انطلاق البطوله الدوليه والتي سيشارك"
//                                       .substring(0, 40)
//                               : "انباء عن انطلاق البطوله الدوليه والتي سيشارك",
//                           textDirection: TextDirection.ltr,
//                           textAlign: TextAlign.right,
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 14,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               );
//             },
//             autoplay: true,
//             itemCount: 5,
//             scrollDirection: Axis.horizontal,
//             pagination: SwiperPagination(
//               alignment: Alignment.bottomCenter,
//               builder: DotSwiperPaginationBuilder(
//                 color: Colors.grey,
//                 // activeColor: Colors.red,
//               ),
//               margin: EdgeInsets.only(
//                 top: 90,
//               ),
//             ),

//             // viewportFraction: 0.8,
//             // scale: 0.9,
//             // control: new SwiperControl(),
//           ),
//         ),
//       ),

// class ExampleHorizontal extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//         appBar: AppBar(
//           title: Text("ExampleHorizontal"),
//         ),
//         body: new Swiper(
//           itemBuilder: (BuildContext context, int index) {
//             return new Image.asset(
//               images[index],
//               fit: BoxFit.fill,
//             );
//           },

//           indicatorLayout: PageIndicatorLayout.COLOR,
//           autoplay: true,
//           itemCount: images.length,
//           pagination: new SwiperPagination(),
//           control: new SwiperControl(),
//         ));
//   }
// }
