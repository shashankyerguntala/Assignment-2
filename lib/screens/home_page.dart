import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app/widgtes/all_features_widget.dart';
import 'package:shopping_app/widgtes/carousel_slider.dart';
import 'package:shopping_app/widgtes/deal_of_the_day.dart';
import 'package:shopping_app/widgtes/flat_heels_widget.dart';
import 'package:shopping_app/widgtes/sort_filter_buttons.dart';
import 'package:shopping_app/widgtes/trending_products.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: const Color.fromARGB(249, 245, 245, 245),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: AssetImage('assets/appbar_images/logo.png')),
            SizedBox(width: 8),
            Text(
              'Stylish',
              style: GoogleFonts.libreCaslonText(fontWeight: FontWeight.bold),
            ),
          ],
        ),
        leading: Padding(
          padding: const EdgeInsets.only(left: 12),
          child: Image(image: AssetImage('assets/appbar_images/menu.png')),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: Image(image: AssetImage('assets/appbar_images/profile.png')),
          ),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 110),
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  fillColor: Colors.white,
                  prefixIcon: Icon(Icons.search_rounded),
                  suffixIcon: Icon(Icons.mic),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  hintText: 'Search any Product..',
                ),
              ),
              const SizedBox(height: 15),
              Row(
                children: [
                  const SizedBox(width: 15),
                  Text(
                    'All Featured',
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(width: 80),
                  SortFilterButton(
                    iconColor: Colors.black,
                    name: 'sort',
                    icon: Icons.swap_vert,
                    boxColor: Colors.white,
                    textColor: Colors.black,
                    fontWeight: FontWeight.normal,
                  ),
                  const SizedBox(width: 8),
                  SortFilterButton(
                    fontWeight: FontWeight.normal,
                    iconColor: Colors.black,
                    textColor: Colors.black,
                    boxColor: Colors.white,
                    name: 'filter',
                    icon: Icons.filter_alt_outlined,
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(255, 255, 255, 255),
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: SizedBox(
                    height: 110,

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        AllFeaturesWidget(
                          label: 'Beauty',
                          imagePath: 'assets/all_features_images/1.png',
                        ),
                        AllFeaturesWidget(
                          label: 'Fashion',
                          imagePath: 'assets/all_features_images/2.png',
                        ),
                        AllFeaturesWidget(
                          label: 'Kids',
                          imagePath: 'assets/all_features_images/3.png',
                        ),
                        AllFeaturesWidget(
                          label: 'Mens',
                          imagePath: 'assets/all_features_images/4.png',
                        ),
                        AllFeaturesWidget(
                          label: 'Womens',
                          imagePath: 'assets/all_features_images/5.png',
                        ),
                        AllFeaturesWidget(
                          label: 'Make-Up',
                          imagePath: 'assets/all_features_images/1.png',
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              CarouselSlider(
                items: [CustomCarousel(), CustomCarousel(), CustomCarousel()],
                options: CarouselOptions(
                  enlargeCenterPage: true,

                  viewportFraction: 1,

                  autoPlay: true,
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    '●',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color.fromARGB(255, 214, 214, 214),
                    ),
                  ),
                  Text(
                    '●',
                    style: TextStyle(
                      fontSize: 24,
                      color: Color.fromARGB(255, 252, 146, 181),
                    ),
                  ),
                  Text(
                    '●',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color.fromARGB(255, 214, 214, 214),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Container(
                height: 80,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10.0,
                    vertical: 12,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Deal of the Day',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Row(
                            children: const [
                              Icon(
                                Icons.access_alarm,
                                color: Colors.white,
                                size: 18,
                              ),
                              SizedBox(width: 5),
                              Text(
                                '22h 55m 20s remaining',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SortFilterButton(
                        name: 'View all',
                        icon: Icons.arrow_forward,
                        boxColor: Colors.transparent,
                        textColor: Colors.white,
                        iconColor: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Stack(
                children: [

                  SizedBox(
                    height: 280,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        DealOfTheDay(
                          discount: '40%',
                          mrp: '2499',
                          mainImagePath: 'assets/deal_of_the_day_images/1.png',
                          label: 'Women Printed Kurta',
                          price: '1500',
                        ),
                        DealOfTheDay(
                          discount: '50%',
                          mrp: '4999',
                          mainImagePath: 'assets/deal_of_the_day_images/2.png',
                          label: 'HRX by Hrithik Roshan',
                          price: '1499',
                        ),
                        DealOfTheDay(
                          discount: '40%',
                          mrp: '3499',
                          mainImagePath: 'assets/deal_of_the_day_images/1.png',
                          label: 'Women Printed Kurta',
                          price: '2499',
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 100,
                    left: 330,
                    child: CircleAvatar(
                      backgroundColor: const Color.fromARGB(173, 158, 158, 158),
                      child: Icon(Icons.navigate_next_sharp),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),

              Container(
                height: 120,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12.0,
                    vertical: 12,
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/special_offers.png',
                        width: 100,
                        height: 100,
                        fit: BoxFit.contain,
                      ),

                      const SizedBox(width: 12),

                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                const Text(
                                  'Special Offers',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 0, 0, 0),
                                    fontSize: 20,
                                  ),
                                ),
                                const SizedBox(width: 6),
                                Image.asset(
                                  'assets/emoji.png',
                                  width: 25,
                                  height: 25,
                                ),
                              ],
                            ),
                            const SizedBox(height: 8),

                            Text(
                              'We make sure you get the offer you need at best prices',
                              style: const TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                                fontSize: 14,
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              //! FLAT AND HEELS START
              const SizedBox(height: 15),
              FlatHeelsWidget(),

              //! trending products
              const SizedBox(height: 15),
              Container(
                height: 80,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(253, 110, 135, 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(11),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Trending Products',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Row(
                            children: const [
                              Icon(
                                Icons.calendar_month,
                                color: Colors.white,
                                size: 18,
                              ),
                              SizedBox(width: 5),
                              Text(
                                'Last Date 29/02/22',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SortFilterButton(
                        name: 'View all',
                        icon: Icons.arrow_forward,
                        boxColor: Colors.transparent,
                        textColor: Colors.white,
                        iconColor: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ],
                  ),
                ),
              ),

              //! trending cards start
              const SizedBox(height: 10),
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      height: 254,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          TrendingProducts(
                            mainImagePath: 'assets/trending_products/1.png',
                            label:
                                'IWC Schaffhausen2021 Pilots Watch "SIHH 2019" 44mm',
                            mrp: '1599',
                            price: '650',
                            discount: '60%',
                          ),
                          TrendingProducts(
                            mainImagePath: 'assets/trending_products/2.png',
                            label: 'Labbin White Sneakers For Men and Female',
                            mrp: '1250',
                            price: '650',
                            discount: '70%',
                          ),
                          TrendingProducts(
                            mainImagePath: 'assets/trending_products/3.png',
                            label: 'Mammon Womens Handbag(Set of 3, Beige)',
                            mrp: '1999',
                            price: '750',
                            discount: '60%',
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 100,
                    left: 330,
                    child: CircleAvatar(
                      backgroundColor: const Color.fromARGB(173, 158, 158, 158),
                      child: Icon(Icons.navigate_next_sharp),
                    ),
                  ),
                ],
              ),

              //! hot summer

              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                
                    color: Colors.white,
                  ),
                  width: double.infinity,
                  height: 295,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        "assets/hot_summer.png",
                        height: 210,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(height: 5),
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Text(
                          "New Arrivals ",
                          style: GoogleFonts.montserrat(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Row(
                          children: [
                            Text(
                              "Summer’ 25 Collections ",
                              style: GoogleFonts.montserrat(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(width: 48),
                            SortFilterButton(
                              name: 'view all',
                              icon: Icons.arrow_forward,
                              boxColor: Color.fromRGBO(248, 55, 88, 1),
                              textColor: Colors.white,
                              iconColor: Colors.white,
                              fontWeight: FontWeight.normal,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              //!sponserd

              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white,
                  ),
                  
                  height: 400,
                
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 8),
                        child: Text(
                          'Sponsored',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: ClipRRect(
                          child: Image.asset(
                            'assets/shoes.png',
                            width: 400,
                            height: 300,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 12),
                              child: Text(
                                "Up to 50% Off",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Spacer(),
                            Icon(Icons.arrow_forward_ios, size: 16),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.home, color: Colors.red),
                Text("Home", style: TextStyle(color: Colors.red)),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.favorite_border, color: Colors.black),
                Text("Wishlist", style: TextStyle(color: Colors.black)),
              ],
            ),

            SizedBox(width: 40),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.search, color: Colors.black),
                Text("Search", style: TextStyle(color: Colors.black)),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.settings, color: Colors.black),
                Text("Setting", style: TextStyle(color: Colors.black)),
              ],
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(),
        onPressed: () {},
        backgroundColor: Colors.white,
        elevation: 5,
        child: Icon(Icons.shopping_cart_outlined, color: Colors.black),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
