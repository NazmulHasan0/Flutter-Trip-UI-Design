import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static const String path = "HomePage";
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          makePage(
            page: "1",
            image: "assets/one.jpg",
            title: "Yosemite National Park",
            description:
                "Yosemite National Park is in California’s Sierra Nevada mountains. It’s famed for its giant, ancient sequoia trees, and for Tunnel View, the iconic vista of towering Bridalveil Fall and the granite cliffs of El Capitan and Half Dome.",
          ),
          makePage(
            page: "2",
            image: "assets/two.jpg",
            title: "Golden Gate Bridge",
            description:
                "Sedona is an Arizona desert town near Flagstaff that’s surrounded by red-rock buttes, steep canyon walls and pine forests. It’s noted for its mild climate and vibrant arts community. Uptown Sedona is dense with New Age shops",
          ),
          makePage(
            page: "3",
            image: "assets/three.jpg",
            title: "Sedona",
            description:
                "The Golden Gate Bridge is a suspension bridge spanning the Golden Gate, the one-mile-wide strait connecting San Francisco Bay and the Pacific Ocean.",
          ),
          makePage(
            page: "4",
            image: "assets/four.jpg",
            title: "Savannah",
            description:
                "Savannah, a coastal Georgia city, is separated from South Carolina by the Savannah River. It’s known for manicured parks, horse-drawn carriages and antebellum architecture. Its historic district is filled with cobblestoned squares",
          ),
        ],
      ),
    );
  }

  Widget makePage({image, title, description, page}) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
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
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    page,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "/4",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: const [
                        Icon(Icons.star, color: Colors.yellow),
                        Icon(Icons.star, color: Colors.yellow),
                        Icon(Icons.star, color: Colors.yellow),
                        Icon(Icons.star, color: Colors.yellow),
                        Icon(Icons.star, color: Colors.grey),
                        SizedBox(width: 10),
                        Text(
                          "4.0",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          "(2000)",
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Text(
                      description,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        wordSpacing: 2.0,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "READ MORE",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
