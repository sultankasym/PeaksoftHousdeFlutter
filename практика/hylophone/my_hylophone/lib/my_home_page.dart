import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Text('123'),
      ),
      body: Column(
        children: [
          pianokeys(
            onu: Colors.grey,
            jazuusu: 'doo',
            onTap: () {ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: const Text('worked'),
              action: SnackBarAction(
                label: 'action', onPressed: () {
                  
                },),
              ));
            },
          ),
          pianokeys(
            onu: Colors.deepPurple,
            jazuusu: 'ree',
            onTap: () {},
          )
        ],
      ),
    );
  }
}

class pianokeys extends StatelessWidget {
  const pianokeys({
    super.key,
    required this.onu,
    required this.jazuusu,
    required this.onTap,
  });
  final Color onu;
  final String jazuusu;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 100,
        color: onu,
        child: Center(child: Text(jazuusu)),
      ),
    );
  }
}
