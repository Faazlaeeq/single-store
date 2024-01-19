import 'package:flutter/material.dart';
import 'package:single_store/theme/my_colors.dart';

class ReviewModel {
  final String name;
  final String review;
  final String imageUrl;
  final String date;
  final int starCount;

  ReviewModel({
    required this.name,
    required this.review,
    required this.imageUrl,
    required this.date,
    this.starCount = 5,
  }) {
    assert(
        starCount >= 0 && starCount <= 5, 'Star count must be between 0 and 5');
  }

  factory ReviewModel.fromJson(Map<String, dynamic> json) {
    return ReviewModel(
      name: json['name'],
      review: json['review'],
      imageUrl: json['imageUrl'],
      date: json['date'],
      starCount: json['starCount'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'review': review,
      'imageUrl': imageUrl,
      'date': date,
      'starCount': starCount,
    };
  }

  List<Widget> getStar() {
    List<Widget> star = [];
    for (int i = 0; i < starCount; i++) {
      star.add(
        const Padding(
          padding: EdgeInsets.only(right: 5),
          child: ImageIcon(
            AssetImage(
              "assets/icons/rating-star-filled.png",
            ),
            size: 13,
            color: MyColors.ratingStarColor,
          ),
        ),
      );
    }
    return star;
  }
}
