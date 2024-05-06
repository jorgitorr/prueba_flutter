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
          body: const listView(),
          bottomNavigationBar: const Footer()),
    );
  }
}

class listView extends StatelessWidget {
  const listView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return Dismissible(
            key: UniqueKey(),
            onDismissed: (direction) {
              if (direction == DismissDirection.startToEnd) {
                print("De inicio a final");
              }
            },
            child: Container(
              color: Colors.blueAccent,
              padding: const EdgeInsets.only(top: 24),
              margin: const EdgeInsets.only(top: 10),
              child: const Center(
                  child: Text("Hola MUNDO", style: TextStyle(fontSize: 20))),
            ),
          );
        });
  }
}
