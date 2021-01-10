import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../services/size_service.dart';

class NavBarItem extends StatelessWidget {
  final int index;
  final int selectedIndex;
  final Function onTap;
  final String iconUrl;
  final String text;

  const NavBarItem({
    @required this.index,
    @required this.selectedIndex,
    @required this.onTap,
    this.iconUrl,
    this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Material(
        type: MaterialType.transparency,
        child: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () => onTap(index),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              if (iconUrl != null)
                SvgPicture.network(
                  iconUrl,
                  fit: BoxFit.scaleDown,
                  width: scaleWidth(50),
                  height: scaleWidth(50),
                ),
              if (text != null)
                Text(
                  text,
                ),
            ],
          ),
        ),
      ),
    );
  }
}
