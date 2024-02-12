import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:movies2/main.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 150,
            ),
            const Icon(
              Icons.lock,
              color: Colors.white,
              size: 100,
            ),
            const SizedBox(
              height: 50,
            ),
        
            //Welcom Back messafe
            const Text(
              'Welcome Back',
              style: TextStyle(
                  color: Colors.white, 
                  fontSize: 20, 
                  fontWeight: FontWeight.bold
                ),
            ),
            const SizedBox(height: 15,),
            //TextField for UserAccount
        
            const SizedBox(height: 30,),
            GestureDetector(
              onTap: (){
                context.push('/profile/signed'); 
                Provider.of<AppSettings>(context, listen: false).toggleDetailsEnabled(true);
              },
              child: const Text('Sign In',
              style: 
                TextStyle(
                fontWeight:FontWeight.bold,
                fontSize:15,
                color: Colors.white,
                ),
                ),
            )
          ],
        ),
      ),
    );
  }

}


