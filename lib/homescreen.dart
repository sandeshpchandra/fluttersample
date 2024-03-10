import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  // static const TextStyle optionStyle =
  //     TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
  static List<Widget> screens = [
    DiscoveryScreen(),
    Container(
      color: Colors.white,
      child: Center(
        child: Text(
          "location",
          // style: optionStyle,
        ),
      ),
    ),
    Container(
      color: Colors.red,
      child: Center(
        child: Text(
          "favorite",
          // style: optionStyle,
        ),
      ),
    ),
    Container(
      color: Colors.teal,
      child: Center(
        child: Text(
          "profile",
          // style: optionStyle,
        ),
      ),
    ),
  ];
  static List<String> appbartext = [
    "Discovery",
    "Location",
    "Favorite",
    "Profile"
  ];
  @override
  Widget build(BuildContext context) {
    const primaryColor = Colors.white;
    return Scaffold(
      backgroundColor: Color(0xFFE8E8E9),
      appBar: AppBar(
          toolbarHeight: 120,
          elevation: 2,
          backgroundColor: primaryColor,
          title: Center(
            child: Text(
              appbartext[selectedIndex],
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          )),
      body: screens[selectedIndex],
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: GNav(
            backgroundColor: Colors.white,
            activeColor: Colors.black,
            tabBackgroundColor: Color(0xFFF4C526),
            padding: EdgeInsets.all(16),
            gap: 5,
            iconSize: 30,
            tabs: const [
              GButton(
                icon: Icons.home,
                text: "home",
              ),
              GButton(icon: Icons.location_on_outlined, text: "location"),
              GButton(icon: Icons.favorite_border, text: "favorite"),
              GButton(icon: Icons.person, text: "profile"),
            ],
            selectedIndex: selectedIndex,
            onTabChange: (index) {
              setState(() {
                selectedIndex = index;
              });
            },
          ),
        ),
      ),
    );
  }
}

class DiscoveryScreen extends StatelessWidget {
  const DiscoveryScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      padding: const EdgeInsets.all(20),
      children: List.generate(
        discovery.length,
        (index) => Material(
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
                height: 100,
                width: 100,
              ),
              Text(discovery[index]["title"]),
              Text(discovery[index]["subtitle"]),
            ],
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
        "https://cdn0.iconfinder.com/data/icons/fast-food-106/567/food_icon_burger-512.png"
  },
  {
    "title": "Featured Foods",
    "subtitle": "21 Place",
    "image":
        "https://static.vecteezy.com/system/resources/previews/023/963/108/original/indian-food-icon-free-png.png"
  }
];
