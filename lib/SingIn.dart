import 'package:firebase_auth/firebase_auth.dart';
import 'libruary.dart';

class SingUp extends StatefulWidget {
  const SingUp({super.key});

  @override
  State<SingUp> createState() => _SingUpState();
}

class _SingUpState extends State<SingUp> {
  TextEditingController _controller = TextEditingController();
  bool cOntrollervalidation = false;
  var maskFormatter = new MaskTextInputFormatter(
      mask: '+998 (##) ###-##-##',
      filter: {"#": RegExp(r'[0-9]')},
      type: MaskAutoCompletionType.lazy);
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(229, 229, 229, 1),
      appBar: AppBar(
        elevation: .0,
        backgroundColor: const Color.fromRGBO(229, 229, 229, 1),
        leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            )),
        title: Text(
          "Back",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 40.h),
                alignment: Alignment.center,
                width: 189.w,
                height: 39.h,
                child: Text(
                  "Welcome Back",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w700),
                ),
              ),
              Container(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 15.w),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 7.h),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Info.bOrdercolor, width: 1)),
                  width: 330.w,
                  height: 54.h,
                  child: TextFormField(
                    onChanged: (e) {
                      if (e.length > 7) {
                        cOntrollervalidation = true;
                        print(cOntrollervalidation);
                      } else {
                        cOntrollervalidation = false;
                        print(cOntrollervalidation);
                      }
                      if (cOntrollervalidation == true) {
                        Info.tExtcolor = Color.fromRGBO(229, 229, 229, 1);
                        Info.butToncolor = Color.fromRGBO(39, 39, 39, 1);
                        Info.bOrdercolor = Color.fromRGBO(180, 180, 180, 1);
                      } else {
                        Info.tExtcolor = Color.fromRGBO(39, 39, 39, 1);
                        Info.butToncolor = Color.fromRGBO(229, 229, 229, 1);
                        Info.bOrdercolor = Color.fromRGBO(253, 0, 0, 1);
                      }
                      setState(() {});
                    },
                    controller: _controller,
                    cursorColor: Colors.black,
                    cursorWidth: 1,
                    decoration: InputDecoration(
                      hintText: "+998 (_ _) _ _ _  _ _  _ _",
                      hintStyle: TextStyle(
                          color: Color.fromRGBO(180, 180, 180, 1),
                          fontSize: 14),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Container(
                    alignment: Alignment.center,
                    margin:
                        EdgeInsets.symmetric(vertical: 12.h, horizontal: 15.w),
                    width: 220.w,
                    child: Text("We will send sms your phone number.",
                        style: TextStyle(
                            fontSize: 10.sp,
                            color: Color.fromRGBO(180, 180, 180, 1))),
                  ),
                ],
              ),
              Container(
                  margin: EdgeInsets.symmetric(vertical: 50.h),
                  width: 330.w,
                  height: 54.h,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Info.butToncolor,
                          side: const BorderSide(
                              width: 1,
                              color: Color.fromRGBO(180, 180, 180, 1))),
                      onPressed: () async {
                        await _sendNumber(context);
                      },
                      child: Text(
                        "Create account",
                        style: TextStyle(color: Info.tExtcolor),
                      )))
            ],
          ),
        ),
      ),
    );
  }

  _sendNumber(BuildContext context) async {
    if (true) {
      await _firebaseAuth.verifyPhoneNumber(
        phoneNumber: _controller.text,
        verificationCompleted: (credential) {},
        verificationFailed: (error) {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => HomePage()));
        },
        codeSent: (verificationId, resendToken) async {
          await Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SmsPage(verificationId)),
          );
        },
        codeAutoRetrievalTimeout: (verificationId) {},
      );
    }
  }
}
