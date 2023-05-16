import 'package:food_panda_app/models/item_model.dart';

class ListModelExample {
  static var ListModel = [
    ItemModel(
        name: 'Burning Brownies',
        deliveryPrice: 'Free Delivery',
        remainingTime: '15 min',
        image: "assets/cake.jpg",
        totalRating: '(300)',
        subTitle: 'Bakery',
        rating: '4.3'),
    ItemModel(
        name: 'OPTP G11',
        deliveryPrice: '50',
        remainingTime: '35 min',
        image: "assets/chicken.jpg",
        totalRating: '(400)',
        subTitle: 'Burgers',
        rating: '4.7'),
    ItemModel(
        name: 'China Town',
        deliveryPrice: '(600)',
        remainingTime: '20 min',
        image: "assets/chinese.jpg",
        totalRating: '560',
        subTitle: "Chinese",
        rating: '2.3'),
  ];

  static ItemModel getItem(int position) {
    return ListModel[position];
  }

  static var itemCount = ListModel.length;
}
