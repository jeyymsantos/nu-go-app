import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:nu_go_app/features/common/alert-dialog-widget.dart';
import 'package:nu_go_app/features/home/edit_profile.dart';
import 'package:nu_go_app/utils/constants/colors.dart';
import 'package:nu_go_app/utils/constants/images.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  // Fetching Information
  String? firstName = "";
  String? middleName = "";
  String? lastName = "";
  String? email = "";
  String? password = "";

  final myUser = FirebaseAuth.instance.currentUser!;

  final textFollow = const TextStyle(
    fontSize: 14,
    color: Colors.black,
  );

  void signUserOut() {
    FirebaseAuth.instance.signOut();
  }

  _fetch() async {
    final firebaseUser = FirebaseAuth.instance.currentUser;
    if (firebaseUser != null) {
      await FirebaseFirestore.instance
          .collection('users')
          .doc(firebaseUser.uid)
          .get()
          .then((value) {
        firstName = value.data()!['first_name'];
        middleName = value.data()!['middle_name'];
        lastName = value.data()!['last_name'];
        email = value.data()!['email'];
      }).catchError((e) {
        alert('Problem Occurred!',
            'Sorry, we encountered a problem fetching your data. \n\nError Code: $e');
      });
    }
  }

// ALERT //
  void alert(String title, String description) {
    showDialog(
      context: context,
      builder: (context) {
        return MyAlertDialog(
          title: title,
          description: description,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: signUserOut, icon: const Icon(Icons.logout)),
        ],
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
        title: const Text(
          'Account',
          style: TextStyle(fontSize: 25),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  const CircleAvatar(
                    backgroundImage: AssetImage(profile),
                    radius: 55,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  FutureBuilder(
                    future: _fetch(),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState != ConnectionState.done) {
                        return const Text('Loading Data....');
                      } else {
                        return Text(
                          "$firstName $lastName",
                          style: const TextStyle(
                            fontSize: 22,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        );
                      }
                    },
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Text('350', style: textFollow),
                          Text('Following', style: textFollow),
                        ],
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 1,
                        color: iconGray,
                        height: 30,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          Text('350', style: textFollow),
                          Text('Followers', style: textFollow),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: SizedBox(
                  width: 200,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const EditProfilePage(),
                          ));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: NUBlue,
                      elevation: 5,
                      padding: const EdgeInsets.all(12),
                      shadowColor: Colors.black.withOpacity(0.1),
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(color: NUBlue, width: 1.5),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.edit_document),
                        SizedBox(width: 8),
                        Text(
                          'Edit Profile',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 40),
              const Text(
                'About Me',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              const SizedBox(height: 5),
              const Text(
                'I am the Student Development and Activities Office big boss. You can call me Ker or Win or whatever you like, but I prefer bossbaby.',
                style: TextStyle(color: Colors.black),
              ),
              const SizedBox(height: 30),
              const Text(
                'Tags',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                        color: Color(0xff6B7AED),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    child: const Text(
                      'ASP',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        color: Color(0xffEE544A),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    child: const Text(
                      'RSCO',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        color: Color(0xff29D697),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    child: const Text(
                      'SDAO',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        color: Color(0xff39D1F2),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    child: const Text(
                      'NUB Office',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
