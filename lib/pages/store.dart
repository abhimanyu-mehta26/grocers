import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:groceryapp/widgets/card.dart';
import 'package:provider/provider.dart';

import '../model/cart_model.dart';
import '../model/store_model.dart';
import '../widgets/plusminus.dart';

class Store extends StatelessWidget {
  const Store({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.grey[800],
        ),
      ),
      body: Consumer<CartModel>(
        builder: (context, value, child) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Let's order fresh items for you
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.0),
                child: Text(
                  "Select Store",
                  style: GoogleFonts.notoSerif(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 20,),
              // Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: Card(
              //   shape: RoundedRectangleBorder(
              //   borderRadius: BorderRadius.circular(20),
              //   ),
              //    color: Colors.grey[200],
              //     child: Padding(padding: EdgeInsets.fromLTRB(200, 50, 200, 50,),
              //
              //
              //     // Text('Reliance Fresh'),
              //     )

                // ),
              // ),

              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(20),

                  ),
                  child: Row(
                    children: [
                      Image(image: AssetImage('assets/rf.png'),
                      height: 100,
                      width: 100,),
                      SizedBox(width: 20,),
                      Text('Reliance Fresh',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                      SizedBox(width: 40,),
                      TextButton(
                          style: TextButton.styleFrom(
                            primary: Colors.grey,
                          ),
                          onPressed: () { Navigator.pushNamed(context, 'checkout'); },
                          child: Icon(Icons.chevron_right,
                          color: Colors.grey,))
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(20),

                  ),
                  child: Row(
                    children: [
                      Image(image: AssetImage('assets/stop-shop8869.jpg'),
                        height: 100,
                        width: 100,),
                      SizedBox(width: 20,),
                      Text('Stop and Shop',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 40,),
                      TextButton(
                          style: TextButton.styleFrom(
                            primary: Colors.grey,
                          ),
                          onPressed: () { Navigator.pushNamed(context, 'checkout'); },
                          child: Icon(Icons.chevron_right,
                            color: Colors.grey,))
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(20),

                  ),
                  child: Row(
                    children: [
                      Image(image: AssetImage('assets/easyday1.jpg'),
                        height: 100,
                        width: 100,),
                      SizedBox(width: 20,),
                      Text('EasyDay',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 105,),
                      TextButton(
                          style: TextButton.styleFrom(
                            primary: Colors.grey,
                          ),
                          onPressed: () { Navigator.pushNamed(context, 'checkout'); },
                          child: Icon(Icons.chevron_right,
                            color: Colors.grey,))
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(20),

                  ),
                  child: Row(
                    children: [
                      Image(image: AssetImage('assets/24:7.png'),
                        height: 100,
                        width: 100,),
                      SizedBox(width: 20,),
                      Text('24seven',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 105,),
                      TextButton(
                        style: TextButton.styleFrom(
                          primary: Colors.grey,
                        ),
                          onPressed: () { Navigator.pushNamed(context, 'checkout'); },
                          child: Icon(Icons.chevron_right,
                            color: Colors.grey,))
                    ],
                  ),
                ),
              ),





              // list view of cart
              // Expanded(
              //   child: Padding(
              //     padding: const EdgeInsets.all(12.0),
              //     child: ListView.builder(
              //       itemCount: value.cartItems.length,
              //       padding: EdgeInsets.all(12),
              //       itemBuilder: (context, index) {
              //         return Padding(
              //           padding: const EdgeInsets.all(12.0),
              //           child: Container(
              //             decoration: BoxDecoration(
              //                 color: Colors.grey[200],
              //                 borderRadius: BorderRadius.circular(8)),
              //             child: ListTile(
              //               leading: Image.asset(
              //                 value.cartItems[index][2],
              //                 height: 36,
              //               ),
              //               title: Text(
              //                 value.cartItems[index][0],
              //                 style: const TextStyle(fontSize: 18),
              //               ),
              //               subtitle: Text(
              //                 '\₹' + value.cartItems[index][4],
              //                 style: const TextStyle(fontSize: 12),
              //               ),
              //               trailing: IconButton(
              //                 icon: const Icon(Icons.delete),
              //                 onPressed: () =>
              //                     Provider.of<CartModel>(context, listen: false)
              //                         .removeItemFromCart(index),
              //               ),
              //             ),
              //           ),
              //         );
              //       },
              //     ),
              //   ),
              // ),

              // total amount + pay now

              // Padding(
              //   padding: const EdgeInsets.all(36.0),
              //   child: Container(
              //     decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(8),
              //       color: Colors.green,
              //     ),
              //     padding: const EdgeInsets.all(24),
              //     child: Row(
              //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //       children: [
              //         Column(
              //           crossAxisAlignment: CrossAxisAlignment.center,
              //           children: [
              //             Text(
              //               'Checkout',
              //               style: TextStyle(color: Colors.white,
              //                   fontSize: 28,
              //                   fontFamily: 'Ariel',
              //                   fontWeight: FontWeight.bold),
              //             ),
              //
              //             const SizedBox(height: 8),
              //             // total price
              //             // Text(
              //             //   '\₹${value.calculateTotal()}',
              //             //   style: const TextStyle(
              //             //     fontSize: 18,
              //             //     fontWeight: FontWeight.bold,
              //             //     color: Colors.white,
              //             //   ),
              //             // ),
              //           ],
              //         ),
              //
              //         // pay now
              //         ElevatedButton(
              //           // decoration: BoxDecoration(
              //           //   border: Border.all(color: Colors.green.shade200),
              //           //   borderRadius: BorderRadius.circular(28),
              //           // ),
              //           // padding: const EdgeInsets.all(12),
              //           onPressed: () { Navigator.pushNamed(context, 'checkout'); },
              //           style: ElevatedButton.styleFrom(
              //             primary: Colors.green,
              //
              //
              //           ),
              //
              //           child: Row(
              //             children: const [
              //               Text(
              //                 'Pay Now',
              //                 style: TextStyle(color: Colors.white),
              //               ),
              //               Icon(
              //                 Icons.arrow_forward_ios,
              //                 size: 16,
              //                 color: Colors.white,
              //               ),
              //             ],
              //           ),
              //         ),
              //       ],
              //     ),
              //   ),
              // )
            ],
          );
        },
      ),
    );
  }
}
