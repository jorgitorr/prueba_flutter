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
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Material App Bar'),
            backgroundColor: Colors.red,
          ),
          body: Profile(),
          bottomNavigationBar: Footer()),
    );
  }
}

class Profile extends StatelessWidget {
  const Profile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        children: [
          CircleAvatar(
            radius: 100,
            backgroundImage: AssetImage('assets/hollow-knight.webp'),
          ),
          Column(
            children: [
              Text(
                "Paco",
                style: TextStyle(fontSize: 20),
              )
            ],
          )
        ],
      ),
    );
  }
}
