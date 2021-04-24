import 'package:flutter/material.dart';
import 'package:movie_info_app/constants.dart';

class CastCard extends StatelessWidget {
  final Map cast;

  const CastCard({Key key, this.cast}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: DEFAULT_PADDING),
      width: 80,
      child: Column(
        children: <Widget>[
          Container(
            height: 80,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(cast['image']),
              ),
            ),
          ),
          SizedBox(height: DEFAULT_PADDING / 2),
          Text(
            cast["originalName"],
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyText2,
            maxLines: 2,
          ),
          SizedBox(height: DEFAULT_PADDING / 4),
          Text(
            cast['movieName'],
            maxLines: 1,
            textAlign: TextAlign.center,
            style: TextStyle(color: COLORS['TEXT_LIGHT']),
          ),
        ],
      )
    );
  }
}