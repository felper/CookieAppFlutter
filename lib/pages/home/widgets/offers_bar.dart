import 'package:cookies_app/colors.dart';
import 'package:flutter/material.dart';

class OffersBar extends StatelessWidget {
  const OffersBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Offers",
          style: TextStyle(color: Colors.white, fontSize: 35),
        ),
        Text(
          "See more",
          style: TextStyle(color: orange, fontSize: 16),
        ),
      ],
    );
  }
}
