import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sigin_exam/ui/page/account/sign_up/sign_up_screen.dart';
import 'package:sigin_exam/ui/page/account/welcom_screen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passWordController = TextEditingController();
  TextEditingController confirmPassWordCtr = TextEditingController();
  bool value = false;
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 26, right: 26, top: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Create Account",
                style: Theme.of(context)
                    .textTheme
                    .bodyText1
                    .copyWith(fontSize: 36, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              Text(
                'Please sign up to your Shoesly Account',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              const SizedBox(height: 40),
              Text(
                'Name',
                style: Theme.of(context)
                    .textTheme
                    .bodyText1
                    .copyWith(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              TextFormField(
                controller: nameController,
                autocorrect: false,
                decoration: InputDecoration(
                  prefixIconConstraints: const BoxConstraints(maxHeight: 18),
                  hintText: 'Name',
                  // alignLabelWithHint: true,
                  hintStyle: Theme.of(context)
                      .textTheme
                      .overline
                      .copyWith(color: Colors.grey),
                  suffixIconConstraints: const BoxConstraints(maxHeight: 18),
                  isDense: true,
                  contentPadding: const EdgeInsets.symmetric(vertical: 12),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                ),
              ),
              const SizedBox(height: 40),
              Text(
                'Email',
                style: Theme.of(context)
                    .textTheme
                    .bodyText1
                    .copyWith(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              TextFormField(
                controller: emailController,
                autocorrect: false,
                decoration: InputDecoration(
                  prefixIconConstraints: const BoxConstraints(maxHeight: 18),
                  hintText: 'Email',
                  // alignLabelWithHint: true,
                  hintStyle: Theme.of(context)
                      .textTheme
                      .overline
                      .copyWith(color: Colors.grey),
                  suffixIconConstraints: const BoxConstraints(maxHeight: 18),
                  isDense: true,
                  contentPadding: const EdgeInsets.symmetric(vertical: 12),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                ),
              ),
              const SizedBox(height: 40),
              Text(
                'Password',
                style: Theme.of(context)
                    .textTheme
                    .bodyText1
                    .copyWith(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              TextFormField(
                controller: passWordController,
                autocorrect: false,
                obscureText: true,
                decoration: InputDecoration(
                  counterText: '',
                  suffixIcon: const Padding(
                    padding: EdgeInsets.only(right: 8),
                    child: Icon(Icons.remove_red_eye),
                  ),
                  prefixIconConstraints: const BoxConstraints(maxHeight: 18),
                  hintText: 'Password',
                  // alignLabelWithHint: true,
                  hintStyle: Theme.of(context)
                      .textTheme
                      .overline
                      .copyWith(color: Colors.grey),
                  suffixIconConstraints: const BoxConstraints(maxHeight: 18),
                  isDense: true,
                  contentPadding: const EdgeInsets.symmetric(vertical: 12),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                ),
              ),
              const SizedBox(height: 40),
              Text(
                'Confirm Password',
                style: Theme.of(context)
                    .textTheme
                    .bodyText1
                    .copyWith(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              TextFormField(
                controller: confirmPassWordCtr,
                autocorrect: false,
                obscureText: true,
                decoration: InputDecoration(
                  counterText: '',
                  suffixIcon: const Padding(
                    padding: EdgeInsets.only(right: 8),
                    child: Icon(Icons.remove_red_eye),
                  ),
                  prefixIconConstraints: const BoxConstraints(maxHeight: 18),
                  hintText: 'Confirm Password',
                  // alignLabelWithHint: true,
                  hintStyle: Theme.of(context)
                      .textTheme
                      .overline
                      .copyWith(color: Colors.grey),
                  suffixIconConstraints: const BoxConstraints(maxHeight: 18),
                  isDense: true,
                  contentPadding: const EdgeInsets.symmetric(vertical: 12),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Checkbox(
                        value: value,
                        onChanged: (value) {
                          setState(() {
                            this.value = value;
                          });
                        },
                        activeColor: Colors.black,
                      ),
                      Expanded(
                          child: RichText(
                        text: TextSpan(
                            text: 'By Signing up, you agree to the ',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1
                                .copyWith(fontSize: 14, color: Colors.grey),
                            children: [
                              TextSpan(
                                text: 'Terms of Service ',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1
                                    .copyWith(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text: 'and ',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1
                                    .copyWith(fontSize: 14, color: Colors.grey),
                              ),
                              TextSpan(
                                text: 'Privacy Policy',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1
                                    .copyWith(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                              )
                            ]),
                      ))
                    ],
                  ),
                ],
              )
            ],
          ),
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
                    builder: (context) => const WelcomScreen(),
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
                  'CREATE ACCOUNT',
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
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Have account, '),
                InkWell(
                  onTap: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SigUpScreen(),
                      ),
                      (route) => false,
                    );
                  },
                  child: Text(
                    'Sign Up Now',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1
                        .copyWith(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
