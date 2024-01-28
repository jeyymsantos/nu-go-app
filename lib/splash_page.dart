import 'package:flutter/material.dart';
import 'package:nu_go_app/onboarding.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  Future<void> _navigateToHome() async {
    await Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const Onboarding()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff35408E),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/icons/landing_logo.png', height: 100),
            const SizedBox(height: 15),
            const Text(
              'The Nationalian Corner',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                  fontFamily: 'ClanPro'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/icons/synergy.png', height: 30),
          const SizedBox(height: 100),
        ],
      ),
    );
  }
}
