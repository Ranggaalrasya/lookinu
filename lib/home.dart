import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                (Expanded(
                  child: CustomScrollView(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    slivers: [
                      SliverAppBar(
                        backgroundColor: Colors.transparent,
                        expandedHeight: 270,
                        floating: true,
                        pinned: true,
                        flexibleSpace: FlexibleSpaceBar(
                          background: Image.asset(
                            'asset/images/home.png',
                            fit: BoxFit.fill,
                          ),
                          title: GestureDetector(
                            onTap: () async {
                              await showDialog(
                                  context: context,
                                  builder: (_) => ImageDialog());
                            },
                            child: Container(
                              child: Stack(children: [
                                Image.asset(
                                  'asset/images/sb.png',
                                  width: 201,
                                  height: 32,
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 6, left: 29),
                                  // child:
                                  child: AnimatedTextKit(
                                    animatedTexts: [
                                      TyperAnimatedText('Museum',
                                          textStyle: TextStyle(
                                              fontSize: 11,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w400,
                                              color: Color.fromARGB(
                                                  255, 190, 190, 190)),
                                          speed: Duration(milliseconds: 100)),
                                      TyperAnimatedText('Pantai',
                                          textStyle: TextStyle(
                                              fontSize: 11,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w400,
                                              color: Color.fromARGB(
                                                  255, 190, 190, 190)),
                                          speed: Duration(milliseconds: 100)),
                                      TyperAnimatedText('GH #7',
                                          textStyle: TextStyle(
                                              fontSize: 11,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w400,
                                              color: Color.fromARGB(
                                                  255, 190, 190, 190)),
                                          speed: Duration(milliseconds: 100)),
                                      TyperAnimatedText('OYO',
                                          textStyle: TextStyle(
                                              fontSize: 11,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w400,
                                              color: Color.fromARGB(
                                                  255, 190, 190, 190)),
                                          speed: Duration(milliseconds: 100)),
                                    ],
                                    repeatForever: true,
                                    pause: const Duration(milliseconds: 2000),
                                    onTap: () {
                                      print("Tap Event");
                                    },
                                  ),
                                ),
                              ]),
                            ),
                          ),
                          centerTitle: true,
                        ),
                      ),
                    ],
                  ),
                )),
              ],
            ),
            Center(
              child: Image.asset(
                'asset/images/banner_1.png',
                width: 330,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8, left: 16),
              child: Text("Bingung mau kemana?",
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      color: Color.fromARGB(255, 0, 0, 0))),
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              children: [
                Padding(padding: EdgeInsets.only(top: 10, left: 30)),
                Image.asset(
                  'asset/images/icon/pantai-ico.png',
                  width: 60,
                ),
                Padding(padding: EdgeInsets.only(top: 10, left: 20)),
                Image.asset(
                  'asset/images/icon/bukit-ico.png',
                  width: 65,
                ),
                Padding(padding: EdgeInsets.only(top: 10, left: 20)),
                Image.asset(
                  'asset/images/icon/muse-ico.png',
                  width: 62,
                ),
                Padding(padding: EdgeInsets.only(top: 10, left: 20)),
                Image.asset(
                  'asset/images/icon/lain-ico.png',
                  width: 60,
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 8, left: 16),
              child: Text("Rekomendasi Tempat Wisata",
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      color: Color.fromARGB(255, 0, 0, 0))),
            ),
            SizedBox(
              height: 8,
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  child: Container(
                    child: (SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 150,
                      child: ListView.builder(
                        itemCount: 10,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Color.fromARGB(255, 255, 255, 255),
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromRGBO(0, 0, 0, 0.25),
                                  offset: Offset(0, 4),
                                  blurRadius: 4)
                            ],
                          ),
                          height: 150,
                          width: 150,
                          margin: EdgeInsets.all(10),
                          child: Center(
                            child: Text(
                              "Kamu $index ?",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 0, 0, 0)),
                            ),
                          ),
                        ),
                      ),
                    )),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 8, left: 16),
              child: Text("Tempat Wisata Paling Dekat dengamu!",
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      color: Color.fromARGB(255, 0, 0, 0))),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 150,
                  child: ListView.builder(
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Color.fromARGB(255, 255, 255, 255),
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.25),
                              offset: Offset(0, 4),
                              blurRadius: 4)
                        ],
                      ),
                      height: 150,
                      width: 150,
                      margin: EdgeInsets.all(10),
                      child: Center(
                        child: Text(
                          "Kamu $index ?",
                          style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 8, left: 16),
              child: Text("Tempat wisata terpopuler",
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      color: Color.fromARGB(255, 0, 0, 0))),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 150,
                  child: ListView.builder(
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Color.fromARGB(255, 255, 255, 255),
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.25),
                              offset: Offset(0, 4),
                              blurRadius: 4)
                        ],
                      ),
                      height: 150,
                      width: 150,
                      margin: EdgeInsets.all(10),
                      child: Center(
                        child: Text(
                          "Kamu $index ?",
                          style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ImageDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
        child: Container(
      width: 200,
      height: 200,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: ExactAssetImage('asset/images/kamunanya.jpg'),
              fit: BoxFit.cover)),
    ));
  }
}
