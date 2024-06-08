import 'package:flutter/material.dart';
import 'package:mtf_tutor/cth_tugas/food_model.dart';
import 'package:mtf_tutor/cth_tugas/itemlist_widget.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<FoodModel> foods = [
      FoodModel(
          name: 'Makanan pertama',
          image: 'https://cdn.timesmedia.co.id/images/2020/07/31/gulai-kambing-sajan-Idul-Adha-khas-Aceh.jpg',
          description:
              'Ini adalah deskripsi makanan pertama, mungkin akan sedikit panjang tapi aku ga tau lagi harus nulis apa'),
      FoodModel(
          name: 'Makanan kedua',
          image: 'https://cdn.timesmedia.co.id/images/2020/07/31/gulai-kambing-sajan-Idul-Adha-khas-Aceh.jpg',
          description:
              'Ini adalah deskripsi makanan kedua, mungkin akan sedikit panjang tapi aku ga tau lagi harus nulis apa'),
      FoodModel(
          name: 'Makanan ketiga',
          image: 'https://cdn.timesmedia.co.id/images/2020/07/31/gulai-kambing-sajan-Idul-Adha-khas-Aceh.jpg',
          description:
              'Ini adalah deskripsi makanan ketiga, mungkin akan sedikit panjang tapi aku ga tau lagi harus nulis apa'),
      FoodModel(
        name: 'Makanan keempat',
        image: 'https://cdn.timesmedia.co.id/images/2020/07/31/gulai-kambing-sajan-Idul-Adha-khas-Aceh.jpg',
        description:
            'Ini adalah deskripsi makanan keempat, mungkin akan sedikit panjang tapi aku ga tau lagi harus nulis apa',
      ),
      FoodModel(
        name: 'Makanan kelima',
        image: 'https://cdn.timesmedia.co.id/images/2020/07/31/gulai-kambing-sajan-Idul-Adha-khas-Aceh.jpg',
        description:
            'Ini adalah deskripsi makanan kelima, mungkin akan sedikit panjang tapi aku ga tau lagi harus nulis apa',
      ),
      FoodModel(
        name: 'Makanan keenam',
        image: 'https://cdn.timesmedia.co.id/images/2020/07/31/gulai-kambing-sajan-Idul-Adha-khas-Aceh.jpg',
        description:
            'Ini adalah deskripsi makanan keenam, mungkin akan sedikit panjang tapi aku ga tau lagi harus nulis apa',
      ),
      FoodModel(
        name: 'Makanan ketujuh',
        image: 'https://cdn.timesmedia.co.id/images/2020/07/31/gulai-kambing-sajan-Idul-Adha-khas-Aceh.jpg',
        description:
            'Ini adalah deskripsi makanan ketujuh, mungkin akan sedikit panjang tapi aku ga tau lagi harus nulis apa',
      ),
      FoodModel(
        name: 'Makanan kedelapan',
        image: 'https://cdn.timesmedia.co.id/images/2020/07/31/gulai-kambing-sajan-Idul-Adha-khas-Aceh.jpg',
        description:
            'Ini adalah deskripsi makanan kedelapan, mungkin akan sedikit panjang tapi aku ga tau lagi harus nulis apa',
      ),
      FoodModel(
        name: 'Makanan kesembilan',
        image: 'https://cdn.timesmedia.co.id/images/2020/07/31/gulai-kambing-sajan-Idul-Adha-khas-Aceh.jpg',
        description:
            'Ini adalah deskripsi makanan kesembilan, mungkin akan sedikit panjang tapi aku ga tau lagi harus nulis apa',
      ),
      FoodModel(
        name: 'Makanan kesepuluh',
        image: 'https://cdn.timesmedia.co.id/images/2020/07/31/gulai-kambing-sajan-Idul-Adha-khas-Aceh.jpg',
        description:
            'Ini adalah deskripsi makanan kesepuluh, mungkin akan sedikit panjang tapi aku ga tau lagi harus nulis apa',
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Contoh List View'),
      ),
      body: ListView.builder(
        itemCount: foods.length,
        itemBuilder: (context, index) => ItemListWidget(food: foods[index]),
      ),
    );
  }
}
