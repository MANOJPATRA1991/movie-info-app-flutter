import 'package:flutter/material.dart';
import 'package:movie_info_app/constants.dart';
import 'package:movie_info_app/models/movie.dart';
import 'package:movie_info_app/screens/details/components/backdrop_rating.dart';
import 'package:movie_info_app/screens/details/components/cast_and_crew.dart';
import 'package:movie_info_app/screens/details/components/genres.dart';
import 'package:movie_info_app/screens/details/components/title_duration_and_fab_btn.dart';

class Body extends StatelessWidget {
  final Movie movie;

  const Body({Key key, this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Total height and width
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          BackdropAndRating(size: size, movie: movie),
          SizedBox(height: DEFAULT_PADDING / 2),
          TitleDurationAndFabBtn(movie: movie),
          Genres(movie: movie),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: DEFAULT_PADDING / 2,
              horizontal: DEFAULT_PADDING
            ),
            child: Text(
              "Plot Summary",
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: DEFAULT_PADDING),
            child: Text(
              movie.plot,
              style: TextStyle(
                color: Color(0xFF737599),
              ),
            ),
          ),
          CastAndCrew(casts: movie.cast),
        ]
      ),
    );
  }
}
