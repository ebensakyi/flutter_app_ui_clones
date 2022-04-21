import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
           getSmallImageAsset("assets/images/profile.png", 24.0),
            FaIcon(FontAwesomeIcons.twitter),
            Icon(Icons.favorite_border_outlined),
          ],
        ),
        centerTitle: true,
      ),
    );
  }
}



Widget getImageAsset(path, size) {
    AssetImage assetImage = AssetImage(path);
    Image image = Image(
      image: assetImage,
      width: size,
      height: size,
    );
    return Container(
      child: image,
      margin: EdgeInsets.all(_minimumPadding * 1),
    );
  }

  Widget getSmallImageAsset(path, size) {
    AssetImage assetImage = AssetImage(path);
    Image image = Image(
      image: assetImage,
      width: size,
      height: size,
    );
    return Container(
      child: image,
      margin: const EdgeInsets.fromLTRB(20.0, 10.0, 15.0, 10.0),
    );
  }

