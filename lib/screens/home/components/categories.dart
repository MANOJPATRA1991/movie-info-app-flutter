import 'package:flutter/material.dart';
import 'package:movie_info_app/constants.dart';

class CategoryList extends StatefulWidget {
  @override
  _CategoryListState createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  int selectedCategory = 0;
  List<String> categories = [
    "In Theatres",
    "Box Office",
    "Coming Soon"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: DEFAULT_PADDING / 2),
      height: 60,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) => buildCategory(index, context),
      )
    );
  }

  Padding buildCategory(int index, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: DEFAULT_PADDING),
      child: GestureDetector(
        onTap: () {
          setState(() {
            selectedCategory = index;
          });
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              categories[index],
              style: Theme.of(context).textTheme.headline5.copyWith(
                fontWeight: FontWeight.w600,
                color: index == selectedCategory
                  ? COLORS['TEXT']
                  : Colors.black.withOpacity(0.4)
              )
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: DEFAULT_PADDING / 2),
              height: 6,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: index == selectedCategory 
                  ? COLORS['SECONDARY']
                  : Colors.transparent
              ),
            )
          ],
        ),
      ),
    );
  }
}