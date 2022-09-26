import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Explore extends StatelessWidget {
  const Explore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 19, 19, 19),

      // appbar
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 19, 19, 19),
        title: const Text("Explore"),
        actions: <Widget>[
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 33,
                height: 33,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(42),
                    color: Colors.grey[800]),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                width: 30,
                height: 30,
                child: Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color.fromARGB(255, 71, 69, 180)),
                  child: const Icon(Icons.emoji_events),
                ),
              ),
            ],
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 33,
                height: 33,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(42),
                    color: Colors.grey[800]),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                width: 30,
                height: 30,
                child: Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color.fromARGB(255, 71, 69, 180)),
                  child: const Icon(Icons.shopping_cart),
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 4,
          )
        ],
      ),

      //body
      body: const BuildBody(),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        elevation: 0.0,
        child: Image.asset("assets/images/subspace.png")
      ),
      
      bottomNavigationBar: BottomAppBar(
        color: const Color.fromARGB(255, 19, 19, 19),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                mainAxisSize: MainAxisSize.min,
                children: const <Widget>[
                  Icon(Icons.home, color: Colors.white,),
                  Text("Home", style: TextStyle(color: Colors.white)),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: const <Widget>[
                  Icon(Icons.explore,
                    color: Color.fromARGB(255, 71, 69, 180)),
                  ),
                  const Text("Explore", style: TextStyle(color: Color.fromARGB(255, 71, 69, 180))),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(top: 30.0),
                child: Text('          ', style: TextStyle(fontSize: 20),),
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: const <Widget>[
                  Icon(Icons.chat_bubble,
                    color: Colors.white,
                  ),
                  Text("Chat", style: TextStyle(color: Colors.white)),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: const <Widget>[
                  Icon(Icons.wallet,
                    color: Colors.white,
                  ),
                  Text("Wallet", style: TextStyle(color: Colors.white)),
                ],
              ),
            ],
          ),
        ),
      );
      }
}

class BuildBody extends StatefulWidget {
  const BuildBody({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _BuildBodyState createState() => _BuildBodyState();
}

class _BuildBodyState extends State<BuildBody> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(children: [
          // play and earn more textview
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            padding: const EdgeInsets.symmetric(horizontal: 18),
            width: double.infinity,
            height: 55,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.blueGrey.shade700, width: 2),
                borderRadius: BorderRadius.circular(5),
                gradient: const LinearGradient(
                  colors: [
                    Color(0xFF000B19),
                    Color(0xFF00172D),
                  ],
                )),
            child: Row(
              children: [
                Image.asset(
                  "assets/images/coin.png",
                  height: 25,
                  width: 25,
                ),
                const SizedBox(
                  width: 15,
                ),
                const Text(
                  "Play and earn coins",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                const Spacer(),
                const Icon(
                  Icons.double_arrow,
                  color: Colors.white,
                )
              ],
            ),
          ),

          // slide view
          CarouselSlider(
              items: [
                Container(
                  margin: const EdgeInsets.all(16),
                  width: double.infinity,
                  height: 200,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/banner1.jpg"),
                          fit: BoxFit.cover)),
                ),
                Container(
                  margin: const EdgeInsets.all(16),
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/banner3.jpg"),
                          fit: BoxFit.cover)),
                ),
                Container(
                  margin: const EdgeInsets.all(16),
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/banner2.jpg"),
                          fit: BoxFit.cover)),
                ),
              ],
              options: CarouselOptions(
                height: 200,
                // aspectRatio: 16/9,
                disableCenter: true,
                viewportFraction: 1,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 5),
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                scrollDirection: Axis.horizontal,
              )),

          // all subcriptions
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "All Subcriptions",
                  style: TextStyle(fontSize: 20, color: Colors.grey[600]),
                ),
                Container(
                  width: 90,
                  height: 35,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      gradient: const LinearGradient(
                        colors: [
                          Color(0xFF343434),
                          Color(0xFF404040),
                        ],
                      )),
                  child: Center(
                      child: Text(
                    "See More",
                    style: TextStyle(fontSize: 16, color: Colors.yellow[600]),
                  )),
                ),
              ],
            ),
          ),

          //horizontal slide view
          Container(
            padding: const EdgeInsets.all(15),
            height: 270,
            child:
                ListView(scrollDirection: Axis.horizontal, children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(2),
                child: Image.asset('assets/images/amazon.jpg'),
              ),
              Padding(
                padding: const EdgeInsets.all(2),
                child: Image.asset('assets/images/amazon.jpg'),
              ),
              Padding(
                padding: const EdgeInsets.all(2),
                child: Image.asset('assets/images/amazon.jpg'),
              ),
              Padding(
                padding: const EdgeInsets.all(2),
                child: Image.asset('assets/images/amazon.jpg'),
              ),
              Padding(
                padding: const EdgeInsets.all(2),
                child: Image.asset('assets/images/amazon.jpg'),
              ),
              Padding(
                padding: const EdgeInsets.all(2),
                child: Image.asset('assets/images/amazon.jpg'),
              ),
              Padding(
                padding: const EdgeInsets.all(2),
                child: Image.asset('assets/images/amazon.jpg'),
              ),
              Padding(
                padding: const EdgeInsets.all(2),
                child: Image.asset('assets/images/amazon.jpg'),
              ),
            ]),
          ),

          // public groups
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Public Groups",
                  style: TextStyle(fontSize: 20, color: Colors.grey[600]),
                ),
                Container(
                  width: 90,
                  height: 35,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      gradient: const LinearGradient(
                        colors: [
                          Color(0xFF343434),
                          Color(0xFF404040),
                        ],
                      )),
                  child: Center(
                      child: Text(
                    "See More",
                    style: TextStyle(fontSize: 16, color: Colors.yellow[600]),
                  )),
                ),
              ],
            ),
          ),

          // group list
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
            child: Image.asset('assets/images/youtube.jpg'),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 5, 10, 0),
            child: Image.asset('assets/images/youtube.jpg'),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 5, 10, 0),
            child: Image.asset('assets/images/youtube.jpg'),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 5, 10, 0),
            child: Image.asset('assets/images/youtube.jpg'),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 5, 10, 0),
            child: Image.asset('assets/images/youtube.jpg'),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 5, 10, 0),
            child: Image.asset('assets/images/youtube.jpg'),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 5, 10, 0),
            child: Image.asset('assets/images/youtube.jpg'),
          ),

          // show all public groups
          Container(
            width: MediaQuery.of(context).size.width,
            height: 50,
            margin: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                gradient: const LinearGradient(
                    colors: [Colors.orange, Colors.white, Colors.green])),
            child: Container(
              margin: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.grey[900]),
              child: Center(
                child: Text(
                  "Show All Public Groups",
                  style: TextStyle(color: Colors.grey[500], fontSize: 15),
                ),
              ),
            ),
          ),

          // suggest a subscription
          Container(
            margin: const EdgeInsets.fromLTRB(8, 8, 8, 60),
            padding: const EdgeInsets.symmetric(horizontal: 16),
            width: MediaQuery.of(context).size.width,
            height: 150,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: const Color(0xff2A2A2A)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "What do you want us to list next?",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                const Text(
                  "Suggest us a subscription",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontFamily: "Quicksand-Medium"),
                ),
                Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 1.4,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.grey[800],
                          borderRadius: BorderRadius.circular(5)),
                      child: TextField(
                        style: TextStyle(color: Colors.grey[300], fontSize: 15),
                        decoration: const InputDecoration(
                          hintText: "Give your suggestion",
                          contentPadding: EdgeInsets.all(10),
                          hintStyle:
                              TextStyle(color: Colors.grey, fontSize: 15),
                          fillColor: Colors.grey,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.send,
                          size: 30,
                          color: Colors.white,
                        ))
                  ],
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
