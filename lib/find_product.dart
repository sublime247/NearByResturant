import 'package:flutter/material.dart';
import 'package:resturantapp/data.dart';

class AllProducts extends StatefulWidget {
  const AllProducts({Key? key}) : super(key: key);

  @override
  State<AllProducts> createState() => _AllProductsState();
}

class _AllProductsState extends State<AllProducts> {
  int pageIndex = 0;
    int initial = 0;

    inCrement(int index) {
      setState(() {
        if (initial <= 10) {
          ++initial;
        }
      });
    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 50,
        backgroundColor: Colors.white,
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Colors.pink,
        ),
        title: const Text(
          'Todays Promo',
          style: TextStyle(color: Colors.blue),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 20.0),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(options.length, (index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                      child: Card(
                        child: Container(
                          height: 45,
                          width: 100,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12.0, vertical: 12.0),
                          decoration: pageIndex == index
                              ? const BoxDecoration(color: Colors.pink)
                              : const BoxDecoration(color: Colors.white),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Image.asset(
                                  options[index]['icon'],
                                  color: pageIndex == index
                                      ? Colors.white
                                      : Colors.pink,
                                  // width: ,
                                ),
                                //  const SizedBox(width: 4.0,),
                                Text(options[index]['title'],
                                    style: TextStyle(
                                      color: pageIndex == index
                                          ? Colors.white
                                          : Colors.grey,
                                    ))
                              ]),
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            availableProducts(context)
          ],
        ),
      ),
    );
  }

  Widget availableProducts(BuildContext context) {

    return Column(
        children: List.generate(avaliableProducts.length, (index) {
      return Card(
        child: Column(children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(avaliableProducts[index]['title']),
            Row(
              children: const [
                Icon(
                  Icons.star_outline,
                  color: Colors.pink,
                  size: 20,
                ),
                SizedBox(width: 5.0),
                Text('5.0')
              ],
            )
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(avaliableProducts[index]['address']),
            const Text('1Km')
          ]),
          Container(
            height: 2.0,
            color: Colors.grey[100],
          ),
          Row(
            children: [
              SizedBox(
                  height: 80,
                  width: 80,
                  child: Image.asset(avaliableProducts[index]['image'])),
              Text(avaliableProducts[index]['name']),
              Row(
                children: [
                  IconButton(onPressed: () {}, icon: const Icon(Icons.remove)),
                  Text('$initial'),
                  IconButton(
                      onPressed: ()=>inCrement(avaliableProducts[index]['id']),
                      icon: const Icon(Icons.add))
                ],
              )
            ],
          )
        ]),
      );
    }));
  }
}
