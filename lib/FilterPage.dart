import 'package:l/libruary.dart';

class FilterPage extends StatefulWidget {
  const FilterPage({super.key});

  @override
  State<FilterPage> createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  RangeValues values = RangeValues(0, 1000);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(229, 229, 229, 1),
      appBar: AppBar(
        title: Text(
          "Filter",
          style: TextStyle(
              color: Colors.black,
              fontSize: 20.sp,
              fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.black,
        ),
        backgroundColor: const Color.fromRGBO(229, 229, 229, 1),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                      margin: EdgeInsets.symmetric(vertical: 10.h),
                      child: Text(
                        "Data",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400),
                      ))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Text(
                      "From",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  Container(
                    child: Text(
                      "To",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.r),
                        border: Border.all(
                            color: Color.fromRGBO(180, 180, 180, 1), width: 1)),
                    width: 150.w,
                    height: 45.h,
                    child: ListTile(
                      title: Container(
                        child: Text(
                          "Choose",
                          style: TextStyle(
                              color: Color.fromRGBO(180, 180, 180, 1),
                              fontSize: 14),
                        ),
                      ),
                      leading: Container(
                          width: 16.w,
                          height: 16.h,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/searchIcon.png")))),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.r),
                        border: Border.all(
                            color: Color.fromRGBO(180, 180, 180, 1), width: 1)),
                    width: 150.w,
                    height: 45.h,
                    child: ListTile(
                      title: Container(
                        child: Text(
                          "Choose",
                          style: TextStyle(
                              color: Color.fromRGBO(180, 180, 180, 1),
                              fontSize: 14.sp),
                        ),
                      ),
                      leading: Container(
                          width: 16.w,
                          height: 16.h,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/searchIcon.png")))),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10.h),
                    child: Text("Model",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400)),
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
                              color: Color.fromRGBO(180, 180, 180, 1),
                              width: 1)),
                      margin: EdgeInsets.symmetric(horizontal: 6.4.w),
                      alignment: Alignment.center,
                      width: 66.w,
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
                    margin: EdgeInsets.symmetric(vertical: 10.h),
                    child: Text("Class",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400)),
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 5.w),
                height: 64.h,
                child: ListView.builder(
                  itemCount: Info.CarsClass.length,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 90.w,
                      height: 64.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(
                              color: Color.fromRGBO(180, 180, 180, 1),
                              width: 1)),
                      margin: EdgeInsets.symmetric(horizontal: 6.4.w),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 30.w,
                            height: 23.h,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(Info.CarsClass[index]))),
                          ),
                          Text(
                            Info.CarsClassText[index],
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    );
                  },
                  scrollDirection: Axis.horizontal,
                ),
              ),
              RangeSlider(
                  min: 0,
                  max: 1000,
                  divisions: 20,
                  activeColor: Colors.black,
                  labels: RangeLabels(values.start.round().toString(),
                      values.end.round().toString()),
                  values: values,
                  onChanged: (values) => setState(() => this.values = values)),
              Row(
                children: [
                  Text(
                    "Km",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400),
                  )
                ],
              ),
              Container(
                height: 40.h,
                child: ListView.builder(
                  itemCount: Info.Km.length,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 75.w,
                      height: 30.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(
                              color: Color.fromRGBO(180, 180, 180, 1),
                              width: 1)),
                      margin: EdgeInsets.symmetric(horizontal: 6.4.w),
                      alignment: Alignment.center,
                      child: Container(
                        alignment: Alignment.center,
                        width: 70.w,
                        height: 20.h,
                        child: Text(
                          Info.Km[index],
                          style: TextStyle(fontSize: 12.sp),
                        ),
                      ),
                    );
                  },
                  scrollDirection: Axis.horizontal,
                ),
              ),
              Row(
                children: [
                  Container(
                      margin: EdgeInsets.symmetric(vertical: 10.h),
                      child: Text(
                        "Body type",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400),
                      ))
                ],
              ),
              Container(
                height: 64.h,
                child: ListView.builder(
                  itemCount: Info.CarsBrand.length,
                  itemBuilder: (context, index) {
                    return Container(
                      alignment: Alignment.center,
                      width: 69.w,
                      height: 62.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6.r),
                          border: Border.all(
                              color: Color.fromRGBO(180, 180, 180, 1),
                              width: 1)),
                      margin: EdgeInsets.symmetric(horizontal: 6.w),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 60.w,
                            height: 40.h,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(Info.bodythype[index]))),
                          ),
                          Text(
                            Info.bodythypeText[index],
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    );
                  },
                  scrollDirection: Axis.horizontal,
                ),
              ),

             Container(
              margin: EdgeInsets.symmetric(vertical: 20.h),
                    width: 335,
                    height: 54,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Color.fromRGBO(39,39,39,1),
                            ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CreatAcaunt()));
                        },
                        child: Text("Apply filter",
                            style: TextStyle(
                                color: Colors.white))))

            ],
          ),
        ),
      ),
    );
  }
}
