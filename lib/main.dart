import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pandhawa Coffee',
      theme: ThemeData(
        primarySwatch: Colors.grey,
        fontFamily: 'Arial',
      ),
      home: const CoffeeHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class CoffeeHomePage extends StatelessWidget {
  const CoffeeHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header section with brown background
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 53, 52, 52), // Brown color
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Header with back button and title
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: IconButton(
                              icon: const Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                                size: 25,
                              ),
                              onPressed: () => Navigator.pop(context),
                            ),
                          ),
                          const Expanded(
                            child: Center(
                              child: Text(
                                'Pandhawa Coffee',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 48), // Balance the back button
                        ],
                      ),
                      const SizedBox(height: 20),
                      // Coffee description text
                      const Text(
                        "Dengan tiupan angin yang lembut dan sinar mentari yang memancar hangat, suasana pagi di Pandhawa Coffee terasa begitu memikat. Di sini, setiap cangkir bukan hanya sebuah minuman, tapi juga karya seni yang memancarkan keindahan. Ketika aroma kopi segar menari-nari di udara, jiwa pun terhanyut dalam ketenangan. Di meja kayu yang elegan, secangkir Pandhawa Coffee disajikan",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          height: 1.5,
                        ),
                      ),
                     
                    ],
                  ),
                ),
              ),
            ),
            // Search bar section
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(25),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: 'Find your best coffee',
                    prefixIcon: Icon(Icons.search, color: Colors.grey),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 15,
                    ),
                  ),
                ),
              ),
            ),
            // Kategori menu
            SizedBox(
              height: 50,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _CategoryChip(label: 'Cappucino', selected: true),
                  _CategoryChip(label: 'Latte'),
                  _CategoryChip(label: 'Americano'),
                  _CategoryChip(label: 'Expresso'),
                  _CategoryChip(label: 'Oat'),
                ],
              ),
            ),
            const SizedBox(height: 10),
            // Produk kopi
            SizedBox(
              height: 220,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _CoffeeCard(
                    name: 'Cappucino',
                    price: 'Rp 20.000',
                    rating: 4.5,
                  ),
                  _CoffeeCard(
                    name: 'White Coffe Caramel',
                    price: 'Rp 15.000',
                    rating: 4.5,
                  ),
                  _CoffeeCard(
                    name: 'Macchiato',
                    price: 'Rp 25.000',
                    rating: 4.5,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            // Promo bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 8),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 94, 93, 93),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Center(
                  child: Text(
                    'OFFER THIS WEEK, BUY NOW!!',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            // Promo card 1
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey[400], // Background abu-abu
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'SPECIAL OFFER THIS WEEKEND',
                        style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text.rich(
                        TextSpan(
                          text: 'GET ',
                          style: TextStyle(color: Colors.black87, fontSize: 16),
                          children: [
                            TextSpan(
                              text: '50% OFF',
                              style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            TextSpan(
                              text: ' FOR THE FIRST MEMBERS',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Judul section
            const Center(
              child: Text(
                'Pandhawa Coffee',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Color.fromARGB(255, 85, 85, 85),
                ),
              ),
            ),
            const SizedBox(height: 10),
            // Promo card 2
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey[400], // Background abu-abu
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.grey[300], // Placeholder gambar abu-abu
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(18),
                          bottomLeft: Radius.circular(18),
                        ),
                      ),
                      child: Icon(
                        Icons.coffee_outlined,
                        size: 40,
                        color: Colors.grey[600],
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'THIS WEEK BUY 1 GET 1 ESPRESSO',
                              style: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              'ONLY AT PANDHAWA STORE',
                              style: TextStyle(
                                color: Colors.black87,
                                fontSize: 14,
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
            const SizedBox(height: 10),
            // Promo bar bawah
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 8),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 118, 118, 118),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Center(
                  child: Text(
                    'REST YOUR DAY WITH A CUP COFFEE',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Footer
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: Column(
                children: const [
                  Text(
                    'Follow more for information',
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.facebook, color: Colors.grey, size: 20),
                      SizedBox(width: 10),
                      Icon(Icons.camera_alt, color: Colors.grey, size: 20), // Used as Instagram alternative
                      SizedBox(width: 10),
                      Text('@pandhawa.coffee', style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Tambahkan widget helper di bawah ini
class _CategoryChip extends StatelessWidget {
  final String label;
  final bool selected;
  const _CategoryChip({required this.label, this.selected = false});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6.0),
      child: Chip(
        label: Text(label, style: TextStyle(color: selected ? Colors.white : Colors.brown)),
        backgroundColor: selected ? const Color.fromARGB(255, 152, 152, 152) : Colors.grey[200],
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
    );
  }
}

class _CoffeeCard extends StatelessWidget {
  final String name;
  final String price;
  final double rating;
  const _CoffeeCard({required this.name, required this.price, required this.rating});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 6,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
            ),
            child: Container(
              height: 90,
              width: double.infinity,
              color: Colors.grey[300], // Placeholder warna abu-abu
              child: Icon(
                Icons.coffee,
                size: 40,
                color: Colors.grey[600],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
                Text(price, style: const TextStyle(color: Colors.brown)),
                Row(
                  children: [
                    const Icon(Icons.star, color: Colors.amber, size: 16),
                    Text(rating.toString()),
                  ],
                ),
              ],
            ),
          ),
          const Spacer(),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 8.0, bottom: 8.0),
              child: CircleAvatar(
                backgroundColor: const Color.fromARGB(255, 110, 110, 110),
                radius: 16,
                child: const Icon(Icons.add, color: Colors.white, size: 18),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
