import 'package:firebase_auth/firebase_auth.dart';

import 'libruary.dart';

class SmsPage extends StatefulWidget {
  String verificationCode;
  SmsPage(this.verificationCode);

  @override
  State<SmsPage> createState() => _SmsPageState();
}

class _SmsPageState extends State<SmsPage> {
  
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final TextEditingController pinputController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(229, 229, 229, 1),
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios, color: Colors.black)),
        title: Text(
          "Back",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
        ),
      ),
      body: Container(
        child: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 100.h),
              Container(
                width: 258.w,
                child: Center(
                    child: Text(
                  "Enter verification code",
                  style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w700),
                )),
              ),
              SizedBox(height: 10.h),
              Container(
                width: 141.w,
                child: Text(
                  "Enter OPT code send to your mobile number",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color.fromRGBO(180, 180, 180, 1),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(height: 37.h),
              Container(
                  width: 260.w,
                  height: 50.h,
                  child: Pinput(
                    length: 6,
                      onChanged: (value) {
                        // code = value;
                        value == pinputController
                            ? Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomePage()),
                                (route) => false)
                            : print("--");
                      },
                      controller: pinputController)),
              SizedBox(height: 10.87.h),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 52.w),
                    width: 147.w,
                    height: 16.h,
                    child: Text(
                      "The code didn't come?",
                      style: TextStyle(
                          fontSize: 10.sp,
                          color: Color.fromRGBO(180, 180, 180, 1)),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                        alignment: Alignment.center,
                        width: 110.w,
                        height: 19.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3.r),
                            color: Color.fromRGBO(255, 204, 0, 1)),
                        child: Text(
                          "Send again",
                          style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 1),
                              fontSize: 10.sp),
                        )),
                  )
                ],
              ),
            ],
          ),
        )),
      ),
    );
  }
  
  sendCode() async {
    if (true) {
      PhoneAuthCredential _phoneCredential = PhoneAuthProvider.credential(  
          verificationId: widget.verificationCode,
          smsCode: pinputController.text);
      var _authCredential =
          await _firebaseAuth.signInWithCredential(_phoneCredential);
      if (_authCredential.user != null) {
        await Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => CarsPage()));
      }
    }
  }  
}
