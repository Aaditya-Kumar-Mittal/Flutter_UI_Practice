import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Nunito',
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _pageController = PageController(initialPage: 0);

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: <Widget>[
          makePage(
              image: 'assets/images/one.jpg',
              pageNumber: 1,
              title: 'Yosemite National Park',
              description:
                  'Yosemite National Park is in California’s Sierra Nevada mountains. It’s famed for its giant, ancient sequoia trees, and for Tunnel View, the iconic vista of towering Bridalveil Fall and the granite cliffs of El Capitan and Half Dome.'),
          makePage(
              image: 'assets/images/two.jpg',
              pageNumber: 2,
              title: 'Golden Gate Bridge',
              description:
                  'The Golden Gate Bridge is a suspension bridge spanning the Golden Gate, the one-mile-wide strait connecting San Francisco Bay and the Pacific Ocean.'),
          makePage(
              image: 'assets/images/three.jpg',
              pageNumber: 3,
              title: 'Sedona',
              description:
                  "Sedona is regularly described as one of America's most beautiful places. Nowhere else will you find a landscape as dramatically colorful."),
          makePage(
              image: 'assets/images/four.jpg',
              pageNumber: 4,
              title: 'Savannah',
              description:
                  "Savannah, with its Spanish moss, Southern accents and creepy graveyards, is a lot like Charleston, South Carolina. But this city about 100 miles to the south has an eccentric streak."),
        ],
      ),
    );
  }

  Widget makePage(
      {required String image,
      required int pageNumber,
      required String title,
      required String description}) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(image),
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            stops: const [0.3, 0.9],
            colors: [
              Colors.black.withOpacity(.9),
              Colors.black.withOpacity(.2),
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    '$pageNumber',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    '/4',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(right: 3),
                    child: const Icon(
                      Icons.star,
                      color: Colors.yellowAccent,
                      size: 18,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 3),
                    child: const Icon(
                      Icons.star,
                      color: Colors.yellowAccent,
                      size: 18,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 3),
                    child: const Icon(
                      Icons.star,
                      color: Colors.yellowAccent,
                      size: 18,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 3),
                    child: const Icon(
                      Icons.star,
                      color: Colors.yellowAccent,
                      size: 18,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 3),
                    child: const Icon(
                      Icons.star,
                      color: Colors.grey,
                      size: 18,
                    ),
                  ),
                  const Text(
                    '4.0',
                    style: TextStyle(
                      color: Colors.white70,
                    ),
                  ),
                  const Text(
                    ' (2300)',
                    style: TextStyle(color: Colors.white70, fontSize: 12),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 50),
                child: Text(
                  description,
                  style: TextStyle(
                      color: Colors.white.withOpacity(.7), fontSize: 20),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'READ MORE',
                style: TextStyle(color: Colors.white),
              ),
              const SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
