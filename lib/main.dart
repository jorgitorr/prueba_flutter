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
          body: //const MyBody()
              Center(
            child: Column(
              children: [
                SizedBox(
                  height: 250,
                  width: 250,
                  child: Image.asset('assets/hollow-knight.webp'),
                ),
                SizedBox(
                  height: 250,
                  width: 250,
                  child: Image.network(
                      'https://cdn.pixabay.com/photo/2020/12/14/15/46/touch-5831241_640.jpg'),
                )
              ],
            ),
          ),
          bottomNavigationBar: NavigationBar(
            destinations: const [
              NavigationDestination(
                icon: Icon(Icons.home_outlined),
                label: "Home",
                selectedIcon: Icon(Icons.home),
              ),
              NavigationDestination(
                icon: Icon(Icons.person_2_outlined),
                label: "Profile",
                selectedIcon: Icon(Icons.person),
              )
            ],
          )),
    );
  }
}
