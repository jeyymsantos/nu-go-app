import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nu_go_app/navigationbar.dart';
import 'package:nu_go_app/utils/constants/colors.dart';
import 'package:nu_go_app/utils/theme/theme.dart';

class JoinEvent extends StatefulWidget {
  const JoinEvent({super.key});

  @override
  State<JoinEvent> createState() => _JoinEventState();
}

int index = 0;

class _JoinEventState extends State<JoinEvent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      bottomNavigationBar: const CustomNavigationBar(),
      body:SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                const SizedBox(height: 10),

                  Row(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        child: const Icon(Icons.arrow_back_ios_new),
                      ),
                      
                      const Text(
                      'Join Event',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w500
                      ),
                      ),

                    ],
                  ),

                  const SizedBox(height: 40),

                  const Text(
                    'Register your details here',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                  ),

                  const SizedBox(height: 50),


                  const TextField(
                    decoration: InputDecoration(
                    hintText: "First Name",
                    hintStyle: TextStyle(
                    color: Color.fromARGB(255, 207, 207, 207),
                    fontWeight: FontWeight.w400)
                    ),
                  ),

                  const SizedBox(height: 10),

                  const TextField(
                    decoration: InputDecoration(
                    hintText: "Middle Name",
                    hintStyle: TextStyle(
                    color: Color.fromARGB(255, 207, 207, 207),
                    
                    fontWeight: FontWeight.w400)
                    ),
                  ),


                  const SizedBox(height: 10),

                  const TextField(
                    decoration: InputDecoration(
                    hintText: "Last Name",
                    hintStyle: TextStyle(
                    color: Color.fromARGB(255, 207, 207, 207),
                    fontWeight: FontWeight.w400)
                    ),
                  ),

                  const SizedBox(height: 10),

                  const TextField(
                    decoration: InputDecoration(
                    hintText: "Address",
                    hintStyle: TextStyle(
                    color: Color.fromARGB(255, 207, 207, 207),
                    fontWeight: FontWeight.w400)
                    ),
                  ),

                  const SizedBox(height: 30),

                  SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    side: const BorderSide(color: NUBlue),
                  ),
                  onPressed: () {
                 
                  },
                  child: const Text(
                    'Sign In',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),



                


                
              ],
            ),
          ),
        ),
      )
    );
  }
}
