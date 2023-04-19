import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flash_chat/components/rounded_button.dart';
import 'package:flash_chat/screens/login_screen.dart';
import 'package:flash_chat/screens/registration_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});
  static String id = 'welcome_screen';
  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation animation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );
    animation = ColorTween(
      begin: Colors.blueGrey,
      end: Colors.white,
    ).animate(controller);

    controller.forward();
    controller.addListener(
      () {
        setState(() {});
        // print(animation.value);
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: animation.value,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Hero(
                  tag: 'logo',
                  child: SizedBox(
                    height: 60.0,
                    child: Image.asset('images/logo.png'),
                  ),
                ),
                AnimatedTextKit(animatedTexts: [
                  TypewriterAnimatedText(
                    'Flash Chat',
                    textStyle: const TextStyle(
                      fontSize: 45.0,
                      fontWeight: FontWeight.w900,
                    ),
                    speed: const Duration(milliseconds: 200),
                  ),
                ])
              ],
            ),
            const SizedBox(
              height: 48.0,
            ),
            RoundedButton(
              buttonTitle: 'Log In',
              buttonColor: Colors.lightBlueAccent,
              handlePress: () {
                //Go to login screen.
                Navigator.pushNamed(context, LoginScreen.id);
              },
            ),
            RoundedButton(
              buttonColor: Colors.blueAccent,
              buttonTitle: 'Register',
              handlePress: () {
                //Go to registration screen.
                Navigator.pushNamed(context, RegistrationScreen.id);
              },
            )
          ],
        ),
      ),
    );
  }
}
