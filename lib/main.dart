import 'package:flutter_application_1/Exports.dart';
import 'package:flutter_application_1/exports.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false, //quita lo de debug
      routes: {
        '/homepage': (context) => const Home(),
        '/profilepage': (context) => const Profile()
      },
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Material App Bar'),
            backgroundColor: Colors.red,
          ),
          body: listView2(),
          bottomNavigationBar: const Footer()),
    );
  }
}
