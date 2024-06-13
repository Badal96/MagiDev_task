import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:magic_devs_task/config/assets.dart';
import 'package:magic_devs_task/config/colors.dart';
import 'package:magic_devs_task/view/screens/conditions_screen/condition_screen.dart';
import 'package:magic_devs_task/view/screens/feed_screen/feed_screen.dart';
import 'package:magic_devs_task/view/screens/settings_screen/settings_screen.dart';

class HomePageWithNavbar extends StatefulWidget {
  const HomePageWithNavbar({super.key});

  @override
  State<HomePageWithNavbar> createState() => _HomePageWithNavbarState();
}

class _HomePageWithNavbarState extends State<HomePageWithNavbar> {
  int _navBarPage = 1;
  late Widget currentScreen;
  void changePage(int index) {
    _navBarPage = index;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    switch (_navBarPage) {
      case 0:
        currentScreen = const ConditionsScreen();
        break;
      case 1:
        currentScreen = const FeedScreen();
        break;
      case 2:
        currentScreen = const SettingsScreen();
        break;

      default:
        Container();
    }
    return Scaffold(
      body: currentScreen,
      bottomNavigationBar: Container(
        height: 100,
        decoration: BoxDecoration(
            border: Border.all(color: AppColors.lightGrey, width: 0.2)),
        child: _CustomBottomNavigationBar(
          selectedIcon: _navBarPage,
          onTap: changePage,
        ),
      ),
    );
  }
}

class _CustomBottomNavigationBar extends StatelessWidget {
  final void Function(int index) onTap;
  final int selectedIcon;
  const _CustomBottomNavigationBar(
      {required this.selectedIcon, required this.onTap});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(11),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
              left: 0,
              right: 0,
              bottom: 17,
              child: SizedBox(
                width: 100,
                child: InkWell(
                  radius: 100,
                  onTap: () {
                    onTap(1);
                  },
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            color: selectedIcon == 1
                                ? AppColors.appBlue
                                : AppColors.darkGray,
                            shape: BoxShape.circle),
                        child: SvgPicture.asset(Assets.messageIcon),
                      ),
                      const Gap(5),
                      Text(
                        'Feed',
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w600,
                          color: selectedIcon == 1
                              ? AppColors.appBlue
                              : AppColors.darkGray,
                        ),
                      ),
                    ],
                  ),
                ),
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 100,
                child: InkWell(
                  borderRadius: BorderRadius.circular(30),
                  onTap: () {
                    onTap(0);
                  },
                  child: ColorFiltered(
                    colorFilter: ColorFilter.mode(
                        selectedIcon == 0
                            ? AppColors.appBlue
                            : AppColors.lightGrey,
                        BlendMode.srcIn),
                    child: Column(
                      children: [
                        SvgPicture.asset(Assets.conditionIcon),
                        const Gap(8),
                        const Text(
                          'Conditions',
                          style: TextStyle(
                              fontSize: 11, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 100,
                child: InkWell(
                  borderRadius: BorderRadius.circular(30),
                  onTap: () {
                    onTap(2);
                  },
                  child: ColorFiltered(
                    colorFilter: ColorFilter.mode(
                        selectedIcon == 2
                            ? AppColors.appBlue
                            : AppColors.lightGrey,
                        BlendMode.srcIn),
                    child: Column(
                      children: [
                        SvgPicture.asset(Assets.settingsIcon),
                        const Gap(8),
                        const Text(
                          'Settings',
                          style: TextStyle(
                              fontSize: 11, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
