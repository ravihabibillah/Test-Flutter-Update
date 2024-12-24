import 'package:flutter/material.dart';

class CarouselViewUpdate extends StatelessWidget {
  const CarouselViewUpdate({super.key});
  _buildImage(String source) {
    return Image.asset(
      source,
      fit: BoxFit.cover,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: CarouselView.weighted(
        flexWeights: [1, 7, 1],
        children: [
          _buildImage('assets/christmas_1.jpg'),
          _buildImage('assets/christmas_2.jpg'),
          _buildImage('assets/christmas_3.jpg'),
        ],
      ),
    );
  }
}
