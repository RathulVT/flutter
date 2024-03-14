import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginPage_FireBase extends StatefulWidget {
  const LoginPage_FireBase({super.key});

  @override
  State<LoginPage_FireBase> createState() => _LoginPage_FireBaseState();
}

class _LoginPage_FireBaseState extends State<LoginPage_FireBase> {
  GlobalKey<FormState> gkey = GlobalKey();
  TextEditingController emailController = TextEditingController();
  TextEditingController passcontroller = TextEditingController();

  Future signInAuth(email, password) async {
    try {
      var reference = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      if(reference.user!.uid != null){
        print("Account created");
      }
    }on FirebaseAuthException catch (e) {
      print("Error ${e.code}");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Firebase Login"),
        centerTitle: true,
      ),
      body: Form(
        key: gkey,
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16)),
                  hintText: "Email Id"),
              controller: emailController,
              validator: (value) {
                if (value!.isEmpty) {
                  return "please enter email";
                }
                return null;
              },
            ),
            TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16)),
                  hintText: "Password"),
              controller: passcontroller,
              validator: (value) {
                if (value!.isEmpty) {
                  return "please enter password";
                }
                return null;
              },
            ),
            ElevatedButton(
                onPressed: () {
                  signInAuth(emailController.text, passcontroller.text);
                }, child: const Text("Create Account")),
          ],
        ),
      ),
    );
  }
}
