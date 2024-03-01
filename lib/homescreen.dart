import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    const primaryColor = Colors.white;
    return Scaffold(
      backgroundColor: Color(0xFFE8E8E9),
      appBar: AppBar(
          toolbarHeight: 120,
          elevation: 0,
          backgroundColor: primaryColor,
          title: Center(
            child: Text(
              'Discovery',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          )),
      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        padding: const EdgeInsets.all(20),
        children: List.generate(
          discovery.length,
          (index) => SizedBox(
            height: 200,
            child: Material(
              elevation: 2,
              borderRadius: BorderRadius.circular(12),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(
                    discovery[index]["image"],
                    fit: BoxFit.cover,
                    height: 50,
                    width: 50,
                  ),
                  Text(discovery[index]["title"]),
                  Text(discovery[index]["subtitle"]),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

List<Map<String, dynamic>> discovery = [
  {
    "title": "Bars & Hotels",
    "subtitle": "42 Place",
    "image":
        "https://e7.pngegg.com/pngimages/281/448/png-clipart-hotel-illustration-hotel-euclidean-icon-hotels-text-room-thumbnail.png"
  },
  {
    "title": "Fine Dining",
    "subtitle": "15 Place",
    "image": "https://cdn-icons-png.freepik.com/512/2763/2763829.png"
  },
  {
    "title": "Cafes",
    "subtitle": "28 Place",
    "image":
        "https://img.freepik.com/premium-vector/cup-coffee-icon-logo-vector-design-template_827767-2225.jpg"
  },
  {
    "title": "Nearby",
    "subtitle": "34 Place",
    "image":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRivhf5pzoCleWDK9BFRDMpG-77rckHz4a7eA&usqp=CAU"
  },
  {
    "title": "Fast Foods",
    "subtitle": "29 Place",
    "image":
        "https://png.pngtree.com/png-vector/20200810/ourlarge/pngtree-burger-with-soda-and-sauce-icon-illustration-fast-food-icon-concept-png-image_2322563.jpg"
  },
  {
    "title": "Featured Foods",
    "subtitle": "21 Place",
    "image":
        "https://png.pngtree.com/element_our/png/20180930/food-icon-design-vector-png_120564.jpg"
  }
];
