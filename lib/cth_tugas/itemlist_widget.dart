import 'package:flutter/material.dart';
import 'package:mtf_tutor/cth_tugas/detail_page.dart';
import 'package:mtf_tutor/cth_tugas/food_model.dart';

class ItemListWidget extends StatelessWidget {
  const ItemListWidget({super.key, required this.food});

  final FoodModel food;

  @override
  Widget build(BuildContext context) {
    //InkWell adalah widget yang digunakan untuk membuat widget yang dapat di klik
    return InkWell(
      onTap: () {
        //Navigator.push adalah fungsi untuk berpindah ke halaman lain
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DetailPage(food: food)),
        );
      },
      child: Container(
          //BoxDecoration adalah widget yang digunakan untuk mengatur dekorasi dari container
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(10),
          ),
          //ClipBehavior adalah widget yang digunakan untuk mengatur bagaimana widget akan di-clip(atau di potong jika melebihi batas container-nya)
          clipBehavior: Clip.hardEdge,
          margin: const EdgeInsets.all(8),
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 16 / 9,
                child: Image.network(
                  food.image,
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 150,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      food.name,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
