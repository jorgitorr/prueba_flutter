import 'package:flutter_application_1/Exports.dart';

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
