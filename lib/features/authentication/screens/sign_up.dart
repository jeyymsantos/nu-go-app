import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:nu_go_app/features/common/alert-dialog-widget.dart';
import 'package:nu_go_app/utils/constants/colors.dart';
import 'package:nu_go_app/utils/constants/images.dart';

class SignUpPage extends StatefulWidget {
  final Function()? onTap;
  const SignUpPage({super.key, required this.onTap});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
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
        'active': true,
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
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.fromLTRB(25, 15, 25, 0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Sign Up Account',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                'Mabuhay, Nationalian! Register here at NU GO!',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: textGray,
                ),
              ),
              const SizedBox(height: 30),
              Center(
                child: Image.asset(
                  icon,
                  height: 120,
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

              /* Email Address TextFormField */
              TextFormField(
                controller: _emailController,
                style: const TextStyle(
                    color: Colors.black, fontWeight: FontWeight.normal),
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.alternate_email),
                  hintText: 'Email Address',
                ),
              ),
              const SizedBox(height: 12),

              /* Password TextFormField */
              TextFormField(
                controller: _passwordController,
                obscureText: true,
                style: const TextStyle(
                    color: Colors.black, fontWeight: FontWeight.normal),
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.lock_outline),
                  hintText: 'Password',
                ),
              ),
              const SizedBox(height: 12),

              /* Confirm Password TextFormField */
              TextFormField(
                controller: _confirmPasswordController,
                obscureText: true,
                style: const TextStyle(
                    color: Colors.black, fontWeight: FontWeight.normal),
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.lock_outline),
                  hintText: 'Confirm Password',
                ),
              ),
              const SizedBox(height: 20),
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
                    child: const Text('Sign Up')),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Container(
                      height: 1,
                      width: 150,
                      color: textGray,
                    ),
                  ),
                  const Text(
                    'OR',
                    style: TextStyle(
                        color: textGray,
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                  ),
                  Expanded(
                    child: Container(
                      height: 1,
                      width: 150,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const SignUpWithMS365(),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Already have an account?',
                    style: TextStyle(
                      color: textGray,
                      fontSize: 12,
                    ),
                  ),
                  SignInButton(
                    widget: widget,
                  ),
                ],
              ),
              const SizedBox(
                height: 100,
              ),
            ],
          ),
        ),
      )),
    );
  }
}

class SignInButton extends StatelessWidget {
  const SignInButton({
    super.key,
    required this.widget,
  });

  final SignUpPage widget;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: const Text(
        ' Sign In Account Here',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 12,
        ),
      ),
    );
  }
}

class SignUpWithMS365 extends StatelessWidget {
  const SignUpWithMS365({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 5,
        padding: const EdgeInsets.all(12),
        shadowColor: Colors.black.withOpacity(0.1),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/icons/Office365.png', height: 30),
          const SizedBox(width: 8), // Adding spacing between image and text
          const Text(
            'Sign Up with Microsoft 365',
            style: TextStyle(
              fontSize: 16, // You can adjust the font size as needed
              fontWeight:
                  FontWeight.w500, // You can adjust the font weight as needed
            ),
          ),
        ],
      ),
    );
  }
}
