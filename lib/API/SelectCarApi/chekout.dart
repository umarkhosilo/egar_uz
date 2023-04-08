import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:l/libruary.dart';

import 'BokedPage.dart';

class CheckOutPage extends StatefulWidget {
  String data;
  String names;
  CheckOutPage(this.data, this.names, {Key? key}) : super(key: key);

  @override
  State<CheckOutPage> createState() => _CheckOutPageState();
}

class _CheckOutPageState extends State<CheckOutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(229, 229, 229, 1),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.black,
        ),
        elevation: .0,
        backgroundColor: const Color.fromRGBO(229, 229, 229, 1),
        title: Text("Chek Out Details",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Colors.black)),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.h),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 20.h),
                    child: Text(
                      widget.names,
                      style: TextStyle(
                          fontWeight: FontWeight.w400, fontSize: 18.sp),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    child: Text(
                      widget.data,
                      style: TextStyle(
                          fontWeight: FontWeight.w700, fontSize: 18.sp),
                    ),
                  )
                ],
              ),
              Row(children: [
                Container(
                    margin: EdgeInsets.symmetric(vertical: 10.h),
                    width: 20.w,
                    height: 20.h,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/Staricon.png")))),
                SizedBox(width: 5.w),
                Container(
                  child: Text(
                    "5",
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                        color: Color.fromRGBO(217, 217, 217, 1)),
                  ),
                )
              ]),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10.h),
                    child: Text("Minimal driver age:",
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w700,
                        )),
                  ),
                  SizedBox(width: 5.w),
                  Text(
                    "23",
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                        color: Color.fromRGBO(217, 217, 217, 1)),
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10.h),
                    child: Text(
                      "Deposit:",
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  SizedBox(width: 5.w),
                  Text(
                    "500\$",
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                        color: Color.fromRGBO(217, 217, 217, 1)),
                  )
                ],
              ),
              Row(children: [
                Container(
                    margin: EdgeInsets.symmetric(vertical: 10.h),
                    child: Text("Price from:",
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w700,
                        ))),
                SizedBox(width: 5.w),
                Text("100 USD / day",
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                        color: Color.fromRGBO(217, 217, 217, 1)))
              ]),
              Row(children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10.h),
                  child: Text("Rent Duration:",
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w700,
                      )),
                )
              ]),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Text(
                      "From: 23 dec 2021",
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(217, 217, 217, 1)),
                    ),
                  ),
                  Container(
                    child: Text(
                      "To: 28 dec 2021",
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(217, 217, 217, 1)),
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Container(
                          child: Text("Edit",
                              style: TextStyle(
                                  color: Color.fromRGBO(217, 217, 217, 1),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 10.sp)),
                        ),
                        Container(
                          width: 16.w,
                          height: 16.h,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/Editicon.png"))),
                        )
                      ],
                    ),
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.h),
                child: Row(
                  children: [
                    Container(
                      child: Text(
                        "Payment Method:",
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 18.sp),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Text("Uzcard",
                          style: TextStyle(
                              color: Color.fromRGBO(217, 217, 217, 1),
                              fontWeight: FontWeight.w700,
                              fontSize: 14.sp)),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Text("Edit",
                                style: TextStyle(
                                    color: Color.fromRGBO(217, 217, 217, 1),
                                    fontWeight: FontWeight.w700,
                                    fontSize: 10.sp)),
                          ),
                          Container(
                            width: 16.w,
                            height: 16.h,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/Editicon.png"))),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 20.h),
                    child: Text(
                      "Total Cost: 750\$",
                      style: TextStyle(
                          fontWeight: FontWeight.w700, fontSize: 18.sp),
                    ),
                  ),
                ],
              ),
              Container(
                width: 328.w,
                height: 58.h,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Color.fromRGBO(39, 39, 39, 1)),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => BokedPage()));
                    },
                    child: Text(
                      "Confirm booking",
                    )),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20.h),
                width: 328.w,
                height: 58.h,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Color.fromRGBO(229, 229, 229, 1),
                        side: BorderSide(
                            width: 1, color: Color.fromRGBO(180, 180, 180, 1))),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      "Candel",
                      style: TextStyle(color: Color.fromRGBO(39, 39, 39, 1)),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
