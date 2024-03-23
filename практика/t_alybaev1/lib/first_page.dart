import 'package:flutter/material.dart';
import 'package:t_alybaev1/second_pae.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    String name = '';
    String phone = '';
    return Scaffold(
      backgroundColor: const Color.fromRGBO(5, 108, 92, 1),
      appBar: AppBar(
        title: const Center(child: Text('Тапшырма')),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage('assets/images/sultan.jpg'),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Sultan Kasym',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Yellowtail-Regular'),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Flutter Developer',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.white),
            ),
            TextField(
              decoration: (InputDecoration(
                prefixIcon: const Icon(
                  Icons.supervised_user_circle,
                  color: Colors.white,
                ),
                labelText: 'имя пользователя',
                labelStyle: const TextStyle(color: Colors.white),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              )),
              onChanged: (value) {
                name = value;
              },
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              decoration: (InputDecoration(
                prefixIcon: const Icon(
                  Icons.supervised_user_circle,
                  color: Colors.white,
                ),
                labelText: 'номер пользователя',
                labelStyle: TextStyle(color: Colors.white),
                fillColor: Colors.white,
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
              )),
              onChanged: (value) {
                phone = value;
              },
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                if (name.isEmpty || phone.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Напишите имя и номер'),
                    ),
                  );
                }else{

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SecondPage(name: name, phone: phone),
                  ),
                );}
              },
              child: const Text('Сохранить'),
            )
          ],
        ),
      ),
    );
  }
}
