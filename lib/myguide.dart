import 'package:flutter/material.dart';

class MyGuide extends StatelessWidget {
  const MyGuide({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(title: const Text('MyGuide')),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0), // ✅ padding bao toàn bộ
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                block1(),
                const SizedBox(height: 30),
                block2(),
                const SizedBox(height: 20),
                block3(),
                const SizedBox(height: 30),
                block4(),
                const SizedBox(height: 12),
                block5(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // 🔔 Block 1: Icon góc phải
  Widget block1() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: const [
        Icon(Icons.notifications, size: 28),
        SizedBox(width: 12),
        Icon(Icons.extension, size: 28),
      ],
    );
  }

  // 👋 Block 2: Chữ Welcome, Charlie
  Widget block2() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Welcome,",
          style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
        ),
        Text(
          "Charlie",
          style: TextStyle(fontSize: 26),
        ),
      ],
    );
  }

  // 🔍 Block 3: Thanh tìm kiếm
  Widget block3() {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.search),
        hintText: 'Search',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }

  // 📍 Block 4: Tiêu đề "Saved Places"
  Widget block4() {
    return const Text(
      "Saved Places",
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    );
  }

  // 🖼️ Block 5: GridView hiển thị ảnh
  Widget block5() {
    final imageAssets = [
      "assets/images/anh1.png",
      "assets/images/anh2.png",
      "assets/images/anh3.png",
      "assets/images/anh4.png",
    ];

    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: imageAssets.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
      ),
      itemBuilder: (context, index) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(
            imageAssets[index],
            fit: BoxFit.cover,
          ),
        );
      },
    );
  }
}
