import 'package:flutter/material.dart';
import 'package:shop_app/screens/home/components/SavedSearches.dart';
import 'package:shop_app/screens/home/components/rent_buy.dart';
import 'package:shop_app/screens/home/components/saved_listings.dart';

import '../../../size_config.dart';

import 'recent_searches.dart';
import 'recent_listings.dart';

class Bodybuy extends StatelessWidget {
  static String routeName = "/body_buy";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Category(),

            // HomeHeader(),
            SizedBox(height: getProportionateScreenWidth(10)),

            //Categories(),
            RecentListings(),
            SizedBox(height: getProportionateScreenWidth(60)),
            PopularProducts(),
            SizedBox(height: getProportionateScreenWidth(30)),
            SavedListings(),
            SizedBox(height: getProportionateScreenWidth(30)),
            SavedSearches(),
          ],
        ),
      ),
    ));
  }
}
