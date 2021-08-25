import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'detailsScreen.dart';
import 'model/category.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Travellr App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        textTheme: GoogleFonts.rubikTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      maintainBottomViewPadding: true,
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        extendBodyBehindAppBar: true,
        backgroundColor: const Color(0xfff2f2f2),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: SizedBox(
                            height: 45,
                            width: 45,
                            child: Image.asset(
                              'asset/images/profile_pic.jpg',
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        const Text('Welcome back,\nManoj')
                      ],
                    ),
                    const Icon(
                      Icons.notifications,
                      color: Colors.black87,
                      size: 30,
                    )
                  ],
                ),
                const SizedBox(height: 20),
                SlideInDown(
                  delay: const Duration(microseconds: 100),
                  child: const Text(
                    'Discover \nNew Destination.',
                    style: TextStyle(fontSize: 22),
                  ),
                ),
                const SizedBox(height: 20),
                ElasticIn(
                  delay: const Duration(microseconds: 100),
                  child: Container(
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: const ListTile(
                      minLeadingWidth: 0,
                      leading: Icon(Icons.search_rounded, color: Colors.grey),
                      title: TextField(
                        style: TextStyle(fontSize: 20),
                        textInputAction: TextInputAction.search,
                        decoration: InputDecoration(
                          hintText: 'Search',
                          disabledBorder: InputBorder.none,
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.only(
                            bottom: 11,
                            top: 6,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Category',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.25,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: Category.category.length,
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      return ElasticInLeft(
                          delay: const Duration(microseconds: 300), child: CategoryCard(Category.category[index]));
                    },
                  ),
                ),
                const Text(
                  'Locations',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.9,
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: Destinations.destinations.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ElasticInLeft(
                          delay: const Duration(microseconds: 500),
                          child: LocationCard(Destinations.destinations[index]));
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class LocationCard extends StatelessWidget {
  final Destinations destination;

  const LocationCard(
    this.destination, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          Get.to(DetailsScreen(destination: destination));
        },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(4.0),
          child: SizedBox(
              height: MediaQuery.of(context).size.width * 0.9,
              width: MediaQuery.of(context).size.width * 0.6,
              child: Stack(
                children: [
                  Hero(
                    tag: destination.destinationImage,
                    child: Image.asset(
                      destination.destinationImage,
                      fit: BoxFit.cover,
                      height: MediaQuery.of(context).size.width * 0.9,
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 6.0, right: 6.0, bottom: 6.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(4.0),
                        child: Container(
                          padding: const EdgeInsets.all(8.0),
                          color: Colors.white.withOpacity(0.8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      destination.destinationName,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
                                    ),
                                    Row(
                                      children: [
                                        const Icon(
                                          Icons.location_on_rounded,
                                          color: Colors.orange,
                                          size: 16,
                                        ),
                                        Text(
                                          destination.destinationLocation,
                                          style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 10),
                              const Icon(
                                Icons.chevron_right_rounded,
                                color: Colors.orange,
                                size: 25,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final Category category;

  const CategoryCard(
    this.category, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(2.0),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Container(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 30,
                    width: 50,
                    child: Image.asset(
                      category.categoryImage,
                      fit: BoxFit.contain,
                    ),
                  ),
                  const SizedBox(height: 4.0),
                  Text(
                    category.categoryName,
                    style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
