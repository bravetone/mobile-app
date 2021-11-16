import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';
import 'package:shop_app/components/coustom_bottom_nav_bar.dart';
import 'package:shop_app/enums.dart';

class BelowSearch extends StatelessWidget {
  const BelowSearch({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth * 0.75,
      padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(20),
          vertical: getProportionateScreenWidth(9)),
      decoration: BoxDecoration(
        color: Colors.red,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -15),
            blurRadius: 20,
            color: Color(0xFFFBFBFB).withOpacity(0.15),
          ),
        ],
        borderRadius: BorderRadius.circular(15),
      ),
      child: SafeArea(
          top: false,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // IconButton(
              //   icon: SVG.asset(
              //     "assets/icons/Shop Icon.svg",
              //     color: MenuState.home == selectedMenu
              //         ? kPrimaryColor
              //         : inActiveIconColor,
              //   ),
              //   onPressed: () =>
              //       Navigator.pushNamed(context, HomeScreen.routeName),
              // ),
              // IconButton(
              //   icon: SvgPicture.asset("assets/icons/Heart Icon.svg"),
              //   onPressed: () {},
              // ),
              // IconButton(
              //   icon: SvgPicture.asset("assets/icons/Chat bubble Icon.svg"),
              //   onPressed: () {},
              // ),
              // IconButton(
              //   icon: SvgPicture.asset(
              //     "assets/icons/User Icon.svg",
              //     color: MenuState.profile == selectedMenu
              //         ? kPrimaryColor
              //         : inActiveIconColor,
              //   ),
              //   onPressed: () =>
              //       Navigator.pushNamed(context, ProfileScreen.routeName),
              // ),
            ],
          )),
    );
  }
}
