import 'package:flutter/material.dart';
import 'package:flutter_portfolio/view%20model/responsive.dart';
import 'package:flutter_portfolio/view/intro/components/side_menu_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../res/constants.dart';
import 'navigation_button_list.dart';

class TopNavigationBar extends StatelessWidget {
  const TopNavigationBar({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // const Spacer(),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.02,
          ),
          Padding(
              padding: const EdgeInsets.all(defaultPadding),
              child:
                  //!Responsive.isLargeMobile(context)
                  // ?
                  const Icon(
                FontAwesomeIcons.bookQuran,
                size: 50,
                color: Colors.white,
              )
              // : MenuButton(
              //     onTap: () => Scaffold.of(context).openDrawer(),
              //   ),
              ),
          // if(Responsive.isLargeMobile(context)) MenuButton(),
          const Spacer(
            flex: 2,
          ),
          if (!Responsive.isLargeMobile(context)) const NavigationButtonList(),
          const Spacer(
            flex: 2,
          ),
          // const ConnectButton(),
          const Spacer(),
        ],
      ),
    );
  }
}
