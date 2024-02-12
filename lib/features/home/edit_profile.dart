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
  final _studIDController = TextEditingController();
  final _firstNameController = TextEditingController();
  final _middleNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _aboutMeController = TextEditingController();

  // Firebase
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // Initial Selected Value
  String dropdownValue = "School of Business & Accountancy";

  // List of Items in Dropdown Menu
  final Map<String, List<String>> _schools = {
    'School of Business & Accountancy': [
      'BS Accountancy',
      'BS Accounting Information Systems',
      'BSBA Financial Management',
      'BSBA Marketing Management',
    ],
    'School of Education, Arts, & Sciences': [
      'BS Psychology',
      'Bachelor in Physical Education',
      'BA Economics',
      'AB English & Language Studies',
    ],
    'School of Engineering, Architecture, and Technology': [
      'BS Architecture',
      'BS Civil Engineering',
      'BS Computer Engineering',
      'BS Information Technology'
    ],
    'School of Tourism & Hospitality Management': [
      'BS Tourism Management',
      'BS Hospitality Management',
    ]
  };

  String? _selectedKey = "School of Business & Accountancy";
  String? _selectedItem;

  @override
  void dispose() {
    _studIDController.dispose();
    _firstNameController.dispose();
    _middleNameController.dispose();
    _lastNameController.dispose();
    _aboutMeController.dispose();

    super.dispose();
  }

  void editProfile(context) async {
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
      // Get Current User
      User? user = _auth.currentUser;

      // Create User Document in Firestore
      await _firestore.collection('users').doc(user?.uid).set({
        'student_id': _studIDController.text.trim(),
        'first_name': _firstNameController.text.trim(),
        'middle_name': _middleNameController.text.trim(),
        'last_name': _lastNameController.text.trim(),
        'school': _selectedKey.toString().trim(),
        'program': _selectedItem.toString().trim(),
        'about': _aboutMeController.text.trim(),
      });

      Navigator.pop(context);

      alert('Edit Profile', 'Profile updated successfully!');
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

              /* Student ID TextFormField */
              TextFormField(
                controller: _studIDController,
                style: const TextStyle(
                    color: Colors.black, fontWeight: FontWeight.normal),
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.inbox_outlined),
                  hintText: 'Student ID',
                ),
              ),
              const SizedBox(height: 12),

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

              // SCHOOL
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
                    value: _selectedKey,
                    icon: const Icon(Icons.keyboard_arrow_down),
                    items: _schools.keys.map((String value) {
                      return DropdownMenuItem(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (newValue) {
                      setState(() {
                        _selectedKey = newValue;
                        _selectedItem = null;
                      });
                    },
                  ),
                ),
              ),
              const SizedBox(height: 10),

              // PROGRAM
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
                    value: _selectedItem,
                    icon: const Icon(Icons.keyboard_arrow_down),
                    items: _schools[_selectedKey]!.map((String value) {
                      return DropdownMenuItem(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (newValue) {
                      setState(() {
                        _selectedItem = newValue;
                      });
                    },
                  ),
                ),
              ),
              const SizedBox(height: 10),

              /* About Me TextFormField */
              TextFormField(
                controller: _aboutMeController,
                keyboardType: TextInputType.multiline,
                minLines: 4, // <-- SEE HERE
                maxLines: 4, // <-- SEE HERE
                style: const TextStyle(
                    color: Colors.black, fontWeight: FontWeight.normal),
                decoration: const InputDecoration(
                  // prefixIcon: Icon(Icons.info),
                  hintText: 'About Me',
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                // Sign Up Button
                child: ElevatedButton(
                    onPressed: () {
                      if (_studIDController.text.isEmpty ||
                          _firstNameController.text.isEmpty ||
                          _middleNameController.text.isEmpty ||
                          _lastNameController.text.isEmpty ||
                          _aboutMeController.text.isEmpty ||
                          _selectedItem == null ||
                          _selectedItem.toString().isEmpty ||
                          _selectedKey.toString().isEmpty) {
                        alert('Missing Fields',
                            'Make sure to provide information on all fields!');
                      } else {
                        editProfile(context);
                      }
                    },
                    child: const Text('Save')),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      )),
    );
  }
}
