import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'profile_page.dart';
import 'package:flutter/material.dart';

class update_profile extends StatelessWidget{
  const update_profile ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Profile',
        style: TextStyle(fontSize: 24,fontFamily:'Arial',fontWeight: FontWeight.bold,),
        ),

        backgroundColor: Color.fromRGBO(233, 175, 90, 1),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(40),
          child: Column(
            children: [
          Stack(
          children: [
          SizedBox(
          width: 90,
            height: 90,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image(
                  image: AssetImage('assets/avocado.png'),
                )),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              width: 35, height: 35,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Color.fromRGBO(233, 175, 90, 1),
              ),
              child: const Icon(Icons.camera_alt_outlined, color: Colors.black,),
            ),
          ),
          ],
        ),
              const SizedBox(height: 50,),
              Form(child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      label: Text('Name'),
                      prefixIcon: Icon(Icons.person_outline_sharp),
                      border: OutlineInputBorder()
                    ),
                  ),
                  SizedBox(height: 25,),
                  TextFormField(
                    decoration: InputDecoration(
                      label: Text('E-Mail'),
                      prefixIcon: Icon(Icons.email_outlined),
                        border: OutlineInputBorder()
                    ),
                  ),
                  SizedBox(height: 25,),
                  TextFormField(
                    decoration: InputDecoration(
                      label: Text('Phone Number'),
                      prefixIcon: Icon(Icons.phone),
                        border: OutlineInputBorder()
                    ),
                  ),
                  SizedBox(height: 25,),
                  TextFormField(
                    decoration: InputDecoration(
                      label: Text('Password'),
                      prefixIcon: Icon(Icons.password),
                        border: OutlineInputBorder()
                    ),
                  ),
                  SizedBox(height: 100,),
                  SizedBox(
                    width: double.infinity,
                    height: 45,
                    child: ElevatedButton(
                      onPressed: () { Navigator.pushNamed(context, 'update');},
                      child: Text(
                        'Save Changes',
                        style: TextStyle(
                            color: Colors.black54,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromRGBO(233, 175, 90, 1),
                        shape: const StadiumBorder(),
                      ),
                    ),
                  ),
                  SizedBox(height: 45,),
                  SizedBox(
                    width: double.infinity,
                    height: 45,
                    child: ElevatedButton(
                      onPressed: () { Navigator.pushNamed(context, 'update');},
                      child: Text(
                        'Delete Account',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.red.withOpacity(1),
                        shape: const StadiumBorder(),
                      ),
                    ),
                  ),


                ],
              ))
        ]
    )
        ),
      ),
    );
  }

}