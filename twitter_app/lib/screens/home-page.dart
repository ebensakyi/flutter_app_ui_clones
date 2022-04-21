import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 1,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                _scaffoldKey.currentState?.openDrawer();
                debugPrint("onTap: ");
              },
              child: getRoundImage("assets/images/profile.png", 34.0),
            ),
            const FaIcon(
              FontAwesomeIcons.twitter,
              color: Colors.blue,
            ),
            //FaIcon(FontAwesomeIcons.star)
            getImageAsset("assets/images/clean.png", 34.0)
          ],
        ),
        centerTitle: true,
      ),
      bottomNavigationBar: bottomNavigator(),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            // const DrawerHeader(
            //   child: Text(
            //     'Side menu',
            //     style: TextStyle(color: Colors.white, fontSize: 25),
            //   ),
            //   decoration: BoxDecoration(
            //       color: Colors.green,
            //       image: DecorationImage(
            //           fit: BoxFit.fill,
            //           image: AssetImage('assets/images/cover.jpg'))),
            // ),
            ListTile(
              leading: const Icon(Icons.input),
              title: const Text('Welcome'),
              onTap: () => {},
            ),
            ListTile(
              leading: const Icon(Icons.verified_user),
              title: const Text('Profile'),
              onTap: () => {Navigator.of(context).pop()},
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () => {Navigator.of(context).pop()},
            ),
            ListTile(
              leading: const Icon(Icons.border_color),
              title: const Text('Feedback'),
              onTap: () => {Navigator.of(context).pop()},
            ),
            ListTile(
              leading: const Icon(Icons.exit_to_app),
              title: const Text('Logout'),
              onTap: () => {Navigator.of(context).pop()},
            ),
          ],
        ),
      ),
    );
  }
}

Widget bottomNavigator() {
  return BottomNavigationBar(
    items: const [
      BottomNavigationBarItem(
        icon: Icon(
          Icons.home,
          color: Colors.black87,
        ),
        label: '',
      ),
      BottomNavigationBarItem(
        icon: Icon(
          Icons.search,
          color: Colors.black87,
        ),
        label: '',
      ),
      BottomNavigationBarItem(
        icon: FaIcon(
          FontAwesomeIcons.microphoneLines,
          color: Colors.black87,
        ),
        label: '',
      ),
      BottomNavigationBarItem(
        icon: Icon(
          Icons.notifications_none_outlined,
          color: Colors.black87,
        ),
        label: '',
      ),
      BottomNavigationBarItem(
        icon: Icon(
          Icons.email_outlined,
          color: Colors.black87,
        ),
        label: '',
      ),
    ],
  );
}

Widget getImageAsset(path, size) {
  AssetImage assetImage = AssetImage(path);
  Image image = Image(
      image: assetImage,
      width: size,
      height: size,
      color: Colors.grey.shade800);
  var _minimumPadding = 16;
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

Widget getRoundImage(path, size) {
  AssetImage assetImage = AssetImage(path);
  Image image = Image(
    image: assetImage,
    width: size,
    height: size,
  );

  return Container(
    child: image,
    margin: const EdgeInsets.fromLTRB(20.0, 10.0, 15.0, 10.0),
    decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(20.0))),
  );
}
