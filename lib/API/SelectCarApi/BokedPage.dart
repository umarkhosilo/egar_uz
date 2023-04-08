import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:l/libruary.dart';

class BokedPage extends StatefulWidget {
  const BokedPage({super.key});

  @override
  State<BokedPage> createState() => _BokedPageState();
}

class _BokedPageState extends State<BokedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(229, 229, 229, 1),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                SizedBox(
                  height: 120.h,
                ),
                Container(
                  width: 139.w,
                  height: 139.h,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/CheckIcon.png"))),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 14.h),
                  child: Text(
                    "Car has been booked\nsuccessfully",
                    style: TextStyle(
                        color: Color.fromRGBO(39, 39, 39, 1),
                        fontWeight: FontWeight.w700,
                        fontSize: 20.sp),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 90.h),
              width: 328.w,
              height: 58.h,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromRGBO(39, 39, 39, 1)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => CarsPage()));
                  },
                  child: Text(
                    "Back to home",
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
