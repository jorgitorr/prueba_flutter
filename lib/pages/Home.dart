import 'package:flutter_application_1/exports.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [Text("Esto es el home")],
        )
      ],
    );
  }
}
