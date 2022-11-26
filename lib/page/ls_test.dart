import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const ls_test());
}

class ls_test extends StatelessWidget {
  const ls_test({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'MyApp Demo',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Frame56Widget(),
        ),
      ),
    );
  }
}

class Frame56Widget extends StatelessWidget {
  const Frame56Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 173,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            top: 36,
            child: Container(
              width: 173,
              height: 149,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(19),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0x3F000000),
                    spreadRadius: 0,
                    offset: Offset(0, 4),
                    blurRadius: 4,
                  )
                ],
              ),
            ),
          ),
          Container(
            width: 173,
            height: 123,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: NetworkImage(
                  'https://firebasestorage.googleapis.com/v0/b/codeless-app.appspot.com/o/projects%2FCwRkebQ8x2P8pbISCOr8%2F40213572cdef3383bccc4940b50d725f?alt=media&token=b6e8b82d-1603-4cd2-9c65-312c8e78827c',
                ),
                fit: BoxFit.contain,
              ),
              borderRadius: BorderRadius.circular(19),
              boxShadow: const [
                BoxShadow(
                  color: Color(0x28000000),
                  spreadRadius: 0,
                  offset: Offset(0, 4),
                  blurRadius: 4,
                )
              ],
            ),
          ),
          Positioned(
            top: 84,
            child: Container(
              width: 173,
              height: 39,
              clipBehavior: Clip.antiAlias,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(19),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x28000000),
                    spreadRadius: 0,
                    offset: Offset(0, 4),
                    blurRadius: 4,
                  )
                ],
                gradient: LinearGradient(
                  colors: [Colors.transparent, Colors.black],
                  transform: GradientRotation(90 * pi / 180),
                ),
              ),
            ),
          ),
          Positioned(
            left: 128,
            top: 111,
            child: Container(
              width: 34,
              height: 34,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0x3F000000),
                    spreadRadius: 0,
                    offset: Offset(0, 4),
                    blurRadius: 4,
                  )
                ],
              ),
            ),
          ),
          Positioned(
            left: 137,
            top: 124,
            child: Image.network(
              'https://firebasestorage.googleapis.com/v0/b/codeless-app.appspot.com/o/projects%2FCwRkebQ8x2P8pbISCOr8%2Fcc0ccd3c3139745d673fe5638acf7b09?alt=media&token=195051c5-83cd-4bbf-ba46-68a7b73dd90a',
              width: 16,
              height: 19,
              fit: BoxFit.contain,
            ),
          ),
          Positioned(
            left: 27,
            top: 101,
            child: Text(
              'Candi Borobudur',
              style: TextStyle(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: 11,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Positioned(
            left: 8,
            top: 127,
            child: Text(
              'Magelang, Jawa Tengah',
              style: TextStyle(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: 9,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Positioned(
            left: 9,
            top: 161,
            child: SizedBox(
              width: 54,
              height: 11,
              child: Text(
                'Lihat Review',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: const Color(0xFF979797),
                  fontSize: 8,
                  fontWeight: FontWeight.w500,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ),
          Positioned(
            left: 11,
            top: 15,
            child: Image.network(
              'https://firebasestorage.googleapis.com/v0/b/codeless-app.appspot.com/o/projects%2FCwRkebQ8x2P8pbISCOr8%2F791f7248b71c860304b2f58ee3ebc783?alt=media&token=6c5a02ec-693c-43dd-b867-f316b8e524a4',
              width: 14,
              height: 12,
              fit: BoxFit.contain,
            ),
          )
        ],
      ),
    );
  }
}
