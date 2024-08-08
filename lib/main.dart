import 'package:flutter/material.dart';
import 'qr_scan_screen.dart';
import 'loginPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Qr Code Kullanımı',
      theme: ThemeData.dark(),
      home: HomeScreen(),
    );
  }
}

//await Firebase.initilizeApp(options.DefaultFirebaseOptions.currentPlatform,);

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            /*ElevatedButton(
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => QrGenerateScreen())),
              child: Text("Qr Code Üret"),
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all(Colors.white),
                backgroundColor: MaterialStateProperty.all(Colors.red[700]),
              ),
            ),*/
            SizedBox(height: 120.0),
            ElevatedButton(
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => QrScanScreen())),
              child: Text("Qr Code Tarat"),
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all(Colors.black),
                backgroundColor: MaterialStateProperty.all(Colors.white),
              ),
            ),
            SizedBox(
              height: 80,
            ),
            Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: IconButton(
                  iconSize: 1,
                  icon: Image.asset(
                    'assets/google_icon.png',
                    width: 65.0, // İstediğiniz genişlik
                    height: 65.0,
                  ),
                  onPressed: () async {
                    // userCredential.value = await signInWithGoogle();
                    //if (userCredential.value != null)
                    //  print(userCredential.value.user!.email);
                  },
                ))
          ],
        ),
      ),
    );
  }
}
