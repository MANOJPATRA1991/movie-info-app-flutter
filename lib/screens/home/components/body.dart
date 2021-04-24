import 'package:flutter/material.dart';
import 'package:movie_info_app/constants.dart';
import 'package:movie_info_app/screens/home/components/categories.dart';
import 'package:movie_info_app/screens/home/components/genres.dart';
import 'package:movie_info_app/screens/home/components/movie_carousel.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Enable scroll on smaller devices
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          CategoryList(),
          Genres(),
          SizedBox(height: DEFAULT_PADDING),
          MovieCarousel(),
        ],
      ),
    );
  }
}

