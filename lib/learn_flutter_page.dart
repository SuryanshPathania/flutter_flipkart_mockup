
// import 'package:flutter/material.dart';

// class LearnFlutterPage extends StatefulWidget {
//   const LearnFlutterPage({super.key});

//   @override
//   State<LearnFlutterPage> createState() => LearnFlutterPageState();
// }

// class LearnFlutterPageState extends State<LearnFlutterPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Flipkart'),
//         automaticallyImplyLeading: false,
//         leading: IconButton(
//           onPressed: () {
//             Navigator.of(context).pop();
//           },
//           icon: const Icon(Icons.arrow_back_ios),
//         ),
//       ),
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Image.asset(
//             'images/download.jpg', // Flipkart banner
//             width: double.infinity,
//             fit: BoxFit.cover,
//           ),
//           const SizedBox(height: 10),
//           const Padding(
//             padding: EdgeInsets.symmetric(horizontal: 12.0),
//             child: Text(
//               "Deals of the Day",
//               style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//             ),
//           ),
//           const SizedBox(height: 10),
//           SizedBox(
//             height: 150,
//             child: ListView(
//               scrollDirection: Axis.horizontal,
//               padding: const EdgeInsets.symmetric(horizontal: 8.0),
//               children: const [
//                 ProductCard(
//                   imagePath: 'images/product1.jpg',
//                   title: 'Wireless Earbuds',
//                   price: '₹1,299',
//                 ),
//                 ProductCard(
//                   imagePath: 'images/product2.jpg',
//                   title: 'Smartwatch',
//                   price: '₹2,499',
//                 ),
//                 ProductCard(
//                   imagePath: 'images/product3.jpg',
//                   title: 'Bluetooth Speaker',
//                   price: '₹999',
//                 ),
//                 ProductCard(
//                   imagePath: 'images/product4.jpg',
//                   title: 'Power Bank',
//                   price: '₹799',
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class ProductCard extends StatelessWidget {
//   final String imagePath;
//   final String title;
//   final String price;

//   const ProductCard({
//     super.key,
//     required this.imagePath,
//     required this.title,
//     required this.price,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 160,
//       margin: const EdgeInsets.symmetric(horizontal: 8.0),
//       child: Card(
//         elevation: 3,
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Column(
//             children: [
//               Expanded(
//                 child: Image.asset(
//                   imagePath,
//                   fit: BoxFit.cover,
//                 ),
//               ),
//               const SizedBox(height: 8),
//               Text(
//                 title,
//                 style: const TextStyle(fontWeight: FontWeight.bold),
//                 textAlign: TextAlign.center,
//               ),
//               const SizedBox(height: 4),
//               Text(
//                 price,
//                 style: const TextStyle(color: Colors.green),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }





import 'package:flutter/material.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({super.key});

  @override
  State<LearnFlutterPage> createState() => LearnFlutterPageState();
}

class LearnFlutterPageState extends State<LearnFlutterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flipkart'),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'images/download.jpg', // Flipkart banner
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.0),
              child: Text(
                "Deals of the Day",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 160,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                children: const [
                  ProductCard(
                    imagePath: 'images/product1.jpg',
                    title: 'Wireless Earbuds',
                    price: '₹1,299',
                  ),
                  ProductCard(
                    imagePath: 'images/product2.jpg',
                    title: 'Smartwatch',
                    price: '₹2,499',
                  ),
                  ProductCard(
                    imagePath: 'images/product3.jpg',
                    title: 'Bluetooth Speaker',
                    price: '₹999',
                  ),
                  ProductCard(
                    imagePath: 'images/product4.jpg',
                    title: 'Power Bank',
                    price: '₹799',
                  ),
                ],
              ),
            ),

            // Top Picks
            const Padding(
              padding: EdgeInsets.fromLTRB(12, 20, 12, 10),
              child: Text(
                "Top Picks for You",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.all(8.0),
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              childAspectRatio: 3 / 4,
              children: const [
                ProductCard(
                  imagePath: 'images/product5.jpg',
                  title: 'Mobile Phone',
                  price: '₹14,999',
                ),
                ProductCard(
                  imagePath: 'images/product6.jpg',
                  title: 'Gaming Mouse',
                  price: '₹1,999',
                ),
                ProductCard(
                  imagePath: 'images/product7.jpg',
                  title: 'Backpack',
                  price: '₹899',
                ),
                ProductCard(
                  imagePath: 'images/product8.jpg',
                  title: 'Wired Headphones',
                  price: '₹699',
                ),
              ],
            ),

            // Recommended Categories
            const Padding(
              padding: EdgeInsets.fromLTRB(12, 20, 12, 10),
              child: Text(
                "Recommended Categories",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 80,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                children: const [
                  CategoryChip(label: 'Mobiles'),
                  CategoryChip(label: 'Electronics'),
                  CategoryChip(label: 'Fashion'),
                  CategoryChip(label: 'Home'),
                  CategoryChip(label: 'Beauty'),
                  CategoryChip(label: 'Sports'),
                ],
              ),
            ),

            // Trending
            const Padding(
              padding: EdgeInsets.fromLTRB(12, 20, 12, 10),
              child: Text(
                "Trending Now",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            const ListTile(
              leading: Icon(Icons.trending_up, color: Colors.deepPurple),
              title: Text('Realme Narzo N55 launches today'),
              subtitle: Text('Starts from ₹10,999'),
              trailing: Icon(Icons.arrow_forward_ios, size: 16),
            ),
            const Divider(),
            const ListTile(
              leading: Icon(Icons.trending_up, color: Colors.deepPurple),
              title: Text('Boat Rockerz 450 on Big Sale'),
              subtitle: Text('Now at ₹999'),
              trailing: Icon(Icons.arrow_forward_ios, size: 16),
            ),
          ],
        ),
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String price;

  const ProductCard({
    super.key,
    required this.imagePath,
    required this.title,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Tapped on $title')),
        );
      },
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Text(
                title,
                style: const TextStyle(fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 4),
              Text(
                price,
                style: const TextStyle(color: Colors.green),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CategoryChip extends StatelessWidget {
  final String label;
  const CategoryChip({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 6.0),
      child: Chip(
        label: Text(label),
        backgroundColor: Colors.blue.shade50,
        labelStyle: const TextStyle(fontWeight: FontWeight.w500),
      ),
    );
  }
}
    