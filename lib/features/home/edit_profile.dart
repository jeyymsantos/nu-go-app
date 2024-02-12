import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:nu_go_app/features/common/alert-dialog-widget.dart';
import 'package:nu_go_app/utils/constants/images.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  // TextEditing Controllers
  final _firstNameController = TextEditingController();
  final _middleNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  // Firebase
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // Initial Selected Value
  String dropdownValue = "School of Business & Accountancy";

  // List of Items in Dropdown Menu
  var schools = [
    'School of Business & Accountancy',
    'School of Education, Arts, & Sciences',
    'School of Engineering, Architecture, and Technology',
    'School of Tourism & Hospitality Management'
  ];

  var sba = [
    'BS Accountancy',
    'BS Accounting Information Systems',
    'BSBA Financial Management',
    'BSBA Marketing Management',
  ];

  var seat = [
    'BS Architecture',
    'BS Civil Engineering',
    'BS Computer Engineering',
    'BS Information Technology'
  ];

  var seas = [
    'BS Psychology',
    'Bachelor in Physical Education',
    'BA Economics',
    'AB English & Language Studies',
  ];

  var sthm = [
    'BS Tourism Management',
    'BS Hospitality Management',
  ];

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    _firstNameController.dispose();
    _middleNameController.dispose();
    _lastNameController.dispose();

    super.dispose();
  }

  void signUserUp(context) async {
    // show loading circle
    showDialog(
      context: context,
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );

    try {
      await _auth.createUserWithEmailAndPassword(
        email: _emailController.text,
        password: _passwordController.text,
      );

      Navigator.pop(context);

      // Get Current User
      User? user = _auth.currentUser;

      // Create User Document in Firestore
      await _firestore.collection('users').doc(user?.uid).set({
        'first_name': _firstNameController.text.trim(),
        'middle_name': _middleNameController.text.trim(),
        'last_name': _lastNameController.text.trim(),
        'email': _emailController.text.trim(),
        'password': _passwordController.text.trim(),
      });
    } on FirebaseAuthException catch (e) {
      Navigator.pop(context);
      if (e.code == 'invalid-email') {
        alert(
          'Invalid Email',
          'Please make sure to input a valid email address.',
        );
      } else {
        alert(
          'Something went wrong',
          'Sorry, something went wrong on your account sign up. \n\n(Error Code: ${e.code})',
        );
      }
    }
  }

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
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
        title: const Text(
          'Edit Profile',
          style: TextStyle(fontSize: 25),
        ),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.fromLTRB(25, 15, 25, 0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage(profile),
                  radius: 70,
                ),
              ),
              const SizedBox(height: 20),

              /* First Name TextFormField */
              TextFormField(
                controller: _firstNameController,
                style: const TextStyle(
                    color: Colors.black, fontWeight: FontWeight.normal),
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  hintText: 'First Name',
                ),
              ),
              const SizedBox(height: 12),

              /* Middle Name TextFormField */
              TextFormField(
                controller: _middleNameController,
                style: const TextStyle(
                    color: Colors.black, fontWeight: FontWeight.normal),
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  hintText: 'Middle Name',
                ),
              ),
              const SizedBox(height: 12),

              /* Last Name TextFormField */
              TextFormField(
                controller: _lastNameController,
                style: const TextStyle(
                    color: Colors.black, fontWeight: FontWeight.normal),
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  hintText: 'Last Name',
                ),
              ),
              const SizedBox(height: 12),
              SizedBox(
                width: double.infinity,

                // Sign Up Button
                child: ElevatedButton(
                    onPressed: () {
                      if (_passwordController.text.isEmpty ||
                          _confirmPasswordController.text.isEmpty ||
                          _firstNameController.text.isEmpty ||
                          _middleNameController.text.isEmpty ||
                          _lastNameController.text.isEmpty ||
                          _passwordController.text.isEmpty ||
                          _confirmPasswordController.text.isEmpty) {
                        alert('Missing Fields',
                            'Make sure to provide information on all fields!');
                      } else if (_passwordController.text !=
                          _confirmPasswordController.text) {
                        alert('Passwords don\'t match!',
                            'Make sure that your passwords match!');
                      } else {
                        signUserUp(context);
                      }
                    },
                    child: const Text('Save')),
              ),
              const SizedBox(height: 10),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  border: Border.all(
                      color: Colors.grey,
                      style: BorderStyle.solid,
                      width: 0.80),
                ),
                width: double.infinity,
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                    isExpanded: true,
                    value: dropdownValue,
                    icon: const Icon(Icons.keyboard_arrow_down),
                    items: schools.map((String schools) {
                      return DropdownMenuItem(
                        value: schools,
                        child: Text(
                          schools,
                          style: const TextStyle(fontSize: 12),
                        ),
                      );
                    }).toList(),
                    onChanged: (school) {
                      setState(() {
                        dropdownValue = school!;
                      });
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
