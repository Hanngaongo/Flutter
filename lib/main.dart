// main.dart
import 'package:bai/login.dart';
import 'package:bai/myproduct.dart';
// import 'package:bai/profile.dart';
import 'package:bai/screens/news_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:bai/home.dart';
import 'package:bai/myclassrom.dart';
import 'package:bai/myguide.dart';
import 'package:bai/myhotel.dart';
import 'change_color_app.dart';
import 'counter_app.dart';
import 'countdown_timer.dart';
import 'form_login.dart';
import 'form_register.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gộp nhiều bài',
      home: const HomeScreen(),
      routes: {
        '/bai1': (context) => const Home(),
        '/bai2': (context) => const Myclassrom(),
        '/bai3': (context) => const MyGuide(),
        '/bai4': (context) => const MyHotel(),
        '/bai5': (context) => const ChangeColorApp(),
        '/bai6': (context) => const CounterApp(),
        '/bai7': (context) => const CountdownTimer(),
        '/bai8': (context) => const FormLogin(),
        '/bai9': (context) => const FormRegister(),
        '/bai10': (context) => const MyProduct(),
        '/bai11': (context) => const NewsListScreen(),
        '/bai12': (context) =>  LoginPage(),
  
      },
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: const Text('Menu')),
      body: Column(
        children: [
          ListTile(
            leading: Icon(_isExpanded ? Icons.close : Icons.menu),
            title: const Text('DANH SÁCH BÀI'),
            onTap: () {
              setState(() {
                _isExpanded = !_isExpanded;
              });
            },
          ),
          if (_isExpanded)
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    title: const Text('Home'),
                    onTap: () => Navigator.pushNamed(context, '/bai1'),
                  ),
                  ListTile(
                    title: const Text('Myclassroom'),
                    onTap: () => Navigator.pushNamed(context, '/bai2'),
                  ),
                  ListTile(
                    title: const Text('MyGuide'),
                    onTap: () => Navigator.pushNamed(context, '/bai3'),
                  ),
                  ListTile(
                    title: const Text('MyHotel'),
                    onTap: () => Navigator.pushNamed(context, '/bai4'),
                  ),
                  ListTile(
                    title: const Text('ChangeColorApp'),
                    onTap: () => Navigator.pushNamed(context, '/bai5'),
                  ),
                  ListTile(
                    title: const Text('CounterApp'),
                    onTap: () => Navigator.pushNamed(context, '/bai6'),
                  ),
                  ListTile(
                    title: const Text('CountDownTimer'),
                    onTap: () => Navigator.pushNamed(context, '/bai7'),
                  ),
                  ListTile(
                    title: const Text('FormLogin'),
                    onTap: () => Navigator.pushNamed(context, '/bai8'),
                  ),
                  ListTile(
                    title: const Text('FormRegister'),
                    onTap: () => Navigator.pushNamed(context, '/bai9'),
                  ),
                  ListTile(
                    title: const Text('Store'),
                    onTap: () => Navigator.pushNamed(context, '/bai10'),
                  ),
                  ListTile(
                    title: const Text('NewBao'),
                    onTap: () => Navigator.pushNamed(context, '/bai11'),
                  ),
                  ListTile(
                    title: const Text('Login Profile'),
                    onTap: () => Navigator.pushNamed(context, '/bai12'),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}










// // main.dart
// import 'package:bai/login.dart';
// import 'package:bai/myproduct.dart';
// // import 'package:bai/profile.dart';
// import 'package:bai/screens/news_list_screen.dart';
// import 'package:flutter/material.dart';
// import 'package:bai/home.dart';
// import 'package:bai/myclassrom.dart';
// import 'package:bai/myguide.dart';
// import 'package:bai/myhotel.dart';
// import 'change_color_app.dart';
// import 'counter_app.dart';
// import 'countdown_timer.dart';
// import 'form_login.dart';
// import 'form_register.dart';



// void main() => runApp(const MyApp());

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Gộp nhiều bài',
//       home: const HomeScreen(),
//       routes: {
//         '/bai1': (context) => const Home(),
//         '/bai2': (context) => const Myclassrom(),
//         '/bai3': (context) => const MyGuide(),
//         '/bai4': (context) => const MyHotel(),
//         '/bai5': (context) => const ChangeColorApp(),
//         '/bai6': (context) => const CounterApp(),
//         '/bai7': (context) => const CountdownTimer(),
//         '/bai8': (context) => const FormLogin(),
//         '/bai9': (context) => const FormRegister(),
//         '/bai10': (context) => const MyProduct(),
//         '/bai11': (context) => const NewsListScreen(),
//         '/bai12': (context) =>  LoginPage(),
//       },
//     );
//   }
// }

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {
//   OverlayEntry? _overlayEntry;
//   late final AnimationController _controller = AnimationController(
//     vsync: this,
//     duration: const Duration(milliseconds: 250),
//   );

//   void _showOverlay() {
//     if (_overlayEntry != null) return;

//     _overlayEntry = OverlayEntry(builder: (context) {
//       return GestureDetector(
//         behavior: HitTestBehavior.translucent,
//         onTap: _removeOverlay,
//         child: Material(
//           color: Colors.transparent,
//           child: Stack(
//             children: [
//               Positioned(
//                 top: kToolbarHeight + MediaQuery.of(context).padding.top,
//                 left: 0,
//                 right: 0,
//                 bottom: 0,
//                 child: SlideTransition(
//                   position: Tween<Offset>(begin: const Offset(0, -1), end: Offset.zero).animate(
//                       CurvedAnimation(parent: _controller, curve: Curves.easeOut)),
//                   child: Material(
//                     elevation: 8,
//                     color: Colors.white,
//                     child: SafeArea(
//                       top: false,
//                       child: Column(
//                         children: [
//                           ListTile(
//                             leading: const Icon(Icons.menu),
//                             title: const Text('Các bài của tôi', style: TextStyle(fontWeight: FontWeight.bold)),
//                           ),
//                           const Divider(height: 1),
//                           Expanded(
//                             child: ListView(
//                               children: [
//                                 _menuTile('Home', '/bai1'),
//                                 _menuTile('Myclassrom', '/bai2'),
//                                 _menuTile('MyGuide', '/bai3'),
//                                 _menuTile('MyHotel', '/bai4'),
//                                 _menuTile('ChangeColorApp', '/bai5'),
//                                 _menuTile('CounterApp', '/bai6'),
//                                 _menuTile('CountdownTimer', '/bai7'),
//                                 _menuTile('FormLogin', '/bai8'),
//                                 _menuTile('FormRegister', '/bai9'),
//                                 _menuTile('Store', '/bai10'),
//                                 _menuTile('NewBao', '/bai11'),
//                                 _menuTile('Login Profile', '/bai12'),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       );
//     });

//     Overlay.of(context).insert(_overlayEntry!);
//     _controller.forward();
//   }

//   void _removeOverlay() {
//     _controller.reverse().then((_) {
//       _overlayEntry?.remove();
//       _overlayEntry = null;
//     });
//   }

//   Widget _menuTile(String title, String route) {
//     return ListTile(
//       title: Text(title),
//       onTap: () {
//         _removeOverlay();
//         Navigator.pushNamed(context, route);
//       },
//     );
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     _overlayEntry?.remove();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: GestureDetector(
//           onTap: _overlayEntry == null ? _showOverlay : _removeOverlay,
//           child: const Text('Danh sách bài'),
//         ),
//         leading: IconButton(
//           icon: const Icon(Icons.menu),
//           onPressed: _overlayEntry == null ? _showOverlay : _removeOverlay,
//         ),
//       ),
//     );
//   }
// }
      // body: ListView(
      //   children: [
      //     ListTile(
      //       title: const Text('Home'),
      //       onTap: () => Navigator.pushNamed(context, '/bai1'),
      //     ),
      //     ListTile(
      //       title: const Text('Myclassrom'),
      //       onTap: () => Navigator.pushNamed(context, '/bai2'),
      //     ),
      //     ListTile(
      //       title: const Text('MyGuide'),
      //       onTap: () => Navigator.pushNamed(context, '/bai3'),
      //     ),
      //     ListTile(
      //       title: const Text('MyHotel'),
      //       onTap: () => Navigator.pushNamed(context, '/bai4'),
      //     ),
      //     ListTile(
      //       title: const Text('ChangeColorApp'),
      //       onTap: () => Navigator.pushNamed(context, '/bai5'),
      //     ),
      //     ListTile(
      //       title: const Text('CounterApp'),
      //       onTap: () => Navigator.pushNamed(context, '/bai6'),
      //     ),
      //     ListTile(
      //       title: const Text('CountdownTimer'),
      //       onTap: () => Navigator.pushNamed(context, '/bai7'),
      //     ),
      //     ListTile(
      //       title: const Text('FormLogin'),
      //       onTap: () => Navigator.pushNamed(context, '/bai8'),
      //     ),
      //     ListTile(
      //       title: const Text('FormRegister'),
      //       onTap: () => Navigator.pushNamed(context, '/bai9'),
      //     ),
      //     ListTile(
      //       title: const Text('Store'),
      //       onTap: () => Navigator.pushNamed(context, '/bai10'),
      //     ),
      //     ListTile(
      //       title: const Text('NewBao'),
      //       onTap: () => Navigator.pushNamed(context, '/bai11'),
      //     ),
      //     ListTile(
      //       title: const Text('Login Profile'),
      //       onTap: () => Navigator.pushNamed(context, '/bai12'),
      //     ),
      //   ],
      // ),
   

