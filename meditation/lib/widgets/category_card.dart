import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  // final String svgSrc;
  // final String title;
  // final Function _press;
  // const CategoryCard({
  //   required Key key,
  //   required this.svgSrc,
  //   required this.title,
  //   // required this._press,
  // }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(13),
      child: Container(
        // padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(13),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 17),
              blurRadius: 17,
              spreadRadius: -23,
              // color: kShadowColor,
            ),
          ],
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            // onTap: _press,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  Spacer(),
                  // SvgPicture.asset(svgSrc),
                  Spacer(),
                  // Text(
                  //   // title,
                  //   textAlign: TextAlign.center,
                  //   // style: Theme.of(context)
                  //   //     .textTheme
                  //   //     // .title
                  //   //     .copyWith(fontSize: 15),
                  // )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
