import '../../../libruary.dart';
import '../chekout.dart';

class BmwM5Sport extends StatefulWidget {
  const BmwM5Sport({super.key});

  @override
  State<BmwM5Sport> createState() => _BmwM5SportState();
}

class _BmwM5SportState extends State<BmwM5Sport> {
  List<String> images = ["assets/BMWM5Sportedition.png", "assets/BMWM5Sportedition.png"];
  String title = "BMW M5 Sport";
  String names = "BMW";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(229, 229, 229, 1),
        appBar: AppBar(
          title: Text(title,style: const TextStyle(color: Colors.black),),
          backgroundColor: const Color.fromRGBO(229, 229, 229, 1),
          elevation: .0,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back),
            color: Colors.black,
          ),
          actions: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.w),
              width: 17.w,
              height: 23.h,
              decoration: BoxDecoration(
                  image:
                      DecorationImage(image: AssetImage("assets/Saved.png"))),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            alignment: Alignment.topCenter,
            child: Column(children: [
              Container(
                width: 280.w,
                height: 179.h,
                child: PageView.builder(
                    itemCount: 2,
                    pageSnapping: true,
                    itemBuilder: (context, pagePosition) {
                      return Container(
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(images[pagePosition]))),
                      );
                    }),
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10.h),
                    alignment: Alignment.center,
                    width: 139.w,
                    height: 21.h,
                    color: Color.fromRGBO(255, 204, 0, 1),
                    child: Text(
                      title,
                      style: TextStyle(
                          fontWeight: FontWeight.w500, color: Colors.black),
                    ),
                  ),
                ],
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Container(
                  child: Text(
                    "E-class",
                    style:
                        TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w700),
                  ),
                ),
                Container(
                  child: Text(
                    "\$110/day",
                    style:
                        TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w700),
                  ),
                ),
              ]),
              Row(
                children: [
                  Container(
                    width: 17.w,
                    height: 17.h,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/Staricon.png"))),
                  ),
                  Container(
                      child: Text("5",
                          style: TextStyle(
                              color: Color.fromRGBO(217, 217, 217, 1),
                              fontSize: 16.sp))),
                  SizedBox(
                    width: 24,
                  ),
                  Container(
                    child: Text("24 rewievs",
                        style: TextStyle(
                            color: Color.fromRGBO(217, 217, 217, 1),
                            fontSize: 16.sp)),
                  )
                ],
              ),
              SizedBox(
                height: 28.h,
              ),
              Row(
                children: [
                  Text(
                    "Rent Duration",
                    style:
                        TextStyle(fontWeight: FontWeight.w700, fontSize: 16.sp),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10.h),
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
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Text(
                        "Color",
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 16.sp),
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      Text(
                        "Black",
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 16.sp),
                      ),
                      SizedBox(
                        height: 30.h,
                      )
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "Main options",
                    style:
                        TextStyle(fontWeight: FontWeight.w700, fontSize: 16.sp),
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    width: 160.w,
                    height: 19.h,
                    child: Row(
                      children: [
                        Icon(Icons.check),
                        Text(
                          "Bockup camera",
                          style: TextStyle(fontSize: 14.sp),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10.h),
                    width: 160.w,
                    height: 19.h,
                    child: Row(
                      children: [
                        Icon(Icons.check),
                        Text(
                          "Cruise control",
                          style: TextStyle(fontSize: 14.sp),
                        )
                      ],
                    ),
                  )
                ],
              ),
              Container(
                  margin: EdgeInsets.symmetric(vertical: 50.h),
                  width: 330.w,
                  height: 54.h,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Color.fromRGBO(39, 39, 39, 1),
                          side: const BorderSide(
                              width: 1,
                              color: Color.fromRGBO(180, 180, 180, 1))),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CheckOutPage(title,names)));
                      },
                      child: Text(
                        "Book now",
                        style:
                            TextStyle(color: Color.fromRGBO(229, 229, 229, 1)),
                      )))
            ]),
          ),
        ));
  }
}