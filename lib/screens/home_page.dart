import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app/widgets/custom_bottom_navigation.dart';
import 'package:shopping_app/widgets/deals_banner.dart';
import 'package:shopping_app/widgets/all_features_widget.dart';
import 'package:shopping_app/widgets/carousel_slider.dart';
import 'package:shopping_app/widgets/deal_of_the_day.dart';
import 'package:shopping_app/widgets/flat_heels_widget.dart';
import 'package:shopping_app/widgets/hot_summer.dart';
import 'package:shopping_app/widgets/sort_filter_buttons.dart';
import 'package:shopping_app/widgets/sponsered.dart';
import 'package:shopping_app/widgets/trending_banner.dart';
import 'package:shopping_app/widgets/trending_products.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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

      //! Search bar
      body: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 20),
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

              //! all featured text
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'All Featured',
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),

                  Row(
                    children: [
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
                ],
              ),
              const SizedBox(height: 20),

              //! all featured cards
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(255, 255, 255, 255),
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: SizedBox(
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

              //! carousel slider
              CarouselSlider(
                items: [CustomCarousel(), CustomCarousel(), CustomCarousel()],
                options: CarouselOptions(
                  enlargeCenterPage: true,

                  viewportFraction: 1,

                  autoPlay: true,
                ),
              ),
              //! carousel dots
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
              //! deals banner
              DealsBanner(),
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

              //! flat and heels
              const SizedBox(height: 15),
              FlatHeelsWidget(),

              //! trending banner
              const SizedBox(height: 15),
              TrendingBanner(),

              //! trending cards start
              const SizedBox(height: 10),
              Stack(
                children: [
                  Container(
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
              const SizedBox(height: 10),
              HotSummer(),

              //!sponsered
              const SizedBox(height: 15),
              Sponsered(),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavigation(),
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
