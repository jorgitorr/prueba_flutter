import 'package:flutter_application_1/exports.dart';

class MyBody extends StatelessWidget {
  const MyBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(onPressed: () {}, child: const Icon(Icons.add_a_photo)),
        Container(color: Colors.blue, width: 150, height: 150),
        //Contador(),
        Container(
          color: Colors.red,
          width: 150,
          height: 150,
          child: const Text("Hola mundo"),
        ),
        Container(
          color: Colors.black,
          height: 150,
          child: const Text(
            "Buenas",
            style: TextStyle(fontSize: 40),
          ),
        ),
      ],
    );
  }
}

//statefull puede cambiar y stateless no

class Contador extends StatefulWidget {
  const Contador({super.key});

  @override
  State<Contador> createState() => _ContadorState();
}

//clase privada -> donde haces el codigo

class _ContadorState extends State<Contador> {
  var contador = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 100,
              height: 100,
              child: Text(
                textAlign: TextAlign.center,
                "$contador",
                style: const TextStyle(fontSize: 50),
              ),
            ),
            Row(
              children: [
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        contador++;
                      });
                    },
                    child: const SizedBox(
                      width: 75,
                      height: 75,
                      child: Icon(Icons.add, size: 40),
                    )),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        contador--;
                      });
                    },
                    child: const SizedBox(
                      width: 75,
                      height: 75,
                      child: Icon(Icons.minimize_outlined, size: 40),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
