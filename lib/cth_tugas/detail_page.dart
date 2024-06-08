import 'package:flutter/material.dart';
import 'package:mtf_tutor/cth_tugas/food_model.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key, required this.food});

  final FoodModel food;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(food.name),
          //leading adalah widget yang akan ditampilkan di sebelah kiri appbar
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              //Navigator.pop adalah fungsi untuk kembali ke halaman sebelumnya
              Navigator.pop(context);
            },
          )),
      body: Column(
        children: [
          //AspectRatio adalah widget yang digunakan untuk mengatur rasio aspek dari widget child-nya
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
                Text(
                  food.description,
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
