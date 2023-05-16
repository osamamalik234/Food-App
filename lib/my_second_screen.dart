import 'package:flutter/material.dart';
import 'package:food_panda_app/Panda%20pick%20model/panda_pick_helper.dart';
import 'package:food_panda_app/Panda%20pick%20model/panda_pick_item_model.dart';
import 'package:food_panda_app/components/my_colors.dart';
import 'package:food_panda_app/models/item_model.dart';
import 'package:food_panda_app/models/list_helper.dart';
import 'package:food_panda_app/resturant_container.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'New York City',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: Padding(
            padding: const EdgeInsets.only(left: 20, bottom: 10, right: 20),
            child: Row(
              children: [
                Expanded(
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
                const SizedBox(
                  width: 10,
                ),
                const Icon(
                  Icons.filter_list_outlined,
                  color: MyColors.baseColor,
                ),
              ],
            ),
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 25),
            child: Icon(Icons.add_card),
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Column(
            children: [
              Column(
                children: [
                  SizedBox(
                    height: height * 0.35,
                    child: ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        itemCount: PandaPickHelper.itemCount,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          PandaPickItemModel model =
                              PandaPickHelper.getStatus(index);
                          return RestaurantContainer(
                            name: model.name,
                            remainingTime: model.remaingTime,
                            deliveryPrice: model.deliveryPrice,
                            image: model.image,
                            rating: model.ratting,
                            totalRating: model.totalRating,
                            subTitle: model.subTitle,
                          );
                        }),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    height: height * 0.35,
                    child: ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        itemCount: PandaPickHelper.itemCount,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          ItemModel model = ListModelExample.getItem(index);
                          return RestaurantContainer(
                            name: model.name,
                            remainingTime: model.remainingTime,
                            deliveryPrice: model.deliveryPrice,
                            image: model.image,
                            rating: model.rating,
                            totalRating: model.totalRating,
                            subTitle: model.subTitle,
                          );
                        }),
                  ),
                ],
              ),
              Column(
                children: [
                  SizedBox(
                    height: height * 0.35,
                    child: ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        itemCount: PandaPickHelper.itemCount,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          PandaPickItemModel model =
                              PandaPickHelper.getStatus(index);
                          return RestaurantContainer(
                            name: model.name,
                            remainingTime: model.remaingTime,
                            deliveryPrice: model.deliveryPrice,
                            image: model.image,
                            rating: model.ratting,
                            totalRating: model.totalRating,
                            subTitle: model.subTitle,
                          );
                        }),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
