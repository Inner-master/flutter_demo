import 'package:flutter/widgets.dart';
import 'package:flutter_demo/theme/theme.dart';

typedef CustomizedTabCallback = void Function(int index);

abstract class CustomizedTab extends StatelessWidget {
  final int index;
  final int selectedIndex;
  final String label;
  final Widget activeIcon;
  final Widget inactiveIcon;
  final CustomizedTabCallback? onTap;
  CustomizedTab(
      {required this.index,
      required this.selectedIndex,
      required this.label,
      required this.activeIcon,
      required this.inactiveIcon,
      this.onTap});
}

class PlayTab extends CustomizedTab with appleMusicTheme {
  PlayTab(
      {required int index,
      required int selectedIndex,
      required String label,
      required Widget activeIcon,
      required Widget inactiveIcon,
      CustomizedTabCallback? onTap})
      : super(
            index: index,
            selectedIndex: selectedIndex,
            label: label,
            activeIcon: activeIcon,
            inactiveIcon: inactiveIcon,
            onTap: onTap);
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(children: [
      selectedIndex == index ? activeIcon : inactiveIcon,
      const SizedBox(height: 5),
      Text(
        label,
        style: TextStyle(fontSize: 12, color: selectedIndex == index ? red : gray1),
      ),
    ]));
  }
}
