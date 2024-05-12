import 'package:flutter/material.dart';
import 'package:groceryapp/widgets/profile_menu.dart';

class profile_page extends StatelessWidget {
  const profile_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                      child: const Icon(Icons.edit, color: Colors.black,),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'John Doe',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Arial',
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'johndoe@example.com',
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Arial',
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 200,
                height: 45,
                child: ElevatedButton(
                  onPressed: () { Navigator.pushNamed(context, 'update');},
                  child: Text(
                    'Edit Profile',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromRGBO(233, 175, 90, 1),
                    shape: const StadiumBorder(),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              const Divider(),
              SizedBox(
                height: 10,
              ),
              ProfileMenuWidget(
                title: 'Settings',
                icon: Icons.settings,
                onPress: () {},
              ),
              Divider(),
              ProfileMenuWidget(
                title: 'Addresses',
                icon: Icons.home,
                onPress: () {},
              ),
              Divider(),
              ProfileMenuWidget(
                title: 'Order History',
                icon: Icons.history,
                onPress: () {},
              ),
              Divider(),
              ProfileMenuWidget(
                title: 'Payments & Refunds',
                icon: Icons.credit_card,
                onPress: () {},
              ),
              Divider(),
              ProfileMenuWidget(
                title: 'Gift Cards',
                icon: Icons.card_giftcard,
                onPress: () {},
              ),
              Divider(),
              ProfileMenuWidget(
                title: 'Refer & Earn',
                icon: Icons.monetization_on,
                onPress: () {},
              ),
              Divider(),
              ProfileMenuWidget(
                title: 'Help',
                icon: Icons.help,
                onPress: () {},
              ),
              Divider(),
              ProfileMenuWidget(
                title: 'Log Out',
                textColor: Colors.red,
                icon: Icons.logout,
                onPress: () {},
                endIcon: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
