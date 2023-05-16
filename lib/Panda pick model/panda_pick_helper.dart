import 'package:food_panda_app/Panda%20pick%20model/panda_pick_item_model.dart';

class PandaPickHelper {
  static var statusList = [
    PandaPickItemModel(
        name: 'New York Pizza',
        deliveryPrice: '90',
        remaingTime: '30 min',
        image: "assets/pizza.jpg",
        ratting: '4.8',
        subTitle: 'New York',
        totalRating: '1.2k'),
    PandaPickItemModel(
        name: 'Burger Lab',
        deliveryPrice: '50',
        remaingTime: '25 min',
        image: "assets/burger.jpg",
        ratting: '4.2',
        subTitle: 'Burgers',
        totalRating: '230'),
    PandaPickItemModel(
        name: 'Jans Delights',
        deliveryPrice: '600',
        remaingTime: '20 min',
        image: "assets/noddels.jpg",
        ratting: '2.5',
        subTitle: "Pakistani",
        totalRating: '400'),
  ];

  static PandaPickItemModel getStatus(int positon) {
    return statusList[positon];
  }
  static var itemCount = statusList.length;
}


