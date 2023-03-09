import 'buttonbar.dart';
import 'libruary.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
 Widget build(BuildContext context) {
    return  ScreenUtilInit(
        designSize: Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
              debugShowCheckedModeBanner: false, 
              home: ButtonNavigationBar());
        });
  }
}

