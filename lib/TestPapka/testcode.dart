import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:l/API/SelectCarApi/Cars.dart';

class Cadepage extends StatefulWidget {
  String verificationCode;
  Cadepage(this.verificationCode);

  @override
  State<Cadepage> createState() => _CadepageState();
}

class _CadepageState extends State<Cadepage> {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final TextEditingController _smsCode = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("sms kiriting"),
      ),
      body: Center(
        child: TextFormField(
          controller: _smsCode,
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () async {
        await sendCode();
      }),
    );
  }

  sendCode() async {
    if (true) {
      PhoneAuthCredential _phoneCredential = PhoneAuthProvider.credential(
          verificationId: widget.verificationCode, smsCode: _smsCode.text);
      var _authCredential =
          await _firebaseAuth.signInWithCredential(_phoneCredential);
      if (_authCredential.user != null) {
        await Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => CarsPage()));
      }
    }
  }
}
