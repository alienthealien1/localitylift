import 'package:flutter/material.dart';
import 'package:localitylift/screens/extra/about.dart';
import 'package:localitylift/screens/extra/dashboard.dart';
import 'package:localitylift/screens/extra/home.dart';
import 'package:localitylift/screens/extra/profile.dart';
import 'package:sidebarx/sidebarx.dart';

class Sidebar extends StatefulWidget {
  const Sidebar({super.key});

  @override
  State<Sidebar> createState() => _SidebarState();
}

class _SidebarState extends State<Sidebar> {
  final List<Widget> screens = const [
    HomeScreen(),
    Dashboard(),
    Profile(),
    About(),
  ];

  int activeScreen = 0;
  // final scaffoldKey = GlobalKey<ScaffoldState>();
  final _controller = SidebarXController(selectedIndex: 0, extended: true);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("Sidebar"),
      ),
      drawer: SidebarX(
        controller: _controller,
        theme: SidebarXTheme(
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: canvasColor,
            borderRadius: BorderRadius.circular(20),
          ),
          hoverColor: scaffoldBackgroundColor,
          textStyle: TextStyle(color: Colors.white.withOpacity(0.7)),
          selectedTextStyle: const TextStyle(color: Colors.white),
          itemTextPadding: const EdgeInsets.only(left: 30),
          selectedItemTextPadding: const EdgeInsets.only(left: 30),
          itemDecoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: canvasColor),
          ),
          selectedItemDecoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: actionColor.withOpacity(0.37),
            ),
            gradient: const LinearGradient(
              colors: [accentCanvasColor, canvasColor],
            ),
            boxShadow: [
              const BoxShadow(
                color: Color.fromARGB(255, 36, 139, 223),
                blurRadius: 30,
              )
            ],
          ),
          iconTheme: IconThemeData(
            color: Colors.white.withOpacity(0.7),
            size: 20,
          ),
          selectedIconTheme: const IconThemeData(
            color: Colors.white,
            size: 20,
          ),
        ),
        extendedTheme: const SidebarXTheme(
          width: 200,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 51, 137, 236),
          ),
        ),
        footerDivider: divider,
        headerBuilder: (context, extended) {
          return SizedBox(
            height: 100,
            child: Padding(
              padding: const EdgeInsets.all(22.0),
              child: Image.asset(
                "assets/logo.jpg",
              ),
            ),
          );
        },
        items: [
          SidebarXItem(
            icon: Icons.home,
            label: 'Home',
            onTap: () {
              activeScreen = 0;
              setState(() {});
            },
          ),
          SidebarXItem(
            icon: Icons.dashboard,
            label: 'Dashboard',
            onTap: () {
              activeScreen = 1;
              setState(() {});
            },
          ),
          SidebarXItem(
            icon: Icons.dashboard,
            label: 'Profile',
            onTap: () {
              activeScreen = 2;
              setState(() {});
            },
          ),
          SidebarXItem(
            icon: Icons.dashboard,
            label: 'About Us',
            onTap: () {
              activeScreen = 3;
              setState(() {});
            },
          ),
        ],
      ),
      body: SafeArea(
        child: screens[activeScreen],
      ),
    );
  }
}

const primaryColor = Color.fromARGB(255, 76, 218, 223);
const canvasColor = Color.fromARGB(255, 56, 166, 230);
const scaffoldBackgroundColor = Color.fromARGB(255, 22, 131, 182);
const accentCanvasColor = Color.fromARGB(255, 68, 175, 194);
const white = Colors.white;
final actionColor = const Color(0xFF5F5FA7).withOpacity(0.6);
final divider = Divider(color: white.withOpacity(0.3), height: 1);