import 'package:flutter/material.dart';

import 'package:plant_app/constants.dart';

import 'recommend_plant.dart';
import 'title_with_more_btn.dart';
import 'featured_plants.dart';
import 'header_with_searchbox.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(size: size),
          TitleWithMorebtn(
            title: "Recommended",
            press: () {},
          ),
          RecommendPlant(),
          TitleWithMorebtn(
            title: "Featured Plants",
            press: () {},
          ),
          FeaturePlant(),
          SizedBox(height: kDefaultPadding,),
        ],
      ),
    );
  }
}



