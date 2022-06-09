import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../account/sign_up/sign_up_screen.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController pageController = PageController(initialPage: 0);
  int index = 0;
  @override
  void initState() {
    super.initState();
    index = pageController.initialPage;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: PageView(
          controller: pageController,
          onPageChanged: (value) {
            setState(() {
              index = value;
            });
          },
          children: [
            pageView(
                image: 'assets/images/Vector.svg',
                title: 'Enjoy The New Arrival Product',
                index: index),
            pageView(
                image: 'assets/images/Vector (1).svg',
                title: 'Guaranteed Safe Delivery',
                index: index),
            pageView(
                image: 'assets/images/Vector (2).svg',
                title: 'Goods Arrived On Time',
                index: index),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 35),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SigUpScreen(),
                    ),
                    (route) => false);
              },
              child: Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 30,
                ),
                height: 50,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Center(
                    child: Text(
                  'GET STARTED',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      .copyWith(color: Colors.white, fontSize: 14),
                )),
              ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    margin: const EdgeInsets.only(right: 5),
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(
                          width: 1.5, color: const Color(0xFFD8D8D8)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 12,
                          backgroundColor: const Color(0xFFD8D8D8),
                          child: SvgPicture.asset('assets/images/google.svg'),
                        ),
                        const SizedBox(width: 10),
                        Text(
                          'GOOGLE',
                          style: Theme.of(context).textTheme.bodyText1.copyWith(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    margin: const EdgeInsets.only(right: 5),
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(
                          width: 1.5, color: const Color(0xFFD8D8D8)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 12,
                          backgroundColor: const Color(0xFFD8D8D8),
                          child:
                              SvgPicture.asset('assets/images/face_book.svg'),
                        ),
                        const SizedBox(width: 10),
                        Text(
                          'FACEBOOK',
                          style: Theme.of(context).textTheme.bodyText1.copyWith(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget processOnboarding({int index}) {
    return Padding(
      padding: const EdgeInsets.only(top: 0, bottom: 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            children: [
              Container(
                margin: const EdgeInsets.only(right: 5),
                height: 10,
                width: 50,
                decoration: BoxDecoration(
                  color: const Color(0xFFD8D8D8),
                  borderRadius: BorderRadius.circular(3),
                ),
              ),
              AnimatedContainer(
                margin: const EdgeInsets.only(right: 5),
                height: 10,
                width: index == 0 ? 25 : 50,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(3),
                ),
                duration: const Duration(milliseconds: 300),
              ),
            ],
          ),
          const SizedBox(width: 10),
          Stack(
            children: [
              Container(
                margin: const EdgeInsets.only(right: 5),
                height: 10,
                width: 50,
                decoration: BoxDecoration(
                  color: const Color(0xFFD8D8D8),
                  borderRadius: BorderRadius.circular(3),
                ),
              ),
              AnimatedContainer(
                margin: const EdgeInsets.only(right: 5),
                height: 10,
                width: index == 0
                    ? 0
                    : index == 1
                        ? 25
                        : 50,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(3),
                ),
                duration: const Duration(milliseconds: 300),
              ),
            ],
          ),
          const SizedBox(width: 10),
          Stack(
            children: [
              Container(
                margin: const EdgeInsets.only(right: 5),
                height: 10,
                width: 50,
                decoration: BoxDecoration(
                  color: const Color(0xFFD8D8D8),
                  borderRadius: BorderRadius.circular(3),
                ),
              ),
              AnimatedContainer(
                margin: const EdgeInsets.only(right: 5),
                height: 10,
                width: index == 0
                    ? 0
                    : index == 1
                        ? 0
                        : 25,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(3),
                ),
                duration: const Duration(milliseconds: 300),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget pageView({
    String image,
    String title,
    int index,
  }) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Center(child: SvgPicture.asset(image)),
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: RichText(
                text: TextSpan(
                  text: title,
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      .copyWith(fontSize: 36, fontWeight: FontWeight.w600),
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 20),
              child: RichText(
                text: TextSpan(
                  text:
                      'Get your dream item easily and safely with Shoesly. and get other interesting offers',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      .copyWith(fontSize: 14, color: const Color(0xff6F6F6F)),
                ),
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
        processOnboarding(index: index),
        const SizedBox()
      ],
    );
  }
}
