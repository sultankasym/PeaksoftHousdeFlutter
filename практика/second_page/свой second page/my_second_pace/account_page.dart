import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key, required this.title});

  final String title;

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  void _navigateBack() {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(31, 139, 149, 152),
      appBar: AppBar(
        backgroundColor: Colors.grey,
        actions: [
          ElevatedButton(
            onPressed: _navigateBack,
            child: const Icon(Icons.backspace_rounded),
          )
        ],
        title: const Text(
          'Your Account',
          style: TextStyle(
            fontSize: 25,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            TextField( 
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              hintText: 'введите логин',
              helperText: 'напишите с английскими буквами',
              ),
            ),
             TextField( 
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              hintText: 'введите пароль',
              helperText: 'пароль должен быть из 8 символов',
              ),
             ),
           
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: TextField(),
            ),
            Text('please, write the data'),
            TextField()
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          const Icon(
            Icons.search,
            color: Colors.black,
          );
          const Text('search in Diary');
        },
      ),
    );
  }
}
