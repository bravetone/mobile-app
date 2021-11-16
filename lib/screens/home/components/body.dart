import 'package:flutter/material.dart';
import 'package:shop_app/screens/home/components/SavedSearches.dart';
import 'package:shop_app/screens/home/components/rent_buy.dart';
import 'package:shop_app/screens/home/components/saved_listings.dart';

import '../../../size_config.dart';

import 'recent_searches.dart';
import 'recent_listings.dart';

class Body extends StatefulWidget {
  static String routeName = "/body";

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> with SingleTickerProviderStateMixin {
  TabController? _controller;

  @override
  void initState() {
    _controller = TabController(length: 2, vsync: this);
    super.initState();
  }

  Widget _tabview1() {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: getProportionateScreenWidth(10)),
          // DiscountBanner(),
          // Categories(),

          RecentListings(),

          SizedBox(height: getProportionateScreenWidth(30)),

          PopularProducts(),
          SizedBox(height: getProportionateScreenWidth(30)),

          SavedListings(),
          SizedBox(height: getProportionateScreenWidth(30)),

          SavedSearches(),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: TabBar(
            unselectedLabelColor: Colors.black.withOpacity(0.8),
            labelColor: Colors.deepOrange,
            labelStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            controller: _controller,
            tabs: [
              Tab(
                child: Text("House Buy"),
              ),
              Tab(
                child: Text("House Rent"),
              ),
            ],
          ),
        ),
        body: TabBarView(controller: _controller, children: [
          _tabview1(),
          Center(
            child: Text("2"),
          )
        ]));
  }
}
