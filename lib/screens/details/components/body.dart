import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/details/components/icon_cart.dart';
import 'package:plant_app/screens/details/components/image_and_icon_card.dart';
import 'package:plant_app/screens/details/components/title_and_price.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          ImageAndIconCard(size: size),
          TitleAndPrice(
            title: "Angelica",
            country: "Russia",
            price: 400,
          ),
          SizedBox(
            height: kDefaultPadding,
          ),
          Row(
            children: [
              SizedBox(
                width: size.width / 2,
                height: 84,
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                    ),
                  ),
                  color: kPrimaryColor,
                  onPressed: () {},
                  child: Text("Buy NOW",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),),
                ),
              ),
              Expanded(child: FlatButton(
                onPressed: (){}, child: Text("Description"),
              ))
            ],
          ),
          SizedBox(height: kDefaultPadding),
        ],
      ),
    );
  }
}
