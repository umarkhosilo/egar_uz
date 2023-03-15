import 'testcode.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  TextEditingController phoneCode = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tel kiriting"),
      ),
      body: Center(
        child: TextFormField(
          controller: phoneCode,
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () async {
        await _sendNumber(context);
      }),
    );
  }

  _sendNumber(BuildContext context) async {
    if (true) {
      await _firebaseAuth.verifyPhoneNumber(
        phoneNumber: phoneCode.text,
        verificationCompleted: (credential) {},
        verificationFailed: (error) {},
        codeSent: (verificationId, resendToken) async {
          print(resendToken);
          await Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Cadepage(verificationId)),
          );
        },
        codeAutoRetrievalTimeout: (verificationId) {},
      );
    } else {}
  }
}
