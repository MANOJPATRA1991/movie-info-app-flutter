import 'package:flutter/material.dart';
import 'package:movie_info_app/constants.dart';
import 'package:movie_info_app/models/movie.dart';

class TitleDurationAndFabBtn extends StatelessWidget {
  const TitleDurationAndFabBtn({
    Key key,
    @required this.movie,
  }) : super(key: key);

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(DEFAULT_PADDING),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  movie.title,
                  style: Theme.of(context).textTheme.headline5,
                ),
                SizedBox(height: DEFAULT_PADDING / 2),
                Row(
                  children: <Widget>[
                    Text(
                      "${movie.year}",
                      style: TextStyle(
                        color: COLORS["TEXT_LIGHT"],
                      )
                    ),
                    SizedBox(width: DEFAULT_PADDING),
                    Text(
                      "PG-13",
                      style: TextStyle(color: COLORS["TEXT_LIGHT"]),
                    ),
                    SizedBox(width: DEFAULT_PADDING),
                    Text(
                      "2h 32min",
                      style: TextStyle(color: COLORS["TEXT_LIGHT"]),
                    )
                  ],
                )
              ],
            )
          ),
          SizedBox(
            height: 64,
            width: 64,
            child: FlatButton(
              onPressed: () {},
              color: COLORS["SECONDARY"],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Icon(
                Icons.add,
                size: 28,
                color: Colors.white,
              ),
            ),
          )
        ],
      )
    );
  }
}
