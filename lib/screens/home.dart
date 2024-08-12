import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smart_watch_app/models/cart_model.dart';
import 'package:get/get.dart';
import 'package:smart_watch_app/screens/cart.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // List of categories with products
  final List<Map<String, dynamic>> categories = <Map<String, dynamic>>[
    {
      "name": "ROLEX",
      "products": [
        {
          "id": 1,
          "name": "Cappuccino",
          "productId": "rolex_001",
          "description": "With Oat Milk",
          "price": 4.20,
          "imagePath":
              "assets/images/collection-rolex-watches-1908-m52506-0002-10151_rsa_olympe_carrousel_24.png",
          "rating": 4.6,
        },
        {
          "id": "2",
          "name": "Cappuccino",
          "productId": "rolex_002",
          "description": "With Chocolate",
          "price": 3.14,
          "imagePath":
              "assets/images/collection-rolex-watches-air-king-m126900-0001-10155_rsa_airking_40_m126900_0001_carrousel_24.png",
          "rating": 4.2,
        },
        {
          "id": "3",
          "name": "Cappuccino",
          "productId": "rolex_003",
          "description": "With Chocolate",
          "price": 3.14,
          "imagePath":
              "assets/images/collection-rolex-watches-cosmograph-daytona-m126509-0001-10168_rsa_daytona_40_m126509_0001_carrousel_24-portrait.png",
          "rating": 4.2,
        },
        {
          "id": "4",
          "name": "Cappuccino",
          "productId": "rolex_004",
          "description": "With Chocolate",
          "price": 3.14,
          "imagePath":
              "assets/images/collection-rolex-watches-datejust-m126234-0051-10161_rsa_datejust_31_m278274_0018_carrousel_24.png",
          "rating": 4.2,
        },
        {
          "id": "5",
          "name": "Cappuccino",
          "productId": "rolex_005",
          "description": "With Chocolate",
          "price": 3.14,
          "imagePath":
              "assets/images/collection-rolex-watches-day-date-m228235-0055-10150_rsa_cad24_everose_carrousel_24.png",
          "rating": 4.2,
        },
        {
          "id": "6",
          "name": "Cappuccino",
          "productId": "rolex_006",
          "description": "With Chocolate",
          "price": 3.14,
          "imagePath":
              "assets/images/collection-rolex-watches-deepsea-m136668lb-0001-10153_rsa_caraibes_44_carrousel_24_ab.png",
          "rating": 4.2,
        },
        {
          "id": "7",
          "name": "Cappuccino",
          "productId": "rolex_007",
          "description": "With Chocolate",
          "price": 3.14,
          "imagePath":
              "assets/images/collection-rolex-watches-deepsea-m136668lb-0001-10153_rsa_caraibes_44_carrousel_24_ab (1).png",
          "rating": 4.2,
        },
        {
          "id": "8",
          "name": "Cappuccino",
          "productId": "rolex_008",
          "description": "With Chocolate",
          "price": 3.14,
          "imagePath":
              "assets/images/collection-rolex-watches-explorer-m124273-0001-10157_rsa_explorer_36_m124273_0001_carrousel_24.png",
          "rating": 4.2,
        },
        {
          "id": "9",
          "name": "Cappuccino",
          "productId": "rolex_009",
          "description": "With Chocolate",
          "price": 3.14,
          "imagePath":
              "assets/images/collection-rolex-watches-gmt-master-ii-m126710grnr-0004-10149_rsa_topolino_oyster_carrousel_24.png",
          "rating": 4.2,
        },
        {
          "id": "10",
          "name": "Cappuccino",
          "productId": "rolex_010",
          "description": "With Chocolate",
          "price": 3.14,
          "imagePath":
              "assets/images/collection-rolex-watches-explorer-m124273-0001-10157_rsa_explorer_36_m124273_0001_carrousel_24.png",
          "rating": 4.2,
        },
        {
          "id": "11",
          "name": "Cappuccino",
          "productId": "rolex_011",
          "description": "With Chocolate",
          "price": 3.14,
          "imagePath":
              "assets/images/collection-rolex-watches-lady-datejust-m279135rbr-0001-10160_rsa_ladydatejust_28_m279135rbr_0001_carrousel_24.png",
          "rating": 4.2,
        },
        {
          "id": "12",
          "name": "Cappuccino",
          "productId": "rolex_012",
          "description": "With Chocolate",
          "price": 3.14,
          "imagePath":
              "assets/images/collection-rolex-watches-oyster-perpetual-m124300-0001-10159_rsa_oysterperpetual_41_m124300_0001_carrousel_24.png",
          "rating": 4.2,
        },
        {
          "id": "13",
          "name": "Cappuccino",
          "productId": "rolex_013",
          "description": "With Chocolate",
          "price": 3.14,
          "imagePath":
              "assets/images/collection-rolex-watches-sea-dweller-10158_rsa_seadweller_43_m126603_0001_carrousel_24.png",
          "rating": 4.2,
        },
        {
          "id": "14",
          "name": "Cappuccino",
          "productId": "rolex_014",
          "description": "With Chocolate",
          "price": 3.14,
          "imagePath":
              "assets/images/collection-rolex-watches-sky-dweller-m336935-0008-10152_rsa_cap_everose_42_carrousel_24_19_02_2024.png",
          "rating": 4.2,
        },
        {
          "id": "15 ",
          "name": "Cappuccino",
          "productId": "rolex_015",
          "description": "With Chocolate",
          "price": 3.14,
          "imagePath":
              "assets/images/collection-rolex-watches-yacht-master-m226627-0001-10154_rsa_yachtmaster_42_m226627_0001_carrousel_24-portrait.png",
          "rating": 4.2,
        },
      ],
    },
    {
      "name": "HUBLOT",
      "products": [
        {
          "name": "Cappuccino",
          "description": "With Oat Milk",
          "price": 4.20,
          "imagePath":
              "assets/images/big-bang-integral-black-magic-soldier.png",
          "rating": 4.6,
        },
        {
          "name": "Cappuccino",
          "description": "With Chocolate",
          "price": 3.14,
          "imagePath":
              "assets/images/big-bang-integral-titanium-ceramic-42-mm-soldier.png",
          "rating": 4.2,
        },
        {
          "name": "Cappuccino",
          "description": "With Chocolate",
          "price": 3.14,
          "imagePath":
              "assets/images/Big-Bang-Integrated-King-gold-showcase_1.png",
          "rating": 4.2,
        },
        {
          "name": "Cappuccino",
          "description": "With Chocolate",
          "price": 3.14,
          "imagePath":
              "assets/images/big-bang-unico-black-magic-42-mm-soldier-shot_0.png",
          "rating": 4.2,
        },
        {
          "name": "Cappuccino",
          "description": "With Chocolate",
          "price": 3.14,
          "imagePath": "assets/images/big-bang-unico-ice-bang-42-mm-LS-1.jpg",
          "rating": 4.2,
        },
        {
          "name": "Cappuccino",
          "description": "With Chocolate",
          "price": 3.14,
          "imagePath":
              "assets/images/big-bang-unico-ice-bang-42-mm-soldier-shot.png",
          "rating": 4.2,
        },
        {
          "name": "Cappuccino",
          "description": "With Chocolate",
          "price": 3.14,
          "imagePath":
              "assets/images/big-bang-unico-king-gold-42-mm-soldier-shot_0.png",
          "rating": 4.2,
        },
        {
          "name": "Cappuccino",
          "description": "With Chocolate",
          "price": 3.14,
          "imagePath":
              "assets/images/big-bang-unico-king-gold-ceramic-42-mm-soldier-shot.png",
          "rating": 4.2,
        },
        {
          "name": "Cappuccino",
          "description": "With Chocolate",
          "price": 3.14,
          "imagePath":
              "assets/images/big-bang-unico-titanium-42-mm-soldier-shot.png",
          "rating": 4.2,
        },
        {
          "name": "Cappuccino",
          "description": "With Chocolate",
          "price": 3.14,
          "imagePath":
              "assets/images/Big-Bang-Unico-Titanium-Blue-Ceramic-42-mm-soldier-shot.png",
          "rating": 4.2,
        },
        {
          "name": "Cappuccino",
          "description": "With Chocolate",
          "price": 3.14,
          "imagePath":
              "assets/images/Big-Bang-Unico-Titanium-Ceramic-42-mm-soldier-shot.png",
          "rating": 4.2,
        },
      ],
    },
    {
      "name": "CARTIER",
      "products": [
        {
          "name": "Cappuccino",
          "description": "With Oat Milk",
          "price": 4.20,
          "imagePath": "assets/images/5a6e30c284a059c2bb66ec1cd5660cc7.png",
          "rating": 4.6,
        },
        {
          "name": "Cappuccino",
          "description": "With Chocolate",
          "price": 3.14,
          "imagePath": "assets/images/150ad2833e115855b2d810506c417e00.png",
          "rating": 4.2,
        },
        {
          "name": "Cappuccino",
          "description": "With Chocolate",
          "price": 3.14,
          "imagePath": "assets/images/5422c5fc673d5f9a8a41a1aecb8a87fa.png",
          "rating": 4.2,
        },
        {
          "name": "Cappuccino",
          "description": "With Chocolate",
          "price": 3.14,
          "imagePath": "assets/images/7281b1bdc7e653009d7afbf7833dfd83.png",
          "rating": 4.2,
        },
        {
          "name": "Cappuccino",
          "description": "With Chocolate",
          "price": 3.14,
          "imagePath": "assets/images/54402c5a408b55a18a1ee4939266b244.png",
          "rating": 4.2,
        },
        {
          "name": "Cappuccino",
          "description": "With Chocolate",
          "price": 3.14,
          "imagePath": "assets/images/479519d2d8b9595aa2b37abe8ecb1799.png",
          "rating": 4.2,
        },
        {
          "name": "Cappuccino",
          "description": "With Chocolate",
          "price": 3.14,
          "imagePath": "assets/images/ab421ed7d4355cda90cda269108e7dc0.png",
          "rating": 4.2,
        },
        {
          "name": "Cappuccino",
          "description": "With Chocolate",
          "price": 3.14,
          "imagePath": "assets/images/bef2c91283b35b56a0b0eee46615f033.png",
          "rating": 4.2,
        },
      ],
    },
    {
      "name": "G-SHOCK",
      "products": [
        {
          "name": "Cappuccino",
          "description": "With Oat Milk",
          "price": 4.20,
          "imagePath": "assets/images/dw-h5600-1-bnr.webp",
          "rating": 4.6,
        },
        {
          "name": "Cappuccino",
          "description": "With Chocolate",
          "price": 3.14,
          "imagePath": "assets/images/e30a1352d1265ab28f1a24cb6b4d40c7.png",
          "rating": 4.2,
        },
        {
          "name": "Cappuccino",
          "description": "With Chocolate",
          "price": 3.14,
          "imagePath": "assets/images/gmw-b5000d-1-bnr.png",
          "rating": 4.2,
        },
        {
          "name": "Cappuccino",
          "description": "With Chocolate",
          "price": 3.14,
          "imagePath": "assets/images/gr-b300-1a-bnr-en.png",
          "rating": 4.2,
        },
        {
          "name": "Cappuccino",
          "description": "With Chocolate",
          "price": 3.14,
          "imagePath": "assets/images/gst-b600-1a-bnr.png",
          "rating": 4.2,
        },
        {
          "name": "Cappuccino",
          "description": "With Chocolate",
          "price": 3.14,
          "imagePath": "assets/images/gwg-b1000-1a-bnr.png",
          "rating": 4.2,
        },
        {
          "name": "Cappuccino",
          "description": "With Chocolate",
          "price": 3.14,
          "imagePath": "assets/images/kv-1920x816-logo.png",
          "rating": 4.2,
        },
        {
          "name": "Cappuccino",
          "description": "With Chocolate",
          "price": 3.14,
          "imagePath": "assets/images/mrg-b2100b-1a-bnr.png",
          "rating": 4.2,
        },
        {
          "name": "Cappuccino",
          "description": "With Chocolate",
          "price": 3.14,
          "imagePath": "assets/images/mtg-b3000d-1a-bnr.png",
          "rating": 4.2,
        },
        {
          "name": "Cappuccino",
          "description": "With Chocolate",
          "price": 3.14,
          "imagePath": "assets/images/products-m.png",
          "rating": 4.2,
        },
        {
          "name": "Cappuccino",
          "description": "With Chocolate",
          "price": 3.14,
          "imagePath": "assets/images/products-sp-m.png",
          "rating": 4.2,
        },
        {
          "name": "Cappuccino",
          "description": "With Chocolate",
          "price": 3.14,
          "imagePath": "assets/images/products-sp-m (1).png",
          "rating": 4.2,
        },
      ],
    },
  ];

  // Carousel related properties
  final List<String> imagePaths = [
    "assets/images/products-m.png",
    "assets/images/c0ae8a1d2713509e828829afa855ff05.png",
    "assets/images/products-sp-m.png",
    "assets/images/kv-1920x816-logo.png",
    "assets/images/products-sp-m (1).png"
  ];

  late List<Widget> _pages;
  int currentIndex = 0;
  late PageController _pageController;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
    _pages = List.generate(
      imagePaths.length,
      (index) => ImageCarousel(imagePath: imagePaths[index]),
    );

    _timer = Timer.periodic(const Duration(seconds: 3), (Timer timer) {
      if (currentIndex < imagePaths.length - 1) {
        currentIndex++;
      } else {
        currentIndex = 0;
      }

      _pageController.animateToPage(
        currentIndex,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(top: 4.0, left: 24.0, right: 24.0),
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header Section
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    CupertinoIcons.bars,
                    color: Colors.white,
                    size: 24.0,
                  ),
                  Image.asset("assets/images/logo.png", height: 200.0),
                  GestureDetector(
                    onTap: () {
                      Get.to(() => const CartScreen(),
                          transition: Transition.fade,
                          duration: const Duration(seconds: 1));
                    },
                    child: const Icon(
                      CupertinoIcons.cart,
                      color: Colors.white,
                      size: 24.0,
                    ),
                  ),
                ],
              ),
              // Carousel Section
              Stack(
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height / 4,
                    child: PageView.builder(
                      controller: _pageController,
                      itemCount: imagePaths.length,
                      onPageChanged: (index) {
                        setState(() {
                          currentIndex = index;
                        });
                      },
                      itemBuilder: (context, index) {
                        return _pages[index];
                      },
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    left: 0,
                    right: 0,
                    child: Container(
                      color: Colors.transparent,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List<Widget>.generate(
                          _pages.length,
                          (index) => Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 3),
                            child: CircleAvatar(
                              radius: 4,
                              backgroundColor: currentIndex == index
                                  ? Colors.white
                                  : Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              // Title Section
              const Text(
                "Explore \nTop Brand Watches",
                style: TextStyle(
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 20),
              // Search Box
              Container(
                width: double.maxFinite,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  children: [
                    const SizedBox(width: 15),
                    const Icon(Icons.search, color: Colors.white),
                    const SizedBox(width: 15),
                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration(
                          hintText: "Find your Watch",
                          hintStyle: TextStyle(color: Colors.white),
                          border: InputBorder.none,
                        ),
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              // Category & Product List Section
              ...categories.map((category) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BoldText(
                      text: category["name"],
                      size: 24,
                      color: Colors.white,
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      width: double.maxFinite,
                      height: 260,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: category["products"].length,
                        itemBuilder: (context, index) {
                          final product = category["products"][index];
                          return Container(
                            margin: const EdgeInsets.only(right: 20),
                            height: 250,
                            width: 160,
                            decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(.1),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Stack(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Stack(
                                    children: [
                                      Container(
                                        height: 160,
                                        width: 140,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage(
                                                product["imagePath"]),
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                      ),
                                      Opacity(
                                        opacity: 0.6,
                                        child: Container(
                                          margin:
                                              const EdgeInsets.only(left: 80),
                                          height: 20,
                                          width: 60,
                                          decoration: const BoxDecoration(
                                            color: Colors.black,
                                            borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(20),
                                              bottomLeft: Radius.circular(20),
                                            ),
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              const Icon(
                                                Icons.star,
                                                color: Colors.white,
                                                size: 15,
                                              ),
                                              BoldText(
                                                text: product["rating"]
                                                    .toString(),
                                                size: 12,
                                                color: Colors.white,
                                              ),
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 170, left: 15),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      BoldText(
                                        text: product["name"],
                                        size: 20,
                                        color: Colors.white,
                                      ),
                                      BoldText(
                                        text: product["description"],
                                        size: 12,
                                        color: Colors.white,
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 10),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                const BoldText(
                                                  text: "\$",
                                                  size: 12,
                                                  color: Colors.white,
                                                ),
                                                const SizedBox(width: 3),
                                                BoldText(
                                                  text: product["price"]
                                                      .toStringAsFixed(2),
                                                  size: 10,
                                                  color: Colors.white,
                                                ),
                                              ],
                                            ),
                                            GestureDetector(
                                              onTap: () {
                                                Provider.of<Cart>(context,
                                                        listen: false)
                                                    .addItem(
                                                        product["productId"],
                                                        product["price"],
                                                        product["name"]);
                                                ScaffoldMessenger.of(context)
                                                    .showSnackBar(
                                                  SnackBar(
                                                    content: Text(
                                                        '${product['name']} added to cart'),
                                                    duration: const Duration(
                                                        seconds: 2),
                                                  ),
                                                );
                                              },
                                              child: Container(
                                                width: 30,
                                                height: 30,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                ),
                                                child: const Icon(Icons.add),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 30),
                  ],
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}

class BoldText extends StatelessWidget {
  final String text;
  final double size;
  final Color color;

  const BoldText({
    super.key,
    required this.text,
    required this.size,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: size,
        color: color,
      ),
    );
  }
}

class ImageCarousel extends StatelessWidget {
  final String imagePath;

  const ImageCarousel({
    super.key,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
