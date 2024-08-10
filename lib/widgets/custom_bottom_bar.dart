import 'package:flutter/material.dart';
import 'package:jobpilot/core/app_export.dart';

class CustomBottomBar extends StatelessWidget {
  CustomBottomBar({
    Key? key,
    this.onChanged,
  }) : super(
          key: key,
        );
  RxInt selectedIndex = 0.obs;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: Icons.home,
      activeIcon: Icons.home,
      type: BottomBarEnum.Home,
    ),
    BottomMenuModel(
      icon: Icons.connect_without_contact,
      activeIcon: Icons.connect_without_contact,
      type: BottomBarEnum.Connections,
    ),
    BottomMenuModel(
      icon: Icons.add_circle,
      activeIcon: Icons.add_circle,
      type: BottomBarEnum.Add,
    ),
    BottomMenuModel(
      icon: Icons.message,
      activeIcon: Icons.message,
      type: BottomBarEnum.Chat,
    ),
    BottomMenuModel(
      icon: Icons.bookmark,
      activeIcon: Icons.bookmark,
      type: BottomBarEnum.Bookmark,
    )
  ];
  Function(BottomBarEnum)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72.v,
      decoration: BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
        boxShadow: [
          BoxShadow(
            color: appTheme.blueGray20026,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      ),
      child: Obx(
        () => BottomNavigationBar(
          backgroundColor: Colors.transparent,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedFontSize: 0,
          elevation: 0,
          currentIndex: selectedIndex.value,
          type: BottomNavigationBarType.fixed,
          items: List.generate(bottomMenuList.length, (index) {
            return BottomNavigationBarItem(
              icon: Icon(
                bottomMenuList[index].icon,
                size: 44.adaptSize,
                color: appTheme.orangeA20001,
              ),
              activeIcon: Icon(
                bottomMenuList[index].icon,
                size: 34.adaptSize,
                color: appTheme.blueGray30005,
              ),
              label: '',
            );
          }),
          onTap: (index) {
            selectedIndex.value = index;
            onChanged?.call(bottomMenuList[index].type);
          },
        ),
      ),
    );
  }
}

enum BottomBarEnum {
  Home,
  Connections,
  Add,
  Chat,
  Bookmark,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    required this.type,
  });

  IconData icon;

  IconData activeIcon;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffffffff),
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
