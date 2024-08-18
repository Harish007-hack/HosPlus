import 'package:flutter/material.dart';
import 'package:hosplus/components/custom/hmw_upcoming_appointment_card.dart';
import 'package:hosplus/components/custom/rounded_button.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          //Saluation

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Hello Saluation

                const Text(
                  "Hello,",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey,
                  ),
                ),

                //Name of customer

                const Text(
                  "Adelaide Summers",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    // color: Colors.black,
                  ),
                ),

                const SizedBox(height: 15,),

                //Quick Search
                //Heading

                const Text(
                  "Quick Search",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                // Padding(padding: EdgeInsets.only(top: 5)),
                const SizedBox(
                  height: 25,
                ),

                //Quick search Options
                // Column(
                //   children: [
                //     Padding(
                //       padding: const EdgeInsets.only(top: 15.0),

                //       //First row (2 Container)

                //       child: Row(
                //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //         children: [
                //           //Container 1 (General)

                //           InkWell(
                //             splashColor: Colors.grey,
                //             onTap: () {},
                //             child: Container(
                //               decoration: BoxDecoration(
                //                   borderRadius: BorderRadius.circular(10),
                //                   border: Border.all(
                //                       width: 1, color: Colors.black)),
                //               height: 70,
                //               width: 150,
                //               child: Center(
                //                 child: Text(
                //                   "General",
                //                   style: TextStyle(
                //                       fontSize: 20,
                //                       fontWeight: FontWeight.bold),
                //                 ),
                //               ),
                //             ),
                //           ),

                //           //Container 2 (Pulmonology)

                //           InkWell(
                //             splashColor: Colors.grey,
                //             onTap: () {},
                //             child: Container(
                //               decoration: BoxDecoration(
                //                   borderRadius: BorderRadius.circular(10),
                //                   border: Border.all(
                //                       width: 1, color: Colors.black)),
                //               height: 70,
                //               width: 150,
                //               child: Center(
                //                 child: Text(
                //                   "Pulmonology",
                //                   style: TextStyle(
                //                       fontSize: 20,
                //                       fontWeight: FontWeight.bold),
                //                 ),
                //               ),
                //             ),
                //           )
                //         ],
                //       ),
                //     ),
                //     Padding(
                //       padding: const EdgeInsets.only(top: 15.0),

                //       //Row 2 (2 Containers)

                //       child: Row(
                //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //         children: [
                //           //Container 3 (Dermotology)

                //           InkWell(
                //             splashColor: Colors.grey,
                //             onTap: () {},
                //             child: Container(
                //               decoration: BoxDecoration(
                //                   borderRadius: BorderRadius.circular(10),
                //                   border: Border.all(
                //                       width: 1, color: Colors.black)),
                //               height: 70,
                //               width: 150,
                //               child: Center(
                //                 child: Text(
                //                   "Dermotology",
                //                   style: TextStyle(
                //                       fontSize: 20,
                //                       fontWeight: FontWeight.bold),
                //                 ),
                //               ),
                //             ),
                //           ),

                //           //Container 4 (Orthology)

                //           InkWell(
                //             splashColor: Colors.grey,
                //             onTap: () {},
                //             child: Container(
                //               decoration: BoxDecoration(
                //                   borderRadius: BorderRadius.circular(10),
                //                   border: Border.all(
                //                       width: 1, color: Colors.black)),
                //               height: 70,
                //               width: 150,
                //               child: Center(
                //                 child: Text(
                //                   "Orthology",
                //                   style: TextStyle(
                //                       fontSize: 20,
                //                       fontWeight: FontWeight.bold),
                //                 ),
                //               ),
                //             ),
                //           )
                //         ],
                //       ),
                //     ),
                //   ],
                // ),

                GridView(
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    childAspectRatio: 1,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                  ),
                  children: const [
                    RoundedButton(
                        text: "Balalahaha",
                        btnColor: Color.fromARGB(232, 112, 94, 94)),
                    RoundedButton(
                        text: "Balalahaha",
                        btnColor: Color.fromARGB(232, 112, 94, 94)),
                    RoundedButton(
                        text: "Balalahaha",
                        btnColor: Color.fromARGB(232, 112, 94, 94)),
                    RoundedButton(
                        text: "Balalahaha",
                        btnColor: Color.fromARGB(232, 112, 94, 94)),
                    RoundedButton(
                        text: "Balalahaha",
                        btnColor: Color.fromARGB(232, 112, 94, 94)),
                    RoundedButton(
                        text: "Balalahaha",
                        btnColor: Color.fromARGB(232, 112, 94, 94)),
                    RoundedButton(
                        text: "Balalahaha",
                        btnColor: Color.fromARGB(232, 112, 94, 94)),
                    RoundedButton(
                        text: "Balalahaha",
                        btnColor: Color.fromARGB(232, 112, 94, 94)),
                    // InkWell(
                    //   splashColor: Colors.grey,
                    //   onTap: () {},
                    //   child: Container(
                    //     decoration: BoxDecoration(
                    //         borderRadius: BorderRadius.circular(10),
                    //         border: Border.all(width: 1, color: Colors.black)),
                    //     height: 70,
                    //     width: 150,
                    //     child: Center(
                    //       child: Text(
                    //         "Orthology",
                    //         style: TextStyle(
                    //             fontSize: 20, fontWeight: FontWeight.bold),
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    // InkWell(
                    //   splashColor: Colors.grey,
                    //   onTap: () {},
                    //   child: Container(
                    //     decoration: BoxDecoration(
                    //         borderRadius: BorderRadius.circular(10),
                    //         border: Border.all(width: 1, color: Colors.black)),
                    //     height: 70,
                    //     width: 150,
                    //     child: Center(
                    //       child: Text(
                    //         "Orthology",
                    //         style: TextStyle(
                    //             fontSize: 20, fontWeight: FontWeight.bold),
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    // InkWell(
                    //   splashColor: Colors.grey,
                    //   onTap: () {},
                    //   child: Container(
                    //     decoration: BoxDecoration(
                    //         borderRadius: BorderRadius.circular(10),
                    //         border: Border.all(width: 1, color: Colors.black)),
                    //     height: 70,
                    //     width: 150,
                    //     child: Center(
                    //       child: Text(
                    //         "Orthology",
                    //         style: TextStyle(
                    //             fontSize: 20, fontWeight: FontWeight.bold),
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    // InkWell(
                    //   splashColor: Colors.grey,
                    //   onTap: () {},
                    //   child: Container(
                    //     decoration: BoxDecoration(
                    //         borderRadius: BorderRadius.circular(10),
                    //         border: Border.all(width: 1, color: Colors.black)),
                    //     height: 70,
                    //     width: 150,
                    //     child: Center(
                    //       child: Text(
                    //         "Orthology",
                    //         style: TextStyle(
                    //             fontSize: 20, fontWeight: FontWeight.bold),
                    //       ),
                    //     ),
                    //   ),
                    // ),
                  ],
                ),

                //Upcoming Appointments

                const Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Text(
                    "Upcoming Appointments",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),

                //appoinmnet 1

                const HmwUpcomingAppointmentCard(
                  image:
                      "https://images.squarespace-cdn.com/content/v1/54c6eb0ce4b0f6cdd67c1196/1642223720668-I2XL35T6SMPTDZPOTRFJ/DCP_0085.jpg",
                  name: "Dr.Emily Carlton",
                  dateTime: "24/07/2024, 10:00 AM",
                ),
                const HmwUpcomingAppointmentCard(
                  image:
                      "https://images.squarespace-cdn.com/content/v1/54c6eb0ce4b0f6cdd67c1196/1642223720668-I2XL35T6SMPTDZPOTRFJ/DCP_0085.jpg",
                  name: "Dr.Emily Carlton",
                  dateTime: "24/07/2024, 10:00 AM",
                ),
                const HmwUpcomingAppointmentCard(
                  image:
                      "https://images.squarespace-cdn.com/content/v1/54c6eb0ce4b0f6cdd67c1196/1642223720668-I2XL35T6SMPTDZPOTRFJ/DCP_0085.jpg",
                  name: "Dr.Emily Carlton",
                  dateTime: "24/07/2024, 10:00 AM",
                ),

                // Padding(
                //   padding: const EdgeInsets.only(top: 15.0),
                //   child: InkWell(
                //     splashColor: Colors.grey,
                //     onTap: () {},
                //     child: Container(
                //       height: 300,
                //       width: double.infinity,
                //       decoration: BoxDecoration(
                //         image: DecorationImage(
                //           image: NetworkImage(
                //               "https://images.squarespace-cdn.com/content/v1/54c6eb0ce4b0f6cdd67c1196/1642223720668-I2XL35T6SMPTDZPOTRFJ/DCP_0085.jpg"),
                //           // alignment: Alignment(1, -1),
                //         ),
                //         // border: Border.all(width: 1, color: Colors.black),
                //         borderRadius: BorderRadius.circular(30),
                //       ),
                //       child: const Padding(
                //         padding: const EdgeInsets.only(left: 10, bottom: 20),
                //         child: Column(
                //           mainAxisAlignment: MainAxisAlignment.end,
                //           crossAxisAlignment: CrossAxisAlignment.start,
                //           children: [
                //             Text(
                //               "Dr.Emily Carlton",
                //               style: TextStyle(
                //                   fontSize: 18,
                //                   fontWeight: FontWeight.bold,
                //                   color: Colors.white),
                //             ),
                //             Text(
                //               "24/07/2024, 10:00 AM",
                //               style:
                //                   TextStyle(fontSize: 15, color: Colors.white),
                //             ),
                //           ],
                //         ),
                //       ),
                //     ),
                //   ),
                // ),

                // //appoinment 2

                // Padding(
                //   padding: const EdgeInsets.only(top: 15.0),
                //   child: InkWell(
                //     splashColor: Colors.grey,
                //     onTap: () {},
                //     child: Container(
                //       height: 300,
                //       width: double.infinity,
                //       decoration: BoxDecoration(
                //           image: DecorationImage(
                //               image: NetworkImage(
                //                   "https://images.squarespace-cdn.com/content/v1/54c6eb0ce4b0f6cdd67c1196/1642223720668-I2XL35T6SMPTDZPOTRFJ/DCP_0085.jpg"),
                //               alignment: Alignment(1, -1)),
                //           border: Border.all(width: 1, color: Colors.black),
                //           borderRadius: BorderRadius.circular(10)),
                //       child: Padding(
                //         padding: const EdgeInsets.only(
                //             top: 230, left: 5, right: 160),
                //         child: Column(
                //           crossAxisAlignment: CrossAxisAlignment.start,
                //           children: [
                //             Text(
                //               "Dr.Emily Carlton",
                //               style: TextStyle(
                //                 fontSize: 18,
                //                 fontWeight: FontWeight.bold,
                //               ),
                //             ),
                //             Text(
                //               "02/08/2024, 11:00 AM",
                //               style: TextStyle(
                //                 fontSize: 15,
                //               ),
                //             )
                //           ],
                //         ),
                //       ),
                //     ),
                //   ),
                // ),

                // //appoinment 3

                // Padding(
                //   padding: const EdgeInsets.only(top: 15.0),
                //   child: InkWell(
                //     splashColor: Colors.grey,
                //     onTap: () {},
                //     child: Container(
                //       height: 300,
                //       decoration: BoxDecoration(
                //           image: DecorationImage(
                //               image: NetworkImage(
                //                   "https://images.squarespace-cdn.com/content/v1/54c6eb0ce4b0f6cdd67c1196/1642223720668-I2XL35T6SMPTDZPOTRFJ/DCP_0085.jpg"),
                //               alignment: Alignment(1, -1)),
                //           border: Border.all(width: 1, color: Colors.black),
                //           borderRadius: BorderRadius.circular(10)),
                //       child: Padding(
                //         padding: const EdgeInsets.only(
                //             top: 230, left: 5, right: 160),
                //         child: Column(
                //           crossAxisAlignment: CrossAxisAlignment.start,
                //           children: [
                //             Text(
                //               "Dr.Emily Carlton",
                //               style: TextStyle(
                //                 fontSize: 18,
                //                 fontWeight: FontWeight.bold,
                //               ),
                //             ),
                //             Text(
                //               "12/08/2024, 12:00 PM",
                //               style: TextStyle(
                //                 fontSize: 15,
                //               ),
                //             )
                //           ],
                //         ),
                //       ),
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
        ],
      ),

      //Appbar Icons

      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,

        //Menu Icon

        // leading: Builder(builder: (context) {
        //   return IconButton(
        //     icon: Icon(Icons.menu),
        //     color: Colors.black,
        //     onPressed: () {
        //       Scaffold.of(context).openDrawer();
        //     },
        //   );
        // }),

        // Notification Icon

        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications),
            color: Colors.black,
          ),
        ],
      ),

      //Drawer menu

      drawer: const Drawer(
        backgroundColor: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //Drawer Heading

            Column(
              children: [
                DrawerHeader(child: Icon(Icons.h_plus_mobiledata,size: 50,)),
                
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: ListTile(
                    leading: Icon(
                      Icons.person,
                      color: Colors.black,
                    ),
                    title: Text(
                      "Profile",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
                
                //Settings
                
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: ListTile(
                    leading: Icon(
                      Icons.settings,
                      color: Colors.black,
                    ),
                    title: Text(
                      "Settings",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),

            //Logout

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 20),
              child: ListTile(
                leading: Icon(
                  Icons.logout,
                  color: Colors.black,
                ),
                title: Text(
                  "Logout",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
