import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:movies2/main.dart';
import 'package:provider/provider.dart';
class SignedPage extends StatefulWidget {
  const SignedPage({super.key});

  @override
  State<SignedPage> createState() => _SignedPageState();
}

class _SignedPageState extends State<SignedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(child: GestureDetector(
              onTap: (){
                context.go('/profile'); 
                Provider.of<AppSettings>(context, listen: false).toggleDetailsEnabled(false);
              },
            child: const Text('Sign Out', style: TextStyle(color: Colors.white, fontWeight:FontWeight.bold),)
          ),
      
      ),
    );
  }

}