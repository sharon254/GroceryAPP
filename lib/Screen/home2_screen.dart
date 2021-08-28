import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruit_app/Screen/appbar.dart';
import 'package:fruit_app/Screen/constants.dart';
class Home2Screen extends StatelessWidget {
  const Home2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),

    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: kPrimaryColor,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset('svg/menu.svg',
        color: Colors.white,),
        onPressed: (){},

      ),
    );
  }
}
