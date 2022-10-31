import 'package:flutter/material.dart';
import 'package:top_care/presention/splash/splash_veiw.dart';
import 'package:top_care/recourse/routeing.dart';

void main() {
  runApp(const MyApp());
}

//2A7DFE
//69A4F7
//023982
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteGeneratour.getRoute,
      initialRoute: Routes.splashRoute,
    );
  }
}
