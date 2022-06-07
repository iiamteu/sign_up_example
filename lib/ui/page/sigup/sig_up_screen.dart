import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SigUpScreen extends StatefulWidget {
  const SigUpScreen({Key key}) : super(key: key);

  @override
  State<SigUpScreen> createState() => _SigUpScreenState();
}

class _SigUpScreenState extends State<SigUpScreen> {
  TextEditingController emailController;
  TextEditingController passWordController;
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
          padding: const EdgeInsets.only(left: 26, top: 100, right: 26),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Sign Up',
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
              const SizedBox(height: 80),
              Text(
                'Email',
                style: Theme.of(context)
                    .textTheme
                    .bodyText1
                    .copyWith(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              TextFormField(
                controller: emailController,
                autocorrect: false,
                decoration: InputDecoration(
                  prefixIconConstraints: const BoxConstraints(maxHeight: 18),
                  // alignLabelWithHint: true,
                  hintStyle: Theme.of(context)
                      .textTheme
                      .overline
                      .copyWith(color: Colors.white),
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
                    .copyWith(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              TextFormField(
                controller: emailController,
                autocorrect: false,
                decoration: InputDecoration(
                  counterText: '',
                  suffixIcon: const Padding(
                    padding: EdgeInsets.only(right: 8),
                    child: Icon(Icons.remove_red_eye),
                  ),
                  prefixIconConstraints: const BoxConstraints(maxHeight: 18),
                  // alignLabelWithHint: true,
                  hintStyle: Theme.of(context)
                      .textTheme
                      .overline
                      .copyWith(color: Colors.white),
                  suffixIconConstraints: const BoxConstraints(maxHeight: 18),
                  isDense: true,
                  contentPadding: const EdgeInsets.symmetric(vertical: 12),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                ),
              ),
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
              onTap: () {},
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
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Join with us, '),
                InkWell(
                  onTap: () {},
                  child: Text(
                    'Create Account',
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
