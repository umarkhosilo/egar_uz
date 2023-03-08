import 'libruary.dart';

class CreatAcaunt extends StatefulWidget {
  const CreatAcaunt({super.key});

  @override
  State<CreatAcaunt> createState() => _CreatAcauntState();
}

class _CreatAcauntState extends State<CreatAcaunt> {
  var maskFormatter = new MaskTextInputFormatter(
      mask: '+998 (##) ###-##-##',
      filter: {"#": RegExp(r'[0-9]')},
      type: MaskAutoCompletionType.lazy);

  Color buttoncolor = Color.fromRGBO(229, 229, 229, 1);
  bool usernamevalidation = false;
  bool userphonevalidetion = false;
  TextEditingController? usernamecontrol;
  TextEditingController? userphone;
  @override
  void initState() {
    userphone = TextEditingController();
    usernamecontrol = TextEditingController();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(229, 229, 229, 1),
      appBar: AppBar(
        elevation: .0,
        backgroundColor: const Color.fromRGBO(229, 229, 229, 1),
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            )),
        title: Text("Back", style: TextStyle(color: Colors.black)),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            SizedBox(
              height: 49.sp,
            ),
            Container(
              width: 193.w,
              height: 40.h,
              child: Text("Create account",
                  style: TextStyle(
                      color: Color.fromRGBO(39, 39, 39, 1),
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w700)),
            ),
            SizedBox(
              height: 50.h,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                      color: Color.fromRGBO(180, 180, 180, 1), width: 1)),
              width: 330.w,
              height: 54.h,
              child: TextFormField(
                onChanged: (e) {
                  if (e.length > 2) {
                    usernamevalidation = true;
                    print(usernamevalidation);
                  } else {
                    usernamevalidation = false;
                    print(usernamevalidation);
                  }

                  if (usernamevalidation == true &&
                      userphonevalidetion == true) {
                    Info.TextColor = Color.fromRGBO(229, 229, 229, 1);
                    buttoncolor = Color.fromRGBO(39, 39, 39, 1);
                  } else {
                    Info.TextColor = Color.fromRGBO(39, 39, 39, 1);
                    buttoncolor = Color.fromRGBO(229, 229, 229, 1);
                  }
                  setState(() {});
                },
                controller: usernamecontrol,
                cursorColor: Color.fromRGBO(39, 39, 39, 1),
                cursorWidth: 1,
                decoration: InputDecoration(
                  hintText: "Full Name",
                  hintStyle: TextStyle(
                      color: Color.fromRGBO(180, 180, 180, 1), fontSize: 14),
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                      color: Color.fromRGBO(180, 180, 180, 1), width: 1)),
              width: 330.w,
              height: 54.h,
              child: TextFormField(
                inputFormatters: [maskFormatter],
                onChanged: (e) {
                  if (e.length > 18) {
                    userphonevalidetion = true;
                    print(userphonevalidetion);
                  } else {
                    userphonevalidetion = false;
                    print(usernamevalidation);
                  }
                  if (usernamevalidation == true &&
                      userphonevalidetion == true) {
                    Info.TextColor = Color.fromRGBO(229, 229, 229, 1);
                    buttoncolor = Color.fromRGBO(39, 39, 39, 1);
                  } else {
                    Info.TextColor = Color.fromRGBO(39, 39, 39, 1);
                    buttoncolor = Color.fromRGBO(229, 229, 229, 1);
                  }
                  setState(() {});
                },
                keyboardType: TextInputType.number,
                controller: userphone,
                cursorColor: Colors.black,
                cursorWidth: 1,
                decoration: InputDecoration(
                  hintText: "+998 (_ _) _ _ _  _ _  _ _",
                  hintStyle: TextStyle(
                      color: Color.fromRGBO(180, 180, 180, 1), fontSize: 14),
                  border: InputBorder.none,
                ),
              ),
            ),

            SizedBox(
              height: 15.h,
            ),
            
            Container(
                width: 330.w,
                height: 54.h,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: buttoncolor,
                        side: const BorderSide(
                            width: 1, color: Color.fromRGBO(180, 180, 180, 1))),
                    onPressed: () {
                      setState(() {
                        if (usernamevalidation == true &&
                            userphonevalidetion == true) {
                          buttoncolor = Colors.black;
                        }
                      });
                    },
                    child: Text(
                      "Create account",
                      style: TextStyle(color: Info.TextColor),
                    )))
          ],
        ),
      ),
    );
  }
}
