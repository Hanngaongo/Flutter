import 'package:flutter/material.dart';

import 'home.dart';
import 'myclassrom.dart';
import 'myguide.dart';
import 'myhotel.dart';
import 'change_color_app.dart';
import 'counter_app.dart';
import 'countdown_timer.dart';
import 'form_login.dart';
import 'form_register.dart';
import 'myproduct.dart';
import 'screens/news_list_screen.dart';
import 'login.dart';

void main() => runApp(const MyApp());


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter',
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
        '/bai12': (context) => LoginPage(),
      },
    );
  }
}


class DrawerItem extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final String title;
  final VoidCallback onTap;

  const DrawerItem({
    super.key,
    required this.icon,
    required this.iconColor,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Row(
          children: [
            Icon(icon, color: iconColor),
            const SizedBox(width: 16),
            Expanded(
              child: Text(
                title,
                style: const TextStyle(fontSize: 15),
              ),
            ),
            const Icon(Icons.chevron_right, size: 18),
          ],
        ),
      ),
    );
  }
}


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bài tập Flutter'),
        leading: IconButton(
          icon: Icon(_isExpanded ? Icons.close : Icons.menu),
          onPressed: () => setState(() => _isExpanded = !_isExpanded),
        ),
      ),
      body: Stack(
        children: [
          
          Positioned.fill(
            child: Image.asset(
              'assets/images/nen.png',
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(
            child: Container(color: Colors.black.withOpacity(0.3)),
          ),
          const Center(
            child: Text(
              'Lập trình ứng dụng di động\nNhóm 5',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          
            Positioned.fill(
              child: GestureDetector(
                onTap: () => setState(() => _isExpanded = false),
                child: Container(color: Colors.transparent),
              ),
            ),

          
          AnimatedPositioned(
            duration: const Duration(milliseconds: 260),
            curve: Curves.easeInOut,
            top: 0,
            bottom: 0,
            left: _isExpanded ? 0 : -330,
            child: SizedBox(
              width: 330,
              child: SafeArea(
                child: Container(
                  margin: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(14),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.15),
                        blurRadius: 8,
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(16),
                        decoration: const BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(14),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Đặng Duy Hân',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 6),
                            Text(
                              '22T1020597@husc.edu.vn',
                              style: TextStyle(color: Colors.white70),
                            ),
                          ],
                        ),
                      ),

                      
                      Expanded(
                        child: ListView(
                          padding: EdgeInsets.zero,
                          children: [
                            DrawerItem(icon: Icons.home, iconColor: Colors.blue, title: 'Bài 1 - Home', onTap: () {
                              setState(() => _isExpanded = false);
                              Navigator.pushNamed(context, '/bai1');
                            }),
                            DrawerItem(icon: Icons.class_, iconColor: Colors.red, title: 'Bài 2 - MyClassroom', onTap: () {
                              setState(() => _isExpanded = false);
                              Navigator.pushNamed(context, '/bai2');
                            }),
                            DrawerItem(icon: Icons.menu_book, iconColor: Colors.green, title: 'Bài 3 - MyGuide', onTap: () {
                              setState(() => _isExpanded = false);
                              Navigator.pushNamed(context, '/bai3');
                            }),
                            DrawerItem(icon: Icons.hotel, iconColor: Colors.orange, title: 'Bài 4 - MyHotel', onTap: () {
                              setState(() => _isExpanded = false);
                              Navigator.pushNamed(context, '/bai4');
                            }),
                            DrawerItem(icon: Icons.palette, iconColor: Colors.purple, title: 'Bài 5 - Change Color', onTap: () {
                              setState(() => _isExpanded = false);
                              Navigator.pushNamed(context, '/bai5');
                            }),
                            DrawerItem(icon: Icons.add, iconColor: Colors.teal, title: 'Bài 6 - Counter', onTap: () {
                              setState(() => _isExpanded = false);
                              Navigator.pushNamed(context, '/bai6');
                            }),
                            DrawerItem(icon: Icons.timer, iconColor: Colors.brown, title: 'Bài 7 - Countdown', onTap: () {
                              setState(() => _isExpanded = false);
                              Navigator.pushNamed(context, '/bai7');
                            }),
                            DrawerItem(icon: Icons.login, iconColor: Colors.indigo, title: 'Bài 8 - Form Login', onTap: () {
                              setState(() => _isExpanded = false);
                              Navigator.pushNamed(context, '/bai8');
                            }),
                            DrawerItem(icon: Icons.app_registration, iconColor: Colors.cyan, title: 'Bài 9 - Form Register', onTap: () {
                              setState(() => _isExpanded = false);
                              Navigator.pushNamed(context, '/bai9');
                            }),
                            DrawerItem(icon: Icons.store, iconColor: Colors.deepOrange, title: 'Bài 10 - Store', onTap: () {
                              setState(() => _isExpanded = false);
                              Navigator.pushNamed(context, '/bai10');
                            }),
                            DrawerItem(icon: Icons.newspaper, iconColor: Colors.black, title: 'Bài 11 - News', onTap: () {
                              setState(() => _isExpanded = false);
                              Navigator.pushNamed(context, '/bai11');
                            }),
                            DrawerItem(icon: Icons.person, iconColor: Colors.blueGrey, title: 'Bài 12 - Login Profile', onTap: () {
                              setState(() => _isExpanded = false);
                              Navigator.pushNamed(context, '/bai12');
                            }),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
