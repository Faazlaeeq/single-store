import 'package:single_store/models/product_card.dart';
import 'package:single_store/models/review_model.dart';

class Data {
  final itemsProduct = [
    ProductCard(
      name: "Elegant  Dress",
      description: "Experience the grace .",
      image: "assets/images/shirt-1.png",
      price: 129.99,
    ),
    ProductCard(
      name: "Galactic Voyager ",
      description: "Embark on a  journey.",
      image: "assets/images/shirt-2.png",
      price: 79.99,
    ),
    ProductCard(
      name: "Ocean Mist ",
      description: "A scent that captures .",
      image: "assets/images/shirt-3.png",
      price: 49.99,
    ),
    ProductCard(
      name: "Vintage Vinyl",
      description: "Step back in time.",
      image: "assets/images/shirt-4.png",
      price: 39.99,
    ),
    ProductCard(
      name: "Celestial ",
      description: "Sip your favorite beverage.",
      image: "assets/images/shirt-5.png",
      price: 14.99,
    ),
    ProductCard(
      name: " Harmony ",
      description: "Immerse yourself .",
      image: "assets/images/shirt-6.png",
      price: 159.99,
    ),
  ];

  final reviewsList = <ReviewModel>[
    ReviewModel(
      name: "Malison Aved",
      review:
          "The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using.",
      imageUrl: "assets/images/review-1.png",
      date: "20 june, 2021",
    ),
    ReviewModel(
      name: "John Doe",
      review:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
      imageUrl: "assets/images/review-2.png",
      date: "25 june, 2021",
    ),
    ReviewModel(
      name: "Jane Smith",
      review:
          "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.",
      imageUrl: "assets/images/review-3.png",
      date: "30 june, 2021",
    ),
    ReviewModel(
      name: "Alex Johnson",
      review:
          "Contrary to popular belief, Lorem Ipsum is not simply random text.",
      imageUrl: "assets/images/review-4.png",
      date: "5 july, 2021",
    ),
    ReviewModel(
      name: "Emily Brown",
      review:
          "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form.",
      imageUrl: "assets/images/review-5.png",
      date: "10 july, 2021",
    ),
  ];
}
