import 'libruary.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(229, 229, 229, 1),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: Column(children: [
            SizedBox(
              height: 290,
            ),
            Column(
              children: [
                Container(
                  width: 282,
                  height: 100,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/EgarLogo.png"))),
                ),
                SizedBox(height: 220),
                Container(
                    width: 335,
                    height: 54,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Color.fromRGBO(39, 39, 39, 1)),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SingUp()));
                        },
                        child: Text("Sing in"))),
                SizedBox(
                  height: 10,
                ),
                Container(
                    width: 335,
                    height: 54,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Color.fromRGBO(229, 229, 229, 1),
                            side: const BorderSide(
                                width: 2,
                                color: Color.fromRGBO(39, 39, 39, 1))),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CreatAcaunt()));
                        },
                        child: Text("Sing up",
                            style: TextStyle(
                                color: Color.fromRGBO(39, 39, 39, 1)))))
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
