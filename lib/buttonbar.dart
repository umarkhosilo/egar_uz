import 'package:l/profil.dart';
import 'package:l/saved.dart';
import 'package:l/My%20Rantales/trips.dart';

import 'libruary.dart';

class ButtonNavigationBar extends StatefulWidget {
  ButtonNavigationBar({Key? key}) : super(key: key);

  @override
  State<ButtonNavigationBar> createState() => _ButtonNavigationBarState();
}

class _ButtonNavigationBarState extends State<ButtonNavigationBar> {
  int _index = 0;
  List<Widget>? listpage;
  @override
  void initState() {
    // TODO: implement initState
    listpage = [CarsPage(), TripsPage(), SavedPage(), ProfilPage()];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: listpage![_index],
      bottomNavigationBar: BottomNavigationBar(
        
        backgroundColor: const Color.fromRGBO(229, 229, 229, 1),
        onTap: (e) {
          setState(() {
            _index = e;
          });
        },
        type:
            BottomNavigationBarType.fixed,
        currentIndex: _index,
        elevation: 0,
        selectedFontSize: 20.sp,
        iconSize: 0.sp,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            
            icon: 
          Container(
             width: 20.w,
             height: 20.h,
             decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/HomeIcon.png")
              )
             ),
          ), label: "Home"),
          BottomNavigationBarItem(icon: Container(
             width: 20.w,
             height: 20.h,
             decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/TripsIcon.png")
              )
             ),
          ), label: "Trips"),
          BottomNavigationBarItem(icon: Container(
             width: 20.w,
             height: 20.h,
             decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/SavedIcon.png")
              )
             ),
          ), label: "Saved"),
          BottomNavigationBarItem(icon: Container(
             width: 20.w,
             height: 20.h,
             decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/ProfilIcon.png")
              )
             ),
          ), label: "Profile"),
        ],
      ),
    );
  }
}
