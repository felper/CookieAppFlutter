import 'package:cookies_app/colors.dart';
import 'package:cookies_app/models/cookies.dart';
import 'package:cookies_app/pages/home/widgets/container_Arrow.dart';
import 'package:cookies_app/pages/home/widgets/premium.dart';
import 'package:flutter/material.dart';

class CookieCard extends StatelessWidget {
  const CookieCard({super.key, required this.cookie});

  final Cookie cookie;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var cookieSize = size.height * 0.16;
    var cardSize = size.height * 0.19;
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: cardSize,
          width: cardSize,
          decoration: const BoxDecoration(
            color: buttonColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(75),
            ),
          ),
          child: Padding(
            padding:
                const EdgeInsets.only(left: 16, top: 32, right: 32, bottom: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  cookie.name,
                  style: const TextStyle(color: Colors.white, fontSize: 16),
                ),
                const Premium(),
                Text(
                  cookie.price,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: -(cookieSize - 32),
          left: (cardSize - cookieSize) / 2,
          child: SizedBox(
            height: cookieSize,
            width: cookieSize,
            child: Image.asset(cookie.image),
          ),
        ),
        const Positioned(right: 0, bottom: 0, child: ContainerArrow()),
      ],
    );
  }
}
