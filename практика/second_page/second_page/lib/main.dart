//import 'dart:html';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      //appBar: AppBar(title: Text('I am Rich!'),),
      body: 
      Center(
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("I'm Rich!",),
          Image.asset('assets/images/almaz.jpg')
          ],

        ),
        )
    
    

    );
      
    
  }
}




  