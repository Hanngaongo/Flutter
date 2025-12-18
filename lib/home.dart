import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: myBody(),
    );
  }

  Widget myBody() {
    return SingleChildScrollView(
      
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          block1(),
          block2(),
          block3(), 
          block4(),
          ],
      ),
    );
  }

  Widget block1() {
    var src =
        "https://images.unsplash.com/photo-1489573280374-2e193c63726c?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D";
    return Image.network(src);
  }

  Widget block2() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Hoang mạc Sahara',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text('Phía Bắc châu Phi', style: TextStyle(color: Colors.grey)),
            ],
          ),
          Row(
            children: const [
              Icon(Icons.star, color: Colors.red),
              SizedBox(width: 4),
              Text("41"),
            ],
          ),
        ],
      ),
    );
  }

  Widget block3() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: const [
              Icon(Icons.phone, color: Colors.blue),
              SizedBox(height: 8),
              Text("Call"),
            ],
          ),
          Column(
            children: const [
              Icon(Icons.directions, color: Colors.blue),
              SizedBox(height: 8),
              Text("Route"),
            ],
          ),
          Column(
            children: const [
              Icon(Icons.share, color: Colors.blue),
              SizedBox(height: 8),
              Text("Share"),
            ],
          ),
        ],
      ),
    );
  }

  Widget block4() {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        "Được bao bọc bởi biển Đại Tây Dương ở phía Tây, dãy núi Atlas và Địa Trung Hải ở phía Bắc, Biển Đỏ (Hồng Hải) và Ai Cập ở phía Đông; Sudan và thung lũng sông Niger ở phía Nam. Điểm cao nhất trong sa mạc là đỉnh núi Emi Koussi với độ cao 3415 m so với mực nước biển, thuộc dãy núi Tibesti phía Bắc nước Tchad.\n\n"
        "Trong suốt kỷ nguyên băng hà, vùng Sahara đã từng ẩm ướt hơn ngày nay rất nhiều. Và cũng đã từng có rất nhiều loài động, thực vật sinh sống nơi đây. Tuy nhiên ngày nay, ngoại trừ vùng thung lũng sông Nin là có thể trồng được nhiều rau và một số ít nơi khác như vùng cao nguyên phía Bắc, gần Địa Trung Hải là có thể trồng cây ôliu còn phần lớn vùng này không thể canh tác được.\n\n"
        "Với diện tích tương đương Hoa Kỳ nhưng chỉ có 2,5 triệu người sinh sống trong vùng. Chủ yếu tập trung ở Ai Cập, Mauritanie, Maroc và Algérie. Các dân tộc chính bao gồm chủng Tuareg, Ả Rập, và nhóm người da đen như Tubu, Nubians, Zaghawa, Kanuri, Peul hay Fulani, Hausa và Songhai.\n\n"
        "Thành phố lớn nhất vùng là Cairo, thủ đô của Ai Cập nằm ở thung lũng sông Nin. Một số thành phố quan trọng khác bao gồm Nouakchott, thủ đô của Mauritanie.",
        textAlign: TextAlign.justify,
        style: TextStyle(fontSize: 16, height: 1.5),
      ),
    );
  }
}
