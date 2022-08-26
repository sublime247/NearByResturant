import 'package:flutter/material.dart';
import 'package:resturantapp/find_product.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: const HomePage()));
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          // physics,
          // ignore: avoid_unnecessary_containers
          child: Column(

            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // SizedBox(height: 15.0,),
              searchBar(context),
              SizedBox(height: 15.0,),
               userName(context), 
               SizedBox(height: 15.0,),
               options(context),
               SizedBox(height: 15.0,),
               forTodayPromo(context),
               
               delicacyImages(context),
               ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.pink,
        items:const [
        BottomNavigationBarItem(icon: Icon(Icons.home_rounded), label:""),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.search_rounded), label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.person_outlined), label:"")
        ]),
    );
  }

  Widget searchBar(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Container(
          width: 230,
          height: 30,
          decoration: BoxDecoration(
              border: null,
              borderRadius: BorderRadius.circular(20),
              color: Colors.pink[200]!.withOpacity(0.5)),
          child: const TextField(
            decoration: InputDecoration(
                contentPadding: EdgeInsets.only(top: 5.0, left: 20.0),
                border: OutlineInputBorder(
                    borderSide: BorderSide(
                      style: BorderStyle.none,
                      width: 0,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                hintText: '40, olukosi Street Agege',
                suffixIcon:
                    Icon(Icons.arrow_drop_down_sharp, color: Colors.pink)),
          ),
        ),
        Stack(children: [
          Container(
            height: 40,
            width: 40,
            decoration:
                const BoxDecoration(shape: BoxShape.circle, color: Colors.pink),
            child: Center(
              child: IconButton(
                icon: const Icon(Icons.notifications_none),
                color: Colors.white,
                onPressed: () {},
              ),
            ),
          ),
          Positioned(
              right: 1,
              bottom: 2,
              child: Container(
                padding: const EdgeInsets.all(2.0),
                decoration: const BoxDecoration(
                    color: Colors.white, shape: BoxShape.circle),
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  width: 10,
                  height: 10,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.amber),
                ),
              ))
        ])
      ]),
    );
  }

  Widget userName(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Hello, Yahya',
            style: TextStyle(fontSize: 30),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'What do you want to eat?',
            style: TextStyle(fontSize: 16),
          )
        ],
      ),
    );
  }

  Widget options(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Material(
              elevation: 2,
              child: Container(
                height: 70,
                width: 70,
                decoration: const BoxDecoration(color: Colors.white),
                child: Center(child: Image.asset('assets/fav.png')),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Favourites',
              style: TextStyle(fontSize: 20),
            )
          ]),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Material(
                elevation: 2,
                child: Container(
                  height: 70,
                  width: 70,
                  decoration: const BoxDecoration(color: Colors.white),
                  child: Center(child: Image.asset('assets/Tag.png')),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Cheap',
                style: TextStyle(fontSize: 20),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Material(
                elevation: 1,
                child: Container(
                  height: 70,
                  width: 70,
                  decoration: const BoxDecoration(color: Colors.white),
                  child: Center(child: Image.asset('assets/trend.png')),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Trend',
                style: TextStyle(fontSize: 20),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Material(
                elevation: 2,
                child: Container(
                  height: 70,
                  width: 70,
                  decoration: const BoxDecoration(color: Colors.white),
                  child: Center(child: Image.asset('assets/more.png')),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'More',
                style: TextStyle(fontSize: 20),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget forTodayPromo(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text(
            'Today\'s promo',
            style: TextStyle(fontSize: 30),
          ),
          InkWell(
            onTap: null,
            child: Text('See all',
                style: TextStyle(color: Colors.pink, fontSize: 16)),
          )
        ],
      ),
    );
  }

  Widget delicacyImages(BuildContext context) {
    return SizedBox(
      height: 350,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
        const  SizedBox(width: 20,),
          Stack(
            children: [
              Image.asset('assets/assorted-sliced-fruits.png'),
              Positioned(
                top: 5,
                right: 5,
                child: 
              Container(
                height:35,
                width: 35,
                decoration:const BoxDecoration(
                  color:Colors.white,
                  shape: BoxShape.circle),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(child: Image.asset('assets/fav.png')),
                  ))),
                  Positioned(
                    top: 190,
                    // bottom: 20,
                    left: 10,
                    right: 10,
                    child: Container(
                      padding:const EdgeInsets.all(15.0),
                      // width: 200,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: null, 
                        borderRadius:BorderRadius.circular(10.0)
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        const  Text('Fruit salad mix',
                          style: TextStyle(fontSize: 25),),
                          const SizedBox(height: 5.0,),
                        const  Text('Delics Fruit salad, Ngasem'),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children:const [
                                  Text('18,500'),
                                  SizedBox(width: 10.0,),
                                  Text('22,500', style: TextStyle(
                                    color: Colors.grey,
                                    decoration: TextDecoration.lineThrough)) ],
                              )
                           , ElevatedButton(
                            onPressed: (){}, 
                             style: ElevatedButton.styleFrom(
                              primary: Colors.amber,
                              elevation: 0
                             ),
                            child:const Text('5 Left'))
                            ],
                          )
                        ],
                      ),
                    )
                    )
                   ],
          ),
           const  SizedBox(width: 20,),
          Stack(
            children: [
              SizedBox(
                height: 330,
                child: Image.asset('assets/spag-broky.png')),
              Positioned(
                top: 5,
                right: 5,
                child: 
              Container(
                height:35,
                width: 35,
                decoration:const BoxDecoration(
                  color:Colors.white,
                  shape: BoxShape.circle),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Center(child: Image.asset('assets/fav.png'))),
                  ))),
                 Positioned(
                    top: 190,
                    // bottom: 20,
                    left: 10,
                    right: 10,
                    child: Container(
                      padding:const EdgeInsets.all(15.0),
                      // width: 200,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: null, 
                        borderRadius:BorderRadius.circular(10.0)
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        const  Text('Bakso jumbo',
                          style: TextStyle(fontSize: 25),),
                          const SizedBox(height: 5.0,),
                        const Text('Bakso pak ndut, Dlopo'),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children:const [
                                  Text('18,500'),
                                  SizedBox(width: 10.0,),
                                  Text('22,500', style: TextStyle(
                                    color: Colors.grey,
                                    decoration: TextDecoration.lineThrough)) ],
                              )
                           , ElevatedButton(
                            onPressed: (){}, 
                             style: ElevatedButton.styleFrom(
                              primary: Colors.amber,
                              elevation: 0
                             ),
                            child:const Text('5 Left'))
                            ],
                          )
                        ],
                      ),
                    )
                    )
            ],
          )
        ],
      ),
    );
  }

  
}
