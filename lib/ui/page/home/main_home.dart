import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sigin_exam/ui/page/account/account_info/account_info_screen.dart';
import 'package:sigin_exam/ui/page/discover/discover_screen.dart';
import 'package:sigin_exam/ui/page/home/home_screen.dart';
import 'package:sigin_exam/ui/page/order/order_screen.dart';
import 'package:sigin_exam/ui/page/wishlist/wish_list_screen.dart';

import 'component/tab_menu_home.dart';

class MainHomeScreen extends StatefulWidget {
  const MainHomeScreen({Key key}) : super(key: key);

  @override
  State<MainHomeScreen> createState() => _MainHomeScreenState();
}

class _MainHomeScreenState extends State<MainHomeScreen>
    with TickerProviderStateMixin {
  List<TabMenuItem> itemsList = [
    TabMenuItem(
        index: 0,
        icon: 'assets/home/home.svg',
        iconHover: 'assets/home/home_hover.svg'),
    TabMenuItem(
        index: 1,
        icon: 'assets/home/discover.svg',
        iconHover: 'assets/home/discover_hover.svg'),
    TabMenuItem(
        index: 2,
        icon: 'assets/home/document.svg',
        iconHover: 'assets/home/document_hover.svg'),
    TabMenuItem(
        index: 3,
        icon: 'assets/home/heart.svg',
        iconHover: 'assets/home/heart_hover.svg'),
    TabMenuItem(
        index: 4,
        icon: 'assets/home/acoount.svg',
        iconHover: 'assets/home/acoount_hover.svg'),
  ];

  final GlobalKey _keyBottomTabbar = GlobalKey();
  int _currentIndex = 0;
  TabMenuItem selectedItem;
  PageController pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );
  BottomNavigationBar bottomNavigationBar;
  Size bottomTabbarHeight = Size.zero;
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback(_afterLayout);
    selectedItem = itemsList[0];
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  void _afterLayout(_) {
    bottomTabbarHeight = getSizes(_keyBottomTabbar);
  }

  Size getSizes(GlobalKey key) {
    try {
      final RenderBox renderBoxRed = key.currentContext.findRenderObject();
      final sizeRed = renderBoxRed.size;
      return sizeRed;
    } catch (e) {
      return Size.zero;
    }
  }

  @override
  Widget build(BuildContext context) {
    bottomNavigator();
    return Scaffold(
        body: SafeArea(
          child: PageView(
            physics: const NeverScrollableScrollPhysics(),
            controller: pageController,
            children: const [
              HomeScreen(),
              DiscoverScreen(),
              OrderScreen(),
              WishListScreen(),
              AccountInfoScreen(),
            ],
          ),
        ),
        bottomNavigationBar: bottomNavigationBar);
  }

  void bottomNavigator() {
    bottomNavigationBar = BottomNavigationBar(
        selectedFontSize: 12.0,
        backgroundColor: Colors.white,
        key: _keyBottomTabbar,
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
            pageController.jumpToPage(index);
          });
        },
        currentIndex: _currentIndex,
        items: itemsList.map((data) {
          return BottomNavigationBarItem(
              icon: SvgPicture.asset(
                  data.index == _currentIndex ? data.iconHover : data.icon),
              label: '');
        }).toList());
  }
}
