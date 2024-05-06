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

class listView2 extends StatefulWidget {
  listView2({super.key});

  @override
  State<listView2> createState() => _listView2State();
}

class _listView2State extends State<listView2> {
  final List<int> imageId = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  final ScrollController scrollController = ScrollController();

  @override
  void initState() {
    super.initState();

    scrollController.addListener(() {
      if ((scrollController.position.pixels + 500) >=
          scrollController.position.maxScrollExtent) {
        addImage();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        controller: scrollController,
        itemCount: imageId.length,
        itemBuilder: (context, index) {
          return FadeInImage(
              width: double.infinity,
              height: 300,
              fit: BoxFit.cover,
              placeholder: const AssetImage('assets/hollow-knight.webp'),
              image: NetworkImage(
                  'https://picsum.photos/id/${imageId[index]}/200/200'));
        });
  }

  void addImage() {
    final lastId = imageId.last;
    imageId.addAll([1, 2, 3, 4, 5].map((e) => lastId + e));
    setState(() {});
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
