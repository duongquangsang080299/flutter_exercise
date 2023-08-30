import 'package:flutter/material.dart';

class SCCard extends StatelessWidget {
  const SCCard({
    this.title,
    this.subtitle,
    this.backgroundColor,
    super.key,
    this.image,
    this.widthImage,
    this.heightImage,
  });

  const factory SCCard.matchCard({
    required String title,
    required String subtitle,
    Color? backgroundColor,
    Key? key,
  }) = _MatchCard;

  const factory SCCard.imageCard({
    required ImageProvider<Object> image,
    double? widthImage,
    double? heightImage,
    Key? key,
  }) = _ImageCard;
  const factory SCCard.boxCard({
    required String title,
    required String subtitle,
    required Color backgroundColor,
    Key? key,
  }) = _BoxCard;

  final String? title;
  final String? subtitle;
  final ImageProvider<Object>? image;
  final Color? backgroundColor;
  final double? widthImage;
  final double? heightImage;

  @override
  Widget build(BuildContext context) {
    return const Card();
  }
}

class _BoxCard extends SCCard {
  const _BoxCard({
    super.title,
    super.subtitle,
    super.backgroundColor,
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title!,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              subtitle!,
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

class _ImageCard extends SCCard {
  const _ImageCard({
    required super.image,
    super.key,
    super.heightImage,
    super.widthImage,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 121,
      height: 123,
      child: Card(
        child: Image(
          image: image!,
        ),
      ),
    );
  }
}

class _MatchCard extends SCCard {
  const _MatchCard({
    required super.title,
    required super.subtitle,
    super.key,
    super.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 142,
      width: MediaQuery.of(context).size.width,
      child: Card(
        color: Colors.white,
        elevation: 0,
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Color(0xFFF3F3F3),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(''), 
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.more_vert_outlined,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0, 5),
                      blurRadius: 5,
                    ),
                  ],
                ),
                child: const Padding(
                  padding: EdgeInsets.only(left: 21, right: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.email, color: Colors.amber),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 13,
                            ),
                            child: Column(
                              children: [
                                Text('123'),
                                Text('123'),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.chrome_reader_mode),
                          SizedBox(
                            width: 10,
                          ),
                          Text('Champ')
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
