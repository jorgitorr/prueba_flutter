import 'package:flutter_application_1/exports.dart';

class Footer extends StatefulWidget {
  const Footer({
    super.key,
  });

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  var currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      onDestinationSelected: (int index) {
        setState(() {
          currentPageIndex = index;
        });
      },
      destinations: const [
        NavigationDestination(
            icon: Icon(Icons.home_outlined),
            label: "Home",
            selectedIcon: Icon(Icons.home)),
        NavigationDestination(
            icon: Icon(Icons.person_2_outlined),
            label: "Profile",
            selectedIcon: Icon(Icons.person)),
        NavigationDestination(
          icon: Badge(
              label: Text('2'), child: Icon(Icons.messenger_outline_sharp)),
          selectedIcon: Badge(
            label: Text("2"),
            child: Icon(Icons.message),
          ),
          label: "Messages",
        )
      ],
      selectedIndex: currentPageIndex,
    );
  }
}
