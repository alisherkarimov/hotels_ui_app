import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static const id = 'home_page';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // $header
            Container(
              height: 250,
              width: double.infinity,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('assets/images/ic_header.jpg'),
                fit: BoxFit.cover,
              )),
              child: Container(
                decoration: BoxDecoration(
                    gradient:
                        LinearGradient(begin: Alignment.bottomRight, colors: [
                  Colors.black.withOpacity(.8),
                  Colors.black.withOpacity(.6),
                  Colors.black.withOpacity(.4),
                ])),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text(
                      'Best Hotels Ever',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 30),
                    Container(
                      height: 50,
                      margin: const EdgeInsets.symmetric(horizontal: 40),
                      padding: const EdgeInsets.symmetric(vertical: 3),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(26),
                        color: Colors.white,
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          hintText: 'Search for hotels..',
                          hintStyle:
                              TextStyle(color: Colors.grey, fontSize: 17),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  Text(
                    'Business Hotels',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.shade700),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 20),
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        makeItem(
                            image: 'assets/images/ic_hotel1.jpg',
                            text: 'Hotel 1'),
                        makeItem(
                            image: 'assets/images/ic_hotel2.jpg',
                            text: 'Hotel 2'),
                        makeItem(
                            image: 'assets/images/ic_hotel3.jpg',
                            text: 'Hotel 3'),
                        makeItem(
                            image: 'assets/images/ic_hotel4.jpg',
                            text: 'Hotel 4'),
                        makeItem(
                            image: 'assets/images/ic_hotel5.jpg',
                            text: 'Hotel 5'),
                      ],
                    ),
                  ),
                  Text(
                    'Airport Hotels',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.shade700),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 20),
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        makeItem(
                            image: 'assets/images/ic_hotel3.jpg',
                            text: 'Hotel 1'),
                        makeItem(
                            image: 'assets/images/ic_hotel4.jpg',
                            text: 'Hotel 2'),
                        makeItem(
                            image: 'assets/images/ic_hotel1.jpg',
                            text: 'Hotel 3'),
                        makeItem(
                            image: 'assets/images/ic_hotel2.jpg',
                            text: 'Hotel 4'),
                        makeItem(
                            image: 'assets/images/ic_hotel5.jpg',
                            text: 'Hotel 5'),
                      ],
                    ),
                  ),
                  Text(
                    'Resort Hotels',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.shade700),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 20),
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        makeItem(
                            image: 'assets/images/ic_hotel5.jpg',
                            text: 'Hotel 5'),
                        makeItem(
                            image: 'assets/images/ic_hotel4.jpg',
                            text: 'Hotel 2'),
                        makeItem(
                            image: 'assets/images/ic_hotel3.jpg',
                            text: 'Hotel 3'),
                        makeItem(
                            image: 'assets/images/ic_hotel1.jpg',
                            text: 'Hotel 4'),
                        makeItem(
                            image: 'assets/images/ic_hotel2.jpg',
                            text: 'Hotel 5'),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget makeItem({image, text}) {
    return AspectRatio(
      aspectRatio: 1,
      child: Container(
        margin: const EdgeInsets.only(right: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
                Colors.black.withOpacity(.8),
                Colors.black.withOpacity(.2),
              ])),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                text,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              const Icon(Icons.favorite, color: Colors.redAccent),
            ],
          ),
        ),
      ),
    );
  }
}
