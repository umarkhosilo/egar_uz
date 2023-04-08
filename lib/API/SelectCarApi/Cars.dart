import 'package:l/API/SelectCarApi/KatalogCars/LandCruiser200.dart';
import 'package:l/libruary.dart';

import 'KatalogCars/BmwM5Sport.dart';
import 'KatalogCars/Comaro.dart';
import 'KatalogCars/Corvette.dart';
import 'KatalogCars/MersedeBenz220.dart';
import 'KatalogCars/TayotaPrado.dart';

class CarsPage extends StatefulWidget {
  const CarsPage({super.key});

  @override
  State<CarsPage> createState() => _CarsPageState();
}

class _CarsPageState extends State<CarsPage> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Provider.of<SelectProvider>(context, listen: false).getdata();
    });
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(229, 229, 229, 1),
      body: Consumer<SelectProvider>(
          builder: (BuildContext context, snapshot, child) {
        if (snapshot.isLoading) {
          return Center(
            child: CircularProgressIndicator(
              color: Colors.green,
              strokeWidth: 5.w,
            ),
          );
        }
        return SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 20.w,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                        margin: EdgeInsets.symmetric(vertical: 40.h),
                        child: Text(
                          "Select your car",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w700),
                        ))
                  ],
                ),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.r),
                          border: Border.all(
                              color: Color.fromRGBO(180, 180, 180, 1),
                              width: 1)),
                      width: 250.w,
                      height: 45.h,
                      child: TextFormField(
                        cursorColor: Color.fromRGBO(39, 39, 39, 1),
                        cursorWidth: 1,
                        decoration: InputDecoration(
                          prefixIcon: Container(
                              width: 16.w,
                              height: 16.h,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/searchIcon.png")))),
                          hintText: "Search",
                          hintStyle: TextStyle(
                              color: Color.fromRGBO(180, 180, 180, 1),
                              fontSize: 14),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 19.w,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FilterPage()));
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: 45.w,
                        height: 45.h,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/FilterIcon.png")),
                            borderRadius: BorderRadius.circular(8.r),
                            border: Border.all(
                                color: Color.fromRGBO(180, 180, 180, 1),
                                width: 1.w)),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10.h),
                      child: Text(
                        "Car brends",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w500),
                      ),
                    )
                  ],
                ),
                Container(
                  height: 64.h,
                  child: ListView.builder(
                    itemCount: Info.CarsBrand.length,
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6.r),
                            border: Border.all(
                                color: Color.fromRGBO(180, 180, 180, 1),
                                width: 1)),
                        margin: EdgeInsets.symmetric(horizontal: 6.4.w),
                        alignment: Alignment.center,
                        width: 68.w,
                        height: 64.h,
                        child: Container(
                          width: 55.w,
                          height: 55.h,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(Info.CarsBrand[index]))),
                        ),
                      );
                    },
                    scrollDirection: Axis.horizontal,
                  ),
                ),

                // Hot offers
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10.h),
                  child: Row(
                    children: [
                      Text(
                        "Hot offers",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 18.sp),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 130,
                  child: ListView(scrollDirection: Axis.horizontal, children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LandCruiser200()));
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 5.w),
                        width: 150.w,
                        height: 100.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6.r),
                            border: Border.all(
                                color: Color.fromRGBO(180, 180, 180, 1),
                                width: 1)),
                        child: Column(
                          children: [
                            Container(
                              width: 120.w,
                              height: 66.h,
                              child: Image(
                                image: AssetImage("assets/LandCruiser200.png"),
                              ),
                            ),
                            SizedBox(
                              height: 8.h,
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 20.w),
                              child: Text(
                                "Land Cruiser 200",
                                style: TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w700),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MersedesBenz220()));
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 5.w),
                        width: 150.w,
                        height: 100.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6.r),
                            border: Border.all(
                                color: Color.fromRGBO(180, 180, 180, 1),
                                width: 1)),
                        child: Column(
                          children: [
                            Container(
                              width: 120.w,
                              height: 66.h,
                              child: Image(
                                image: AssetImage("assets/mersedesbenz222.png"),
                              ),
                            ),
                            SizedBox(
                              height: 8.h,
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 20.w),
                              child: Text(
                                "Mercedes-Benz 220",
                                style: TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LandCruiser200()));
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 5.w),
                        width: 150.w,
                        height: 100.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6.r),
                            border: Border.all(
                                color: Color.fromRGBO(180, 180, 180, 1),
                                width: 1)),
                        child: Column(
                          children: [
                            Container(
                              width: 120.w,
                              height: 66.h,
                              child: Image(
                                image: AssetImage("assets/LandCruiser200.png"),
                              ),
                            ),
                            SizedBox(
                              height: 8.h,
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 20.w),
                              child: Text(
                                "Land Cruiser 200",
                                style: TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w700),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MersedesBenz220()));
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 5.w),
                        width: 150.w,
                        height: 100.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6.r),
                            border: Border.all(
                                color: Color.fromRGBO(180, 180, 180, 1),
                                width: 1)),
                        child: Column(
                          children: [
                            Container(
                              width: 120.w,
                              height: 66.h,
                              child: Image(
                                image: AssetImage("assets/mersedesbenz222.png"),
                              ),
                            ),
                            SizedBox(
                              height: 8.h,
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 20.w),
                              child: Text(
                                "Mercedes-Benz 220",
                                style: TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ]),
                ),

                //Convenient offers

                Container(
                  margin: EdgeInsets.symmetric(vertical: 10.h),
                  child: Row(
                    children: [
                      Text(
                        "Convenient offers",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 18.sp),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 130,
                  child: ListView(scrollDirection: Axis.horizontal, children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BmwM5Sport()));
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 5.w),
                        width: 150.w,
                        height: 100.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6.r),
                            border: Border.all(
                                color: Color.fromRGBO(180, 180, 180, 1),
                                width: 1)),
                        child: Column(
                          children: [
                            Container(
                              width: 120.w,
                              height: 66.h,
                              child: Image(
                                image:
                                    AssetImage("assets/BMWM5Sportedition.png"),
                              ),
                            ),
                            SizedBox(
                              height: 8.h,
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 20.w),
                              child: Text(
                                "BMW M5 Sport",
                                style: TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w700),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => TayotaPrado()));
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 5.w),
                        width: 150.w,
                        height: 100.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6.r),
                            border: Border.all(
                                color: Color.fromRGBO(180, 180, 180, 1),
                                width: 1)),
                        child: Column(
                          children: [
                            Container(
                              width: 120.w,
                              height: 66.h,
                              child: Image(
                                image: AssetImage("assets/ToyotaPrado.png"),
                              ),
                            ),
                            SizedBox(
                              height: 8.h,
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 20.w),
                              child: Text(
                                "Tayota Prado",
                                style: TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BmwM5Sport()));
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 5.w),
                        width: 150.w,
                        height: 100.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6.r),
                            border: Border.all(
                                color: Color.fromRGBO(180, 180, 180, 1),
                                width: 1)),
                        child: Column(
                          children: [
                            Container(
                              width: 120.w,
                              height: 66.h,
                              child: Image(
                                image:
                                    AssetImage("assets/BMWM5Sportedition.png"),
                              ),
                            ),
                            SizedBox(
                              height: 8.h,
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 20.w),
                              child: Text(
                                "BMW M5 Sport",
                                style: TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w700),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => TayotaPrado()));
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 5.w),
                        width: 150.w,
                        height: 100.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6.r),
                            border: Border.all(
                                color: Color.fromRGBO(180, 180, 180, 1),
                                width: 1)),
                        child: Column(
                          children: [
                            Container(
                              width: 120.w,
                              height: 66.h,
                              child: Image(
                                image: AssetImage("assets/ToyotaPrado.png"),
                              ),
                            ),
                            SizedBox(
                              height: 8.h,
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 20.w),
                              child: Text(
                                "Tayota Prado",
                                style: TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ]),
                ),

                Container(
                  margin: EdgeInsets.symmetric(vertical: 10.h),
                  child: Row(
                    children: [
                      Text(
                        "Last added",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 18.sp),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 130,
                  child: ListView(scrollDirection: Axis.horizontal, children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ChevroletCorvette()));
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 5.w),
                        width: 150.w,
                        height: 100.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6.r),
                            border: Border.all(
                                color: Color.fromRGBO(180, 180, 180, 1),
                                width: 1)),
                        child: Column(
                          children: [
                            Container(
                              width: 120.w,
                              height: 66.h,
                              child: Image(
                                image:
                                    AssetImage("assets/ChevroletCorvette.png"),
                              ),
                            ),
                            SizedBox(
                              height: 8.h,
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 20.w),
                              child: Text(
                                "Chevrolet Corvette",
                                style: TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w700),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ChevroletComaro()));
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 5.w),
                        width: 150.w,
                        height: 100.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6.r),
                            border: Border.all(
                                color: Color.fromRGBO(180, 180, 180, 1),
                                width: 1)),
                        child: Column(
                          children: [
                            Container(
                              width: 120.w,
                              height: 66.h,
                              child: Image(
                                image: AssetImage("assets/ChevroletCamaro.png"),
                              ),
                            ),
                            SizedBox(
                              height: 8.h,
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 20.w),
                              child: Text(
                                "Chevrolet Camaro",
                                style: TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ChevroletCorvette()));
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 5.w),
                        width: 150.w,
                        height: 100.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6.r),
                            border: Border.all(
                                color: Color.fromRGBO(180, 180, 180, 1),
                                width: 1)),
                        child: Column(
                          children: [
                            Container(
                              width: 120.w,
                              height: 66.h,
                              child: Image(
                                image:
                                    AssetImage("assets/ChevroletCorvette.png"),
                              ),
                            ),
                            SizedBox(
                              height: 8.h,
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 20.w),
                              child: Text(
                                "Chevrolet Corvette",
                                style: TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w700),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ChevroletComaro()));
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 5.w),
                        width: 150.w,
                        height: 100.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6.r),
                            border: Border.all(
                                color: Color.fromRGBO(180, 180, 180, 1),
                                width: 1)),
                        child: Column(
                          children: [
                            Container(
                              width: 120.w,
                              height: 66.h,
                              child: Image(
                                image: AssetImage("assets/ChevroletCamaro.png"),
                              ),
                            ),
                            SizedBox(
                              height: 8.h,
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 20.w),
                              child: Text(
                                "Chevrolet Camaro",
                                style: TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ]),
                ),
                SizedBox(
                  height: 30.h,
                )
              ],
            ),
          ),
        );
      }),
    );
  }
}
