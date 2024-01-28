import 'package:flutter/material.dart';
import 'package:nu_go_app/content_model.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                onPageChanged: (int index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                itemCount: contents.length,
                itemBuilder: (context, i) {
                  return Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Column(
                      children: [
                        Image.asset(
                          contents[i].image,
                          height: 300,
                        ),
                        Text(
                          contents[i].title,
                          style: const TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          contents[i].description,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 15,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Container(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    contents.length,
                    (index) => buildDot(index, context),
                  )),
            ),
            Container(
              height: 60,
              width: double.infinity,
              margin: const EdgeInsets.all(40),
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Next'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10,
      width: currentIndex == index ? 50 : 10,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Theme.of(context).primaryColor,
      ),
    );
  }
}
