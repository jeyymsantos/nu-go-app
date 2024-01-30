import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nu_go_app/utils/constants/colors.dart';

class Explore extends StatefulWidget {
  const Explore({super.key});

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                const SizedBox(height: 10),

                  const Text(
                  'Explore',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w500
                  ),
                  ),

                  const SizedBox(height: 20),

                  const TextField(
                  
                  decoration: InputDecoration(
                  hintText: "Search",
                  prefixIcon: Icon(CupertinoIcons.search,
                  ),
                  hintStyle: TextStyle(
                    color: Color.fromARGB(255, 207, 207, 207),
                                        fontWeight: FontWeight.w500

                  )
                  ),
                ),

                const SizedBox(height: 20,),

                Row(
                  children: [
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8), // Adjust the border radius as needed
                        child: Image.asset(
                          'assets/images/onboarding/image-commex.png',
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 20),


                const Text("The SEAT Student Council conducted their first ever Community Extension Program.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  
                ),
                  textAlign: TextAlign.justify,
                ),

                const SizedBox(height: 20),

                 SizedBox(
                  width: MediaQuery.of(context).size.width, // Set the width to match the screen width
                  child: const Row(
                    children:  [

                      Flexible(
                        child: Text(
                          "Baliwag, Bulacan - The School of Engineering, Architecture, and Technology (SEAT) Student Council, in collaboration with the entire SEAT community, successfully organized and executed their inaugural Community Extension Program in Brgy. Paitan, Baliwag, Bulacan. The event, held on [date], marked a significant milestone in the school's commitment to community engagement and social responsibility. \n\nThe SEAT Community Extension Program aimed to foster a sense of unity and give back to the local community by providing various services and initiatives. Students, faculty, and staff enthusiastically participated in a range of activities designed to address the needs of the community and create lasting positive impacts. \n\nAmong the highlights of the program were educational workshops conducted by SEAT faculty members, covering topics such as basic engineering principles, architectural design, and technological advancements. These sessions were well-received by the community members who expressed gratitude for the opportunity to enhance their knowledge and skills.\n\nThe SEAT Student Council also organized a health and wellness fair, offering free medical check-ups, dental services, and wellness seminars. Local residents appreciated the access to healthcare services and the valuable information shared during these sessions.",
                          softWrap: true,
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ],
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
