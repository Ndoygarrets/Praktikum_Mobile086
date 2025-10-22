import 'package:flutter/material.dart';
import 'profile_page.dart';


class CoffeeHomePage extends StatefulWidget {
  const CoffeeHomePage({super.key});

  @override
  State<CoffeeHomePage> createState() => _CoffeeHomePageState();
}

class _CoffeeHomePageState extends State<CoffeeHomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    if (index == 2) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const ProfilePage()),
      );
    } else {
      setState(() {
        _selectedIndex = index;
      });
    }
  }

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
                color: Color.fromARGB(255, 184, 102, 8), // Brown color
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
                              color: const Color.fromARGB(
                                255,
                                230,
                                137,
                                66,
                              ).withOpacity(0.2),
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
                  color: const Color(0xFFA86B23),
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
                  borderRadius: BorderRadius.circular(18),
                  image: const DecorationImage(
                    image: AssetImage(
                      'assets/special_offer.jpg',
                    ), // Ganti dengan path gambar Anda
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                      Color.fromARGB(147, 255, 184, 143),
                      BlendMode.darken,
                    ),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'SPECIAL OFFER THIS WEEKEND',
                        style: TextStyle(
                          color: Color.fromARGB(255, 201, 175, 111),
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text.rich(
                        TextSpan(
                          text: 'GET ',
                          style: TextStyle(
                            color: Color.fromARGB(221, 255, 255, 255),
                            fontSize: 16,
                          ),
                          children: [
                            TextSpan(
                              text: '50% OFF',
                              style: TextStyle(
                                color: Color.fromARGB(255, 201, 175, 111),
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            TextSpan(text: ' FOR THE FIRST MEMBERS'),
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
                  color: Color.fromARGB(255, 109, 57, 39),
                ),
              ),
            ),
            const SizedBox(height: 10),
            // Promo card 2
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                height: 110,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                    image: AssetImage(
                      'assets/week.jpg',
                    ), // background kopi
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                      Color.fromARGB(147, 255, 184, 143),
                      BlendMode.darken,
                    ),
                  ),
                ),
                child: Row(
                  children: [
                    // Gambar kopi bulat
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(
                          100,
                        ), // Membuat bentuk lingkaran
                        child: Image.asset(
                          'assets/coffe_bulat.jpg',
                          width: 85,
                          height: 85,
                          fit: BoxFit.cover,
                          

                        ),
                      ),
                    ),

                    // Teks di sebelah kanan
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'THIS WEEK BUY ',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                  ),
                                  TextSpan(
                                    text: '1 GET 1 ',
                                    style: TextStyle(
                                      color: Colors.lightGreen,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'ESPRESSO',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              'ONLY AT PANDHAWA STORE',
                              style: TextStyle(
                                color: Color.fromARGB(255, 201, 175, 111),
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
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
                  color: const Color(0xFFA86B23),
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
                      Icon(
                        Icons.camera_alt,
                        color: Colors.grey,
                        size: 20,
                      ), // Used as Instagram alternative
                      SizedBox(width: 10),
                      Text(
                        '@pandhawa.coffee',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'Menu'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.brown,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped ,
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
        label: Text(
          label,
          style: TextStyle(color: selected ? Colors.white : Colors.brown),
        ),
        backgroundColor: selected
            ? const Color.fromARGB(255, 152, 152, 152)
            : Colors.grey[200],
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
    );
  }
}

class _CoffeeCard extends StatelessWidget {
  final String name;
  final String price;
  final double rating;
  const _CoffeeCard({
    required this.name,
    required this.price,
    required this.rating,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 6, offset: Offset(0, 2)),
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
            child: AspectRatio(
              aspectRatio: 1.5,
              child: Image.asset(
                'assets/coffee.jpg',
                
                fit: BoxFit.cover,
                alignment: Alignment.center,
                errorBuilder: (context, error, stackTrace) => Container(
                  color: Colors.grey[300],
                  child: Icon(Icons.coffee, size: 40, color: Colors.grey[600]),
                ),

              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name, style: const TextStyle(color: Colors.brown, fontWeight: FontWeight.bold)),
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
                backgroundColor: const Color.fromRGBO(121, 85, 72, 1),
                radius: 16,
                child: const Icon(Icons.add, color: Color(0xFFE8E8E8), size: 18),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
// ...existing code...