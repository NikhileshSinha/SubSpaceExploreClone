import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery. of(context). size. width ;
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        brightness: Brightness.dark,
        backgroundColor: Colors.black87,
        elevation: 0.0,
        toolbarHeight: 60,
        title: const Text("Explore", style: TextStyle(fontSize: 25),),
        centerTitle: false,
        actions: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                minimumSize: const Size(40, 40),
                maximumSize: const Size(40, 40),
                padding: const EdgeInsets.all(7),

            ),
            child: const Icon(
              Icons.emoji_events,
              size: 25,
            ),
            onPressed: () {},
          ),

          ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: const CircleBorder(),
              minimumSize: const Size(40, 40),
              maximumSize: const Size(40, 40),
              padding: const EdgeInsets.all(7),
            ),

            child: const Icon(
              Icons.shopping_cart_rounded,
              size: 25,
            ),
            onPressed: () {},
          ),
          // add more IconButton
        ],
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              //borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
              /*gradient: LinearGradient(
                  colors: [Colors.red,Colors.pink],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter
              )*/
          ),
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: 1,
        backgroundColor: Colors.black87,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.white38,
        selectedFontSize: 14,
        unselectedFontSize: 14,
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.home),
            //backgroundColor: Colors.white,
            label: 'Home',

          ),

          const BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            //backgroundColor: Colors.white,
            label: 'Explore',
          ),

          const BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble),
            //backgroundColor: Colors.white,
            label: 'Chat',
          ),


          const BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet ),
            //backgroundColor: Colors.white,
            label: 'SubPay',
          ),

        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6.0),
                    gradient: const LinearGradient(
                      begin: Alignment(-0.95, 0.0),
                      end: Alignment(1.0, 0.0),
                      colors: [Color(0xff000B17), Color(0xff00152A)],
                      stops: [0.0, 1.0],
                    ),
                  ),
                child : ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.transparent,
                    minimumSize: const Size(500, 60),
                    elevation: 0,
                    shape: RoundedRectangleBorder(

                      borderRadius: BorderRadius.circular(5), // <-- Radius
                    ),
                  ),
                  onPressed: () {
                    // Respond to button press
                  },
                  icon: const Icon(Icons.currency_bitcoin, size: 18),
                  label: const Text('Play and earn coins      >>',
                    style: TextStyle(
                      fontSize: 25,
                      color: Color(0xffffffff),
                      letterSpacing: -0.3858822937011719,
                    ),
                  ),
                ),
              )
          ),

            Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: CarouselSlider(
              items: [
                Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    image: DecorationImage(
                      image: NetworkImage("https://i.postimg.cc/cHRc3brZ/Whats-App-Image-2022-09-28-at-7-36-57-PM.jpg"),
                      fit: BoxFit.cover,
                    )
                  ),
                ),

                Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      image: DecorationImage(
                        image: NetworkImage("https://i.postimg.cc/PqZbGRbZ/Whats-App-Image-2022-09-28-at-7-36-58-PM-1.jpg"),
                        fit: BoxFit.cover,
                      )
                  ),
                ),

                Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      image: DecorationImage(
                        image: NetworkImage("https://i.postimg.cc/y8R3WSJC/Whats-App-Image-2022-09-28-at-7-36-58-PM.jpg"),
                        fit: BoxFit.cover,
                      )
                  ),
                ),
              ],
              //Slider Container properties
              options: CarouselOptions(
                height: 180.0,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                viewportFraction: 0.8,
              ),
            ),
        ),

            Padding(
            padding: EdgeInsets.only(top: 20.0),
          ),

            Row(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child:
                  Text(" All Subscriptions",
                    style: TextStyle(fontSize: 24, color: Colors.white38, fontWeight: FontWeight.normal ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(left: width/7),
                ),

            Container(
              decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6.0),
              gradient: const LinearGradient(
              begin: Alignment(-0.95, 0.0),
              end: Alignment(1.0, 0.0),
              colors: [Color(0xff333333), Color(0xff404040)],
              stops: [0.0, 1.0],
              ),
              ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.transparent,
                    minimumSize: const Size(30, 30),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(1), // <-- Radius
                    ),
                  ),
                  onPressed: () {
                    // Respond to button press
                  },
                  //icon: const Icon(Icons.currency_bitcoin, size: 18),
                  child: Text('See More',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color(0xffDCC10E),
                      letterSpacing: -0.3858822937011719,
                    ),
                  ),
                ),
              ),
              ],
          ),

            Padding(
            padding: const EdgeInsets.only(top: 20.0),
          ),

            Container(
              height: 150,
              child: ListView(
              scrollDirection: Axis.horizontal,
                children: [
                  Container(
                  width: 130,
                  height: 130,
                    decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    image: DecorationImage(
                      image: NetworkImage("https://i.postimg.cc/P50zbcHS/Whats-App-Image-2022-09-29-at-7-55-18-PM.jpg"),
                    )
                    )
                  ),

                  Container(
                  width: 130,
                  height: 130,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      image: DecorationImage(
                      image: NetworkImage("https://i.postimg.cc/xCrdPw6T/Whats-App-Image-2022-09-29-at-7-55-18-PM-1.jpg"),
                    )
                    ),
            ),

            Container(
              width: 130,
              height: 130,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  image: DecorationImage(
                    image: NetworkImage("https://i.postimg.cc/qM7p2Bpx/Whats-App-Image-2022-09-29-at-7-55-19-PM.jpg"),
                  )
              ),
            ),
            Container(
              width: 130,
              height: 130,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  image: DecorationImage(
                    image: NetworkImage("https://i.postimg.cc/Bn6BKVYV/Whats-App-Image-2022-09-29-at-7-55-19-PM-1.jpg"),
                  )
              ),
            ),
            Container(
              width: 130,
              height: 130,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  image: DecorationImage(
                    image: NetworkImage("https://i.postimg.cc/RCdtLTH5/d5.jpg"),
                  )
              ),
            ),
            Container(
              width: 130,
              height: 130,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  image: DecorationImage(
                    image: NetworkImage("https://i.postimg.cc/SsqXWXQx/d6.jpg"),
                  )
              ),
            ),
            Container(
              width: 130,
              height: 130,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  image: DecorationImage(
                    image: NetworkImage("https://i.postimg.cc/mgC28b5z/d7.jpg"),
                  )
              ),
            ),
            Container(
              width: 130,
              height: 130,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  image: DecorationImage(
                    image: NetworkImage("https://i.postimg.cc/26czV3VJ/d8.jpg"),
                  )
              ),
            ),
            Container(
              width: 130,
              height: 130,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  image: DecorationImage(
                    image: NetworkImage("https://i.postimg.cc/W408NJfN/d9.jpg"),
                  )
              ),
            ),
            Container(
              width: 130,
              height: 130,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  image: DecorationImage(
                    image: NetworkImage("https://i.postimg.cc/wj4M1WZF/d10.jpg"),
                  )
              ),
            ),
          ],
        ),
      ),

            Padding(
            padding: EdgeInsets.only(top: 20.0),
          ),

            Row(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child:
                Text(" Public Groups",
                  style: TextStyle(fontSize: 24, color: Colors.white38, fontWeight: FontWeight.bold ),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(left: width/4.5),
              ),

              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6.0),
                  gradient: const LinearGradient(
                    begin: Alignment(-0.95, 0.0),
                    end: Alignment(1.0, 0.0),
                    colors: [Color(0xff333333), Color(0xff404040)],
                    stops: [0.0, 1.0],
                  ),
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.transparent,
                    minimumSize: const Size(30, 30),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(1), // <-- Radius
                    ),
                  ),
                  onPressed: () {
                    // Respond to button press
                  },
                  //icon: const Icon(Icons.currency_bitcoin, size: 18),
                  child: Text('See More',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color(0xffDCC10E),
                      letterSpacing: -0.3858822937011719,
                    ),
                  ),
                ),
              ),
            ],
          ),

            Padding(
            padding: EdgeInsets.only(top: 20.0),
          ),

            //column of yt, spotify, netflix
            Column(
              children:[
                Container(
                  color: Colors.black26,
                  height: 100,
                  width: width-10,
                  child: Row(
                    children: [
                      Image.network(
                        'https://cdn-icons-png.flaticon.com/512/1384/1384060.png',
                        width: 50, height: 50, fit: BoxFit.fill,
                      ),

                      Padding(
                          padding: EdgeInsets.symmetric(vertical: 16, horizontal: width/45)
                      ),

                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 16.0),
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child:
                                  Text(" Youtube Premiu...",
                                    style: TextStyle(fontSize: 14, color: Colors.white60, fontWeight: FontWeight.bold ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Padding(
                            padding: EdgeInsets.only(top: 10.0),
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.topCenter,
                                  child:
                                  Text("by sway",
                                    style: TextStyle(fontSize: 12, color: Colors.white60, fontWeight: FontWeight.bold ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Padding(
                            padding: EdgeInsets.only(top: 10.0),
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child:
                                  Text(" 5/6 friends...",
                                    style: TextStyle(fontSize: 14, color: Colors.blueAccent, fontWeight: FontWeight.bold ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),

                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 16, horizontal: width/35)
                      ),

                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 16.0),
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.topCenter,
                                  child:
                                  Text("₹38 / User / Month",
                                    style: TextStyle(fontSize: 13, color: Colors.white60, fontWeight: FontWeight.bold ),
                                  ),
                                ),

                              ],
                            ),
                          ),

                          Padding(padding: EdgeInsets.only(top:9),
                            child: Container(
                              width: 120,
                              height: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6.0),
                                gradient: const LinearGradient(
                                  begin: Alignment(-0.95, 0.0),
                                  end: Alignment(1.0, 0.0),
                                  colors: [Color(0xff4051B4), Color(0xff4051B4)],
                                  stops: [0.0, 1.0],
                                ),
                              ),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.transparent,
                                  minimumSize: const Size(30, 30),
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(1), // <-- Radius
                                  ),
                                ),
                                onPressed: () {
                                  // Respond to button press
                                },
                                //icon: const Icon(Icons.currency_bitcoin, size: 18),
                                child: Text('Join',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xffffffff),
                                    letterSpacing: -0.3858822937011719,
                                  ),
                                ),
                              ),
                            ),
                          ),

                          //Padding(
                            //padding: EdgeInsets.symmetric(vertical: 9, horizontal: ),
                          //),
                        ],
                      ),
                    ],
                  ),

                ),
                LinearProgressIndicator( value: .83,),

                Padding(
                  padding: EdgeInsets.only(top: 10.0),
                ),

                Container(
                  color: Colors.black26,
                  height: 100,
                  width: width-10,
                  child: Row(
                    children: [
                      Image.network(
                        'https://www.freepnglogos.com/uploads/spotify-logo-png/spotify-download-logo-30.png',
                        width: 50, height: 50, fit: BoxFit.fill,
                      ),

                      Padding(
                          padding: EdgeInsets.symmetric(vertical: 16, horizontal: width/45)
                      ),

                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 16.0),
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child:
                                  Text(" Spotify Family...",
                                    style: TextStyle(fontSize: 14, color: Colors.white60, fontWeight: FontWeight.bold ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Padding(
                            padding: EdgeInsets.only(top: 10.0),
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.topCenter,
                                  child:
                                  Text("by Weeshify⭐",
                                    style: TextStyle(fontSize: 12, color: Colors.white60, fontWeight: FontWeight.bold ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Padding(
                            padding: EdgeInsets.only(top: 10.0),
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child:
                                  Text(" 3/6 friends...",
                                    style: TextStyle(fontSize: 14, color: Colors.blueAccent, fontWeight: FontWeight.bold ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),

                      Padding(
                          padding: EdgeInsets.symmetric(vertical: 16, horizontal: width/22)
                      ),

                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 16.0),
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.topCenter,
                                  child:
                                  Text("₹100 / User / Quater",
                                    style: TextStyle(fontSize: 13, color: Colors.white60, fontWeight: FontWeight.bold ),
                                  ),
                                ),

                              ],
                            ),
                          ),

                          Padding(padding: EdgeInsets.only(top:9),
                            child: Container(
                              width: 120,
                              height: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6.0),
                                gradient: const LinearGradient(
                                  begin: Alignment(-0.95, 0.0),
                                  end: Alignment(1.0, 0.0),
                                  colors: [Color(0xff4051B4), Color(0xff4051B4)],
                                  stops: [0.0, 1.0],
                                ),
                              ),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.transparent,
                                  minimumSize: const Size(30, 30),
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(1), // <-- Radius
                                  ),
                                ),
                                onPressed: () {
                                  // Respond to button press
                                },
                                //icon: const Icon(Icons.currency_bitcoin, size: 18),
                                child: Text('Join',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xffffffff),
                                    letterSpacing: -0.3858822937011719,
                                  ),
                                ),
                              ),
                            ),
                          ),

                          //Padding(
                          //padding: EdgeInsets.symmetric(vertical: 9, horizontal: ),
                          //),
                        ],
                      ),

                    ],
                  ),
                ),
                LinearProgressIndicator( value: .50,),

                Padding(
                  padding: EdgeInsets.only(top: 10.0),
                ),

                Container(
                  color: Colors.black26,
                  height: 100,
                  width: width-10,
                  child: Row(
                    children: [
                      Image.network(
                        'https://cdn-icons-png.flaticon.com/512/1384/1384060.png',
                        width: 50, height: 50, fit: BoxFit.fill,
                      ),

                      Padding(
                          padding: EdgeInsets.symmetric(vertical: 16, horizontal: width/45)
                      ),

                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 16.0),
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child:
                                  Text(" Youtube Premiu...",
                                    style: TextStyle(fontSize: 14, color: Colors.white60, fontWeight: FontWeight.bold ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Padding(
                            padding: EdgeInsets.only(top: 10.0),
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.topCenter,
                                  child:
                                  Text("by sway",
                                    style: TextStyle(fontSize: 12, color: Colors.white60, fontWeight: FontWeight.bold ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Padding(
                            padding: EdgeInsets.only(top: 10.0),
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child:
                                  Text(" 5/6 friends...",
                                    style: TextStyle(fontSize: 14, color: Colors.blueAccent, fontWeight: FontWeight.bold ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),

                      Padding(
                          padding: EdgeInsets.symmetric(vertical: 16, horizontal: width/35)
                      ),

                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 16.0),
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.topCenter,
                                  child:
                                  Text("₹38 / User / Month",
                                    style: TextStyle(fontSize: 13, color: Colors.white60, fontWeight: FontWeight.bold ),
                                  ),
                                ),

                              ],
                            ),
                          ),

                          Padding(padding: EdgeInsets.only(top:9),
                            child: Container(
                              width: 120,
                              height: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6.0),
                                gradient: const LinearGradient(
                                  begin: Alignment(-0.95, 0.0),
                                  end: Alignment(1.0, 0.0),
                                  colors: [Color(0xff4051B4), Color(0xff4051B4)],
                                  stops: [0.0, 1.0],
                                ),
                              ),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.transparent,
                                  minimumSize: const Size(30, 30),
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(1), // <-- Radius
                                  ),
                                ),
                                onPressed: () {
                                  // Respond to button press
                                },
                                //icon: const Icon(Icons.currency_bitcoin, size: 18),
                                child: Text('Join',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xffffffff),
                                    letterSpacing: -0.3858822937011719,
                                  ),
                                ),
                              ),
                            ),
                          ),

                          //Padding(
                          //padding: EdgeInsets.symmetric(vertical: 9, horizontal: ),
                          //),
                        ],
                      ),
                    ],
                  ),

                ),
                LinearProgressIndicator( value: .83,),

                Padding(
                  padding: EdgeInsets.only(top: 10.0),
                ),

                Container(
                  color: Colors.black26,
                  height: 100,
                  width: width-10,
                  child: Row(
                    children: [
                      Image.network(
                        'https://www.freepnglogos.com/uploads/spotify-logo-png/spotify-download-logo-30.png',
                        width: 50, height: 50, fit: BoxFit.fill,
                      ),

                      Padding(
                          padding: EdgeInsets.symmetric(vertical: 16, horizontal: width/45)
                      ),

                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 16.0),
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child:
                                  Text(" Spotify Family...",
                                    style: TextStyle(fontSize: 14, color: Colors.white60, fontWeight: FontWeight.bold ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Padding(
                            padding: EdgeInsets.only(top: 10.0),
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.topCenter,
                                  child:
                                  Text("by Weeshify⭐",
                                    style: TextStyle(fontSize: 12, color: Colors.white60, fontWeight: FontWeight.bold ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Padding(
                            padding: EdgeInsets.only(top: 10.0),
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child:
                                  Text(" 3/6 friends...",
                                    style: TextStyle(fontSize: 14, color: Colors.blueAccent, fontWeight: FontWeight.bold ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),

                      Padding(
                          padding: EdgeInsets.symmetric(vertical: 16, horizontal: width/22)
                      ),

                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 16.0),
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.topCenter,
                                  child:
                                  Text("₹100 / User / Quater",
                                    style: TextStyle(fontSize: 13, color: Colors.white60, fontWeight: FontWeight.bold ),
                                  ),
                                ),

                              ],
                            ),
                          ),

                          Padding(padding: EdgeInsets.only(top:9),
                            child: Container(
                              width: 120,
                              height: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6.0),
                                gradient: const LinearGradient(
                                  begin: Alignment(-0.95, 0.0),
                                  end: Alignment(1.0, 0.0),
                                  colors: [Color(0xff4051B4), Color(0xff4051B4)],
                                  stops: [0.0, 1.0],
                                ),
                              ),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.transparent,
                                  minimumSize: const Size(30, 30),
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(1), // <-- Radius
                                  ),
                                ),
                                onPressed: () {
                                  // Respond to button press
                                },
                                //icon: const Icon(Icons.currency_bitcoin, size: 18),
                                child: Text('Join',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xffffffff),
                                    letterSpacing: -0.3858822937011719,
                                  ),
                                ),
                              ),
                            ),
                          ),

                          //Padding(
                          //padding: EdgeInsets.symmetric(vertical: 9, horizontal: ),
                          //),
                        ],
                      ),

                    ],
                  ),
                ),
                LinearProgressIndicator( value: .50,),

                Padding(
                  padding: EdgeInsets.only(top: 10.0),
                ),

                Container(
                  color: Colors.black26,
                  height: 100,
                  width: width-10,
                  child: Row(
                    children: [
                      Image.network(
                        'https://cdn4.iconfinder.com/data/icons/logos-and-brands/512/227_Netflix_logo-512.png',
                        width: 50, height: 50, fit: BoxFit.fill,
                      ),

                      Padding(
                          padding: EdgeInsets.symmetric(vertical: 16, horizontal: width/50)
                      ),

                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 16.0),
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child:
                                  Text(" Netflix Premium...",
                                    style: TextStyle(fontSize: 14, color: Colors.white60, fontWeight: FontWeight.bold ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Padding(
                            padding: EdgeInsets.only(top: 10.0),
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.topCenter,
                                  child:
                                  Text("by Anil Thakur",
                                    style: TextStyle(fontSize: 12, color: Colors.white60, fontWeight: FontWeight.bold ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Padding(
                            padding: EdgeInsets.only(top: 10.0),
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child:
                                  Text(" 1/2 friends...",
                                    style: TextStyle(fontSize: 14, color: Colors.blueAccent, fontWeight: FontWeight.bold ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),

                      Padding(
                          padding: EdgeInsets.symmetric(vertical: 16, horizontal: width/30)
                      ),

                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 16.0),
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.topCenter,
                                  child:
                                  Text("₹800 / User / Year",
                                    style: TextStyle(fontSize: 13, color: Colors.white60, fontWeight: FontWeight.bold ),
                                  ),
                                ),

                              ],
                            ),
                          ),

                          Padding(padding: EdgeInsets.only(top:9),
                            child: Container(
                              width: 120,
                              height: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6.0),
                                gradient: const LinearGradient(
                                  begin: Alignment(-0.95, 0.0),
                                  end: Alignment(1.0, 0.0),
                                  colors: [Color(0xff4051B4), Color(0xff4051B4)],
                                  stops: [0.0, 1.0],
                                ),
                              ),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.transparent,
                                  minimumSize: const Size(30, 30),
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(1), // <-- Radius
                                  ),
                                ),
                                onPressed: () {
                                  // Respond to button press
                                },
                                //icon: const Icon(Icons.currency_bitcoin, size: 18),
                                child: Text('Join',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xffffffff),
                                    letterSpacing: -0.3858822937011719,
                                  ),
                                ),
                              ),
                            ),
                          ),

                          //Padding(
                          //padding: EdgeInsets.symmetric(vertical: 9, horizontal: ),
                          //),
                        ],
                      ),

                    ],
                  ),
                ),
                LinearProgressIndicator( value: .50,),

              ]
            ),

            Padding(
              padding: EdgeInsets.only(top: 20.0),
            ),

            /*
            Container(
              height: 50,
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),

                gradient: const SweepGradient(
                  colors: [
                    Colors.orange,
                    Colors.white,
                    Colors.blue,
                  ],
                  stops: <double>[0.0, 0.25, 0.5, 0.75, 1.0],
                  tileMode: TileMode.clamp,
                ),

                /*
                gradient: const LinearGradient(
                  begin: Alignment(-0.95, 0.0),
                  end: Alignment(1.0, 0.0),
                  colors: [Color(0xff333333), Color(0xff404040)],
                  stops: [0.0, 1.0],
                ),*/


              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.transparent,
                  minimumSize: const Size(30, 30),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(1), // <-- Radius
                  ),
                ),
                onPressed: () {
                  // Respond to button press
                },
                //icon: const Icon(Icons.currency_bitcoin, size: 18),
                child: Text('Show All Public Groups',
                  style: TextStyle(
                    fontSize: 17,
                    color: Color(0xffDDDDDD),
                    letterSpacing: -0.3858822937011719,
                  ),
                ),
              ),
            ),
            */

            OutlinedButton(
              style: OutlinedButton.styleFrom(
                side: BorderSide(width: 2.0, color: Colors.orangeAccent),
              ),
              onPressed: () {
                // Respond to button press
              },

              child:
              Padding(
                padding: EdgeInsets.fromLTRB(width/4, 15, width/4, 15),
                child: Text('Show All Public Groups',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xffffffff),
                    letterSpacing: -0.3858822937011719,
                  ),
                ),
              ),

            ),

            Padding(
              padding: EdgeInsets.only(top: 50.0),
            ),

            Container(
                height: 200,
                width: width-15,
                color: Colors.black26,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                    ),

                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text('   What do you want to list next?',
                        style: TextStyle(
                          fontSize: 23,
                          color: Color(0xffffffff),
                          letterSpacing: -0.3858822937011719,
                        ),
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                    ),

                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text('    Suggest us a subscription',
                        style: TextStyle(
                          fontSize: 17,
                          color: Color(0xffffffff),
                          letterSpacing: -0.3858822937011719,
                        ),
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 15),
                      child: TextField(
                        style: TextStyle(color: Colors.white54, fontSize: 18),
                        cursorColor: Colors.white,
                        decoration: InputDecoration(
                          hintText: 'Give your suggestion',
                          hintStyle: TextStyle(color: Colors.white54, fontSize: 18),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey.shade600),
                          ),
                          enabledBorder:  OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey.shade600),
                          ),
                        ),
                      ),
                    ),



                          /*
                        const Icon(
                          Icons.send,
                          size: 25,
                        ),*/



                  ],
                )
            ),


        ],
      ),
    ),
    );
  }
}