import 'package:flutter/material.dart';

void main() {
  runApp(const Fierce());
}

class Fierce extends StatelessWidget {
  const Fierce({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'I Am Fierce!',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Colors.pinkAccent,
          secondary: Colors.pink[300],
        ),
      ),
      home: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    MediaQuery.of(context).orientation == Orientation.portrait
                        ? 'https://cdn.wallpapersafari.com/83/73/qUGaSc.jpg'
                        : 'https://wallpaperaccess.com/full/4582535.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              title: const Text('I Am Fierce!'),
            ),
            body: Center(
              child: MediaQuery.of(context).orientation == Orientation.portrait
                  ? const PortraitImage()
                  : const LandscapeImage(),
            ),
          ),
        ],
      ),
    );
  }
}

class LandscapeImage extends StatelessWidget {
  const LandscapeImage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Image(
      image: NetworkImage(
          'https://pnglib.nyc3.cdn.digitaloceanspaces.com/uploads/2020/01/rupaul-glam_5e0cfd2f9d4ca.png'),
    );
  }
}

class PortraitImage extends StatelessWidget {
  const PortraitImage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        Image(
          image: NetworkImage(
              'https://store.worldofwonder.com/cdn/shop/products/pinkbadgeupdated.png?v=1639115277'),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(60.0, 0, 0, 50.0),
          child: Image(
            image: AssetImage('images/RuPaul.png'),
            width: 210.0,
          ),
        ),
      ],
    );
  }
}
