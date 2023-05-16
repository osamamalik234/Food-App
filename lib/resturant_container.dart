import 'package:flutter/material.dart';

import 'components/my_colors.dart';

class RestaurantContainer extends StatelessWidget {
  final String name;
  final String deliveryPrice;
  final String remainingTime;
  final String image;
  final String rating;
  final String totalRating;
  final String subTitle;

  const RestaurantContainer(
      {Key? key,
      required this.name,
      required this.deliveryPrice,
      required this.remainingTime,
      required this.image,
      required this.rating,
      required this.totalRating,
      required this.subTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Container(
        // height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width * .7,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(image),
                ),
                Positioned(
                  top: 20,
                  child: Container(
                    height: 40,
                    width: 80,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20)),
                      color: MyColors.baseColor,
                    ),
                    child: Center(
                        child: Text(
                      subTitle,
                      style: const TextStyle(color: Colors.white),
                    )),
                  ),
                ),
                Positioned(
                  bottom: 15,
                  left: 15,
                  child: Container(
                    height: 40,
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: Center(
                        child: Text(
                      remainingTime,
                      style: const TextStyle(color: Colors.black),
                    )),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(rating),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        totalRating,
                        style: const TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Text(
              subTitle,
              style: const TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                const Icon(
                  Icons.delivery_dining_rounded,
                  color: MyColors.baseColor,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  'Rs $deliveryPrice',
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
