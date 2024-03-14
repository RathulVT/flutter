import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class cloud_firestore_ extends StatefulWidget {
  const cloud_firestore_({super.key});

  @override
  State<cloud_firestore_> createState() => _cloud_firestore_State();
}

class _cloud_firestore_State extends State<cloud_firestore_> {
  GlobalKey<FormState> gkey = GlobalKey();
  TextEditingController emailController = TextEditingController();
  TextEditingController passcontroller = TextEditingController();

  Future signInAuth(email, password) async {
    try {
      var reference = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      if (reference.user!.uid != null) {
        print("Account Sign In");
      }
    } on FirebaseAuthException catch (e) {
      print("Error ${e.code}");
    }
  }

  Future cloudFireStore() async {
    try {
      await FirebaseFirestore.instance.collection("Users").add({
        "email": "rathul@gmail.com",
        "password": 123456,
      });
    } catch (r) {
      print("error ");
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
                  cloudFireStore();
                },
                child: const Text("Login Account")),
          ],
        ),
      ),
    );
  }
}
