import 'package:flutter/material.dart';
import 'package:my_second_pace/thierd_page.dart';
import 'firstpage.dart';
import 'account_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xff4BFFFB),
        useMaterial3: true,
      ),
      home: const MyHomePage(text: 'your diary'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.text});

  final String text;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String? textForFirstPage;
  

  void _navigateToFirstPage() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => FirstPage(
          text: textForFirstPage ?? '',
        ),
      ),
    );
  }

  void _navigateToAccountPage() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const AccountPage(),
      ),
    );
  }

  void _navigateToThierdPage() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const ThierdPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.brown[400],
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[800],
        leading: ElevatedButton(
          onPressed: _navigateToAccountPage,
          child: const Icon(
            Icons.manage_accounts_outlined,
            size: 20,
            color: Color.fromARGB(255, 231, 140, 14),
          ),
        ),
        actions: [
          ElevatedButton(
            onPressed: _navigateToFirstPage,
            child: const Icon(
              Icons.history_edu,
              size: 20,
              color: Color.fromARGB(255, 231, 140, 14),
            ),
          ),
          const SizedBox(
            width: 25,
          ),
        ],
        title: const Center(
          child: Text(
            'Your History',
            style: TextStyle(
              fontSize: 30,
              color: Color.fromARGB(255, 231, 140, 14),
              /*fontFamily: 'DancingScript-Medium' ,*/
            ),
          ),
        ),
      ),
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xff164C4B), Color(0xff4BFFFB)])),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Image.network('https://www.pngwing.com/ru/free-png-zdmeb.png', height: 400, width: 500,),
              const Text(
                'Here you can write Diary',
                style: TextStyle(fontFamily: 'DancingScript-Regular'),
              ),
              TextField(
                onChanged: (value) {
                  setState(
                    () {
                      textForFirstPage = value;
                    },
                  );
                },
                style: const TextStyle(
                  fontFamily: 'DancingScript-Regular',
                  fontWeight: FontWeight.w300,
                ),
                maxLines: 10,
                textAlign: TextAlign.justify,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(width: 50),
                    borderRadius: BorderRadius.horizontal(
                      left: Radius.circular(25),
                      right: Radius.circular(25),
                    ),
                  ),
                ),
              ),
              ElevatedButton(
              
                onPressed: () {_navigateToFirstPage();}, child: const Text('Сохранить'),
                  
                
              
              ),
           
            ],
          ),
        ),
      ),
    );
  }
}
