import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sigin_exam/ui/page/home/main_home.dart';

class WelcomScreen extends StatefulWidget {
  const WelcomScreen({Key key}) : super(key: key);

  @override
  State<WelcomScreen> createState() => _WelcomScreenState();
}

class _WelcomScreenState extends State<WelcomScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Center(
              child: SvgPicture.asset('assets/images/Vector (3).svg'),
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35),
                child: Text(
                  'Welcome To The Club Of Shoesly!',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      .copyWith(fontSize: 36),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 35, vertical: 16),
                child: Text(
                  'Your account has ben sucsell',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      .copyWith(fontSize: 14, color: Colors.grey),
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (context) => const MainHomeScreen(),
                ),
                (route) => false,
              );
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
                'Let’s Search Shoes!'.toUpperCase(),
                style: Theme.of(context)
                    .textTheme
                    .bodyText1
                    .copyWith(color: Colors.white, fontSize: 14),
              )),
            ),
          ),
        ],
      )),
    );
  }
}
