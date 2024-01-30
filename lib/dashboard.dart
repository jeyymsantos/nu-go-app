import 'package:flutter/material.dart';
// import 'package:google_nav_bar/google_nav_bar.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
      child: SafeArea(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              const Text(
                'Dashboard',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: 205,
                          height: 158,
                          clipBehavior: Clip.antiAlias,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFB5CEFF),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                left: 150,
                                top: -33,
                                child: Container(
                                  width: 79,
                                  height: 79,
                                  decoration: const ShapeDecoration(
                                    color: Color(0xFF88B0FF),
                                    shape: OvalBorder(),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: -25,
                                top: 91,
                                child: Container(
                                  width: 90,
                                  height: 90,
                                  decoration: const ShapeDecoration(
                                    color: Color(0xFF88B0FF),
                                    shape: OvalBorder(),
                                  ),
                                ),
                              ),
                              const Positioned(
                                left: 11,
                                top: 5,
                                child: SizedBox(
                                  width: 126,
                                  child: Text(
                                    '100',
                                    style: TextStyle(
                                      color: Color(0xFF494949),
                                      fontSize: 64,
                                      fontWeight: FontWeight.w500,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ),
                              const Positioned(
                                left: 11,
                                top: 76,
                                child: SizedBox(
                                  width: 126,
                                  child: Text(
                                    'Pending Fee   (Pesos)',
                                    style: TextStyle(
                                      color: Color(0xFF494949),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                right: 0,
                                top: 60,
                                left: 90,
                                child: Image.asset(
                                  'assets/images/onboarding/board2.png',
                                  width: 120,
                                  height: 120,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(width: 15),
                    Stack(
                      children: [
                        Container(
                          width: 205,
                          height: 158,
                          clipBehavior: Clip.antiAlias,
                          decoration: ShapeDecoration(
                            color: const Color.fromARGB(255, 255, 183, 181),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                left: 150,
                                top: -33,
                                child: Container(
                                  width: 79,
                                  height: 79,
                                  decoration: const ShapeDecoration(
                                    color: Color.fromARGB(255, 255, 139, 136),
                                    shape: OvalBorder(),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: -25,
                                top: 91,
                                child: Container(
                                  width: 90,
                                  height: 90,
                                  decoration: const ShapeDecoration(
                                    color: Color.fromARGB(255, 255, 139, 136),
                                    shape: OvalBorder(),
                                  ),
                                ),
                              ),
                              const Positioned(
                                left: 11,
                                top: 5,
                                child: SizedBox(
                                  width: 126,
                                  child: Text(
                                    '12',
                                    style: TextStyle(
                                      color: Color(0xFF494949),
                                      fontSize: 64,
                                      fontWeight: FontWeight.w500,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ),
                              const Positioned(
                                left: 11,
                                top: 76,
                                child: SizedBox(
                                  width: 126,
                                  child: Text(
                                    'Events to Join',
                                    style: TextStyle(
                                      color: Color(0xFF494949),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                right: 0,
                                child: Image.asset(
                                  'assets/images/onboarding/board1.png',
                                  width: 100,
                                  height: 100,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(width: 15),
                    Stack(
                      children: [
                        Container(
                          width: 205,
                          height: 158,
                          clipBehavior: Clip.antiAlias,
                          decoration: ShapeDecoration(
                            color: const Color.fromARGB(255, 255, 222, 107),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                left: 150,
                                top: -33,
                                child: Container(
                                  width: 79,
                                  height: 79,
                                  decoration: const ShapeDecoration(
                                    color: Color.fromARGB(255, 255, 176, 118),
                                    shape: OvalBorder(),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: -25,
                                top: 91,
                                child: Container(
                                  width: 90,
                                  height: 90,
                                  decoration: const ShapeDecoration(
                                    color: Color.fromARGB(255, 255, 176, 118),
                                    shape: OvalBorder(),
                                  ),
                                ),
                              ),
                              const Positioned(
                                left: 11,
                                top: 5,
                                child: SizedBox(
                                  width: 126,
                                  child: Text(
                                    '127',
                                    style: TextStyle(
                                      color: Color(0xFF494949),
                                      fontSize: 64,
                                      fontWeight: FontWeight.w500,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ),
                              const Positioned(
                                left: 11,
                                top: 76,
                                child: SizedBox(
                                  width: 126,
                                  child: Text(
                                    'Pending Reports',
                                    style: TextStyle(
                                      color: Color(0xFF494949),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                right: 0,
                                child: Image.asset(
                                  'assets/images/onboarding/board3.png',
                                  width: 100,
                                  height: 100,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(width: 15),
                    Stack(
                      children: [
                        Container(
                          width: 205,
                          height: 158,
                          clipBehavior: Clip.antiAlias,
                          decoration: ShapeDecoration(
                            color: const Color.fromARGB(255, 154, 160, 252),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                left: 150,
                                top: -33,
                                child: Container(
                                  width: 79,
                                  height: 79,
                                  decoration: const ShapeDecoration(
                                    color: Color.fromARGB(255, 128, 135, 250),
                                    shape: OvalBorder(),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: -25,
                                top: 91,
                                child: Container(
                                  width: 90,
                                  height: 90,
                                  decoration: const ShapeDecoration(
                                    color: Color.fromARGB(255, 128, 135, 250),
                                    shape: OvalBorder(),
                                  ),
                                ),
                              ),
                              const Positioned(
                                left: 11,
                                top: 5,
                                child: SizedBox(
                                  width: 126,
                                  child: Text(
                                    '94',
                                    style: TextStyle(
                                      color: Color(0xFF494949),
                                      fontSize: 64,
                                      fontWeight: FontWeight.w500,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ),
                              const Positioned(
                                left: 11,
                                top: 76,
                                child: SizedBox(
                                  width: 126,
                                  child: Text(
                                    'For Verification',
                                    style: TextStyle(
                                      color: Color(0xFF494949),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                right: 0,
                                child: Image.asset(
                                  'assets/images/onboarding/board4.png',
                                  width: 100,
                                  height: 100,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(width: 15),
                    Stack(
                      children: [
                        Container(
                          width: 205,
                          height: 158,
                          clipBehavior: Clip.antiAlias,
                          decoration: ShapeDecoration(
                            color: const Color.fromARGB(255, 175, 232, 229),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                left: 150,
                                top: -33,
                                child: Container(
                                  width: 79,
                                  height: 79,
                                  decoration: const ShapeDecoration(
                                    color: Color.fromARGB(255, 83, 188, 173),
                                    shape: OvalBorder(),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: -25,
                                top: 91,
                                child: Container(
                                  width: 90,
                                  height: 90,
                                  decoration: const ShapeDecoration(
                                    color: Color.fromARGB(255, 83, 188, 173),
                                    shape: OvalBorder(),
                                  ),
                                ),
                              ),
                              const Positioned(
                                left: 11,
                                top: 5,
                                child: SizedBox(
                                  width: 126,
                                  child: Text(
                                    '134',
                                    style: TextStyle(
                                      color: Color(0xFF494949),
                                      fontSize: 64,
                                      fontWeight: FontWeight.w500,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ),
                              const Positioned(
                                left: 11,
                                top: 76,
                                child: SizedBox(
                                  width: 126,
                                  child: Text(
                                    'External Request',
                                    style: TextStyle(
                                      color: Color(0xFF494949),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                right: 0,
                                child: Image.asset(
                                  'assets/images/onboarding/board5.png',
                                  width: 100,
                                  height: 100,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Text("Events",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),),
              const SizedBox(height: 20),
              Container(
                width: double.infinity,
                height: 158,
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  shadows: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
