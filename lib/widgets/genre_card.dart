import 'package:flutter/material.dart';
import 'package:movie_info_app/constants.dart';

class GenreCard extends StatelessWidget {
  final String genre;

  const GenreCard({Key key, this.genre}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(left: DEFAULT_PADDING),
      padding: EdgeInsets.symmetric(
        horizontal: DEFAULT_PADDING,
        vertical: DEFAULT_PADDING / 4
      ),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black26),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        genre,
        style: TextStyle(
          color: COLORS['TEXT'].withOpacity(0.8),
          fontSize: 16
        )
      ),
    );
  }
}