import 'package:flutter/material.dart';
import 'package:movies2/pages/home.dart';
import 'package:go_router/go_router.dart';
import 'package:movies2/pages/profile_screen.dart';
import 'package:movies2/pages/signed_page.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(const MyApp());
}

//Declare variables
final rootNavigatorKey= GlobalKey<NavigatorState>();
final shellNavigatorHomeKey= GlobalKey<NavigatorState>(debugLabel: 'Home');
final shellNavigatorProfileKey= GlobalKey<NavigatorState>(debugLabel: 'Profile');

//Create your Route
final router= GoRouter(
  navigatorKey: rootNavigatorKey,
  initialLocation: '/',
  redirect: (context, state) {
    if (state.matchedLocation == '/' &&
        !context.read<AppSettings>().detailsEnabled) {
        return '/profile';
    } else {
      return null;
    }
  },
  routes: [
    StatefulShellRoute.indexedStack(branches: [
        StatefulShellBranch(
          navigatorKey: shellNavigatorHomeKey,
          routes: [
            GoRoute(
                path: '/',
                builder: (context, state) => const MyHomePage(title: 'M O V I E S',),

              ),

          ],
        ),
        StatefulShellBranch(
          navigatorKey: shellNavigatorProfileKey,
          routes: [
            GoRoute(
                path: '/profile',
                builder: (context, state) => const ProfileScreen()),
            GoRoute(path: '/profile/signed',builder:(context,state)=> SignedPage(),),
    
          ],
        ),
      ],
      builder: (context, state, navigationShell) {
        return ScaffoldWithBottomBar(navigationShell: navigationShell);
      },
    )
  ],
);
class AppSettings extends ChangeNotifier {
  bool detailsEnabled = false;

  void toggleDetailsEnabled(bool value) {
    detailsEnabled = value;
    notifyListeners();
  }
}

class ScaffoldWithBottomBar extends StatefulWidget {
  const ScaffoldWithBottomBar({Key? key, required this.navigationShell})
      : super(key: key);
  final StatefulNavigationShell navigationShell;

  @override
  State<StatefulWidget> createState() {
    return _ScaffoldWithBottomBarState();
  }
}

class _ScaffoldWithBottomBarState extends State<ScaffoldWithBottomBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.navigationShell,
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.white,
        backgroundColor: Colors.red[900],
        onTap: _changeTab,
        currentIndex: widget.navigationShell.currentIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }

  void _changeTab(int value) {
    widget.navigationShell.goBranch(value,
        initialLocation: value == widget.navigationShell.currentIndex);
    }
  }


class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return  ChangeNotifierProvider<AppSettings>(
      create: (_) => AppSettings(),
      child: MaterialApp.router(
      routerConfig: router,
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      )
    );
  }
}



