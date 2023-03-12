import 'package:firebase_core/firebase_core.dart';

import 'buttonbar.dart';
import 'libruary.dart';
 main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
 
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider<RantelesProvider>(create: ((context) => RantelesProvider())),
   
  ], child: const MyApp()));
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

