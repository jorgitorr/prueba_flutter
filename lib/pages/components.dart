import 'package:flutter_application_1/exports.dart';

class Footer extends StatelessWidget {
  const Footer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      destinations: const [
        NavigationDestination(
          icon: Icon(Icons.home_outlined),
          label: "Home",
          selectedIcon: Icon(Icons.home),
        ),
        NavigationDestination(
            icon: Icon(Icons.person_2_outlined),
            label: "Profile",
            selectedIcon: Icon(Icons.person)),
        NavigationDestination(
          icon: Badge(
            label: Text('2'),
            child: Icon(Icons.messenger_outline_sharp),
          ),
          label: "Messages",
        )
      ],
    );
  }
}
