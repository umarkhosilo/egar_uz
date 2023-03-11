import 'package:l/libruary.dart';

class TripsPage extends StatefulWidget {
  const TripsPage({super.key});

  @override
  State<TripsPage> createState() => _TripsPageState();
}

class _TripsPageState extends State<TripsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(229, 229, 229, 1),
      appBar: AppBar(
        elevation: .0,
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(229, 229, 229, 1),
        title: Text("My rentals",
            style: TextStyle(
                color: Colors.black,
                fontSize: 20.sp,
                fontWeight: FontWeight.w700)),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 17.w),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 20.h),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    border: Border.all(
                        color: Color.fromRGBO(180, 180, 180, 1), width: 1)),
                width: 335.w,
                height: 420.h,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 20.w, vertical: 20.h),
                          child: Text(
                            "Tesla Model X",
                            style: TextStyle(
                                fontSize: 14.sp, fontWeight: FontWeight.w700),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: 270.w,
                      height: 140.h,
                      decoration: BoxDecoration(
                          color: Colors.pink,
                          image: DecorationImage(
                              image: AssetImage("assets/TeslaModelX.png"))),
                    ),
                    Row(
                      children: [



                        Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 27.w, vertical: 5.h),
                          width: 270.w,
                          height: 40.h,
                          child: ListTile(
                            leading: Container(
                              width: 20.w,
                              height: 20.h,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/KalendarIcon.png"))),
                            ),
                            title: Container(
                                child: Text(
                              "Date",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w700),
                            )),
                            trailing: Container(
                              child: Text(
                                "03 Dec,14:00-19:00",
                                style: TextStyle(
                                    fontSize: 8.sp,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                        width: 270.w,
                        height: 1,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Color.fromRGBO(217, 217, 217, 1)))),





                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 25.w, vertical: 5.h),
                          width: 270.w,
                          height: 40.h,
                          child: ListTile(
                            leading: Container(
                              width: 20.w,
                              height: 20.h,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/DuractionIcon.png"))),
                            ),
                            title: Container(
                                child: Text(
                              "Duration",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w700),
                            )),
                            trailing: Container(
                              child: Text(
                                "03 Hour",
                                style: TextStyle(
                                    fontSize: 8.sp,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                        width: 270.w,
                        height: 1,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Color.fromRGBO(217, 217, 217, 1)))),

 

                  Row(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 25.w, vertical: 5.h),
                          width: 270.w,
                          height: 40.h,
                          child: ListTile(
                            leading: Container(
                              width: 20.w,
                              height: 20.h,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/compassIcon.png"))),
                            ),
                            title: Container(
                                child: Text(
                              "Range",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w700),
                            )),
                            trailing: Container(
                              child: Text(
                                "60 Km",
                                style: TextStyle(
                                    fontSize: 8.sp,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                        width: 270.w,
                        height: 1,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Color.fromRGBO(217, 217, 217, 1)))),




                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 25.w, vertical: 5.h),
                          width: 270.w,
                          height: 40.h,
                          child: ListTile(
                            leading: Container(
                              width: 20.w,
                              height: 20.h,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/dollarIcon.png"))),
                            ),
                            title: Container(
                                child: Text(
                              "Cost",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w700),
                            )),
                            trailing: Container(
                              child: Text(
                                '70.00.c',
                                style: TextStyle(
                                    fontSize: 8.sp,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                        width: 270.w,
                        height: 1,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Color.fromRGBO(217, 217, 217, 1)))),



                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
