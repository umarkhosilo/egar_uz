import 'package:l/libruary.dart';

class CarsPage extends StatefulWidget {
  const CarsPage({super.key});

  @override
  State<CarsPage> createState() => _CarsPageState();
}

class _CarsPageState extends State<CarsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(229, 229, 229, 1),
      body: SingleChildScrollView(
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
                            color: Color.fromRGBO(180, 180, 180, 1), width: 1)),
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
                                    image: AssetImage("assets/searchIcon.png")))),
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
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => FilterPage()));
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
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(
                              color: Color.fromRGBO(180, 180, 180, 1), width: 1)),
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
              Row(
                children: [
                  Container(
                      margin: EdgeInsets.symmetric(vertical: 26.h),
                      child: Text(
                        "Hot offers",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ))
                ],
              ),
            
                 Container(
                  width: double.infinity,
                  height: 270.h,
                child: GridView.builder(
                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
                   crossAxisSpacing: 20.r,
                   mainAxisSpacing: 20.h,
                   ),
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 158.w,
                      height: 90.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.r),
                        border: Border.all(
                            color: Color.fromRGBO(180, 180, 180, 1), width: 1)),
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.symmetric(vertical: 8.h),
                                  width: 123.w,
                                  height: 66.h,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage("assets/LandCruiser200.png")
                                    )
                                  ),
                                ),
                                Container(
                                  child: Text("Land Cruiser 200",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 12.sp),),
                                )
                              ],
                            ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
