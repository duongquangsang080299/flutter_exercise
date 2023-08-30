import 'package:flutter/material.dart';

class SCCard extends StatelessWidget {
  const SCCard({
    required this.title,
    required this.subtitle,
    required this.backgroundColor,
    super.key,
  });

  factory SCCard.matchCard({
    required String title,
    required String subtitle,
  }) {
    return SCCard(
      title: title,
      subtitle: subtitle,
      backgroundColor: Colors.grey,
    );
  }

  factory SCCard.imageCard({
    required String title,
    required String subtitle,
    required Color backgroundColor,
  }) {
    return SCCard(
      title: title,
      subtitle: subtitle,
      backgroundColor: backgroundColor,
    );
  }

  final String title;
  final String subtitle;

  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: backgroundColor,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              subtitle,
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       color: backgroundColor,
//       elevation: 4,
//       child: Column(
//         children: [
//           Container(
//             width: double.infinity,
//             height: 150,
//             decoration: BoxDecoration(
//               color: backgroundColor,
//               borderRadius: const BorderRadius.only(
//                 topLeft: Radius.circular(20),
//                 topRight: Radius.circular(20),
//               ),
//             ),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Image.asset(''), // Use the provided image path here
//                 IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
//               ],
//             ),
//           ),
//           Container(
//             width: double.infinity,
//             height: 100,
//             decoration: const BoxDecoration(
//               color: Color.fromARGB(255, 63, 61, 61),
//               borderRadius: BorderRadius.only(
//                 bottomLeft: Radius.circular(20),
//                 bottomRight: Radius.circular(20),
//               ),
//             ),
//             child: const Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 Icon(Icons.email, color: Colors.amber),
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(''),
//                     Text(''),
//                   ],
//                 ),
//                 Icon(Icons.chrome_reader_mode),
//                 SizedBox(width: 10),
//                 Text('data'),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
