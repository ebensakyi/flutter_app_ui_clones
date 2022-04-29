// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

const TextStyle _textStyle = TextStyle(
    fontSize: 40.0,
    fontWeight: FontWeight.bold,
    letterSpacing: 2,
    fontStyle: FontStyle.italic);

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  List<Widget> pages = const [
    Text("Home", style: _textStyle),
    Text("Search", style: _textStyle),
    Text("Spaces", style: _textStyle),
    Text("Alerts", style: _textStyle),
    Text("Chat", style: _textStyle)
  ];

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
        body: ListView.separated(
          separatorBuilder: ((context, index) => const Divider(
                color: Colors.black38,
              )),
          itemCount: 200,
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/images/profile.png"),
              ),
              title: Text(
                'Timeless Praise',
                style: TextStyle(
                    color: Colors.black87, fontWeight: FontWeight.w500),
              ),
              trailing: IconButton(
                onPressed: () {
                  debugPrint("");
                },
                icon: Icon(Icons.more_vert),
                color: Colors.black38,
              ),
              subtitle: Container(
                color: Colors.grey.shade200,
                child: Text(
                  '''Lorem ipsum dolor sit amet, consur adipiscing elit. Quisque nisl eros, 
pulvinar facilisis justo mollis, auctor consequat urna. ''',
                  style: TextStyle(
                      color: Colors.black87, fontWeight: FontWeight.w300),
                ),
              ),
              selected: true,
            );
          },
          // children: const [
          //   ListTile(
          //     leading: CircleAvatar(
          //       backgroundImage: AssetImage("assets/images/clean.png"),
          //     ),
          //   ),
          //   divider:  true,
          // ],
        ));
  }
}

Widget bottomNavigator() {
  return BottomNavigationBar(
    items: const [
      BottomNavigationBarItem(
        icon: FaIcon(
          FontAwesomeIcons.house,
          color: Colors.black87,
        ),
        label: '',
      ),
      BottomNavigationBarItem(
        icon: FaIcon(
          FontAwesomeIcons.magnifyingGlass,
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
        icon: FaIcon(
          FontAwesomeIcons.bell,
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
