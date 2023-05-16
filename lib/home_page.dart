import 'package:flutter/material.dart';
import 'package:food_panda_app/components/my_colors.dart';
import 'package:food_panda_app/components/my_drawer.dart';
import 'package:food_panda_app/models/item_model.dart';
import 'package:food_panda_app/models/list_helper.dart';
import 'package:food_panda_app/my_second_screen.dart';
import 'package:food_panda_app/pandamart_screen.dart';
import 'package:food_panda_app/resturant_container.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    // var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Food Panda App',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: Padding(
            padding: const EdgeInsets.only(left: 20, bottom: 10, right: 20),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: const Color(0xfff7f7f7)),
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Search you are looking for',
                  prefixIcon: Icon(
                    Icons.search,
                    color: Color(0xff7b7b7b),
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 25),
            child: Icon(Icons.search),
          ),
        ],
      ),
      drawer: const MyDrawer(),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SecondScreen()));
              },
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child: Container(
                  height: height * 0.18,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: MyColors.baseColor),
                  child: Stack(
                    alignment: Alignment.bottomLeft,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          'assets/kr1.jpg',
                          fit: BoxFit.fitWidth,
                          width: double.infinity,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: const [
                            Text(
                              'Food Delivery',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                            Text(
                              'Order from your favourite\nrestaurants and Home chiefs',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const PandamartScreen()));
                      },
                      child: Container(
                        height: MediaQuery.of(context).size.height * .28,
                        decoration: BoxDecoration(
                          color: const Color(0xfffed271),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: Stack(
                            alignment: Alignment.center,
                            children: const [
                              CircleAvatar(
                                backgroundImage:
                                    AssetImage('assets/pandamart.jpg'),
                                radius: 50,
                              ),
                              Positioned(
                                  bottom: 15,
                                  left: 0,
                                  child: Text(
                                    'Pandamart',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  )),
                              Positioned(
                                bottom: 0,
                                left: 0,
                                child: Text(
                                  'panda20 for 20% off',
                                  style: TextStyle(fontSize: 15),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 7,
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * .18,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0xffef9fc4),
                              image: const DecorationImage(
                                image: AssetImage('assets/food.jpg'),
                                fit: BoxFit.fitHeight,
                              )),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: const [
                                Text(
                                  'Pick-Uo',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'Upto 50% off',
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * .10,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: const Color(0xff85bfff),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: const [
                                Text(
                                  'Shops',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'Everyday Essentials',
                                  style: TextStyle(fontSize: 15),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 17, vertical: 10),
              child: Text(
                'Your Daily deals',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: height * 0.35,
              child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: ListModelExample.itemCount,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    ItemModel model = ListModelExample.getItem(index);
                    return RestaurantContainer(
                      name: model.name,
                      image: model.image,
                      remainingTime: model.remainingTime,
                      rating: model.rating,
                      deliveryPrice: model.deliveryPrice,
                      totalRating: model.totalRating,
                      subTitle: model.subTitle,
                    );
                  }),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: MyColors.baseColor,
        onPressed: () {},
        child: const Icon(
          Icons.shopping_cart,
          size: 30,
          color: Colors.white,
        ),
      ),
    );
  }
}
