// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'dart:math';

import 'package:flutter/material.dart';

class ManageStore extends StatelessWidget {
  ManageStore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        centerTitle: true,
        title: Text('Manage Store'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: GridView.builder(
          itemCount: gridName.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 20,
              crossAxisSpacing: 20,
              childAspectRatio: 1 / .7),
          itemBuilder: (context, index) => Material(
            elevation: 5,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: gridIconColor[index],
                        ),
                        // height: 45,
                        // width: 45,

                        child: Icon(
                          gridIcon[index],
                          size: 40,
                          color: Colors.white,
                        ),
                      ),
                      if (index == gridName.length - 1)
                        Container(
                          height: 20,
                          width: 50,
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(5)),
                          child: Center(
                            child: Text(
                              'NEW',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        )
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    gridName[index],
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ],
                crossAxisAlignment: CrossAxisAlignment.start,
              ),
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10)),
              padding: EdgeInsets.all(15),
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.currency_rupee_sharp), label: 'Order'),
          BottomNavigationBarItem(
              icon: Icon(Icons.window_outlined), label: 'Products'),
          BottomNavigationBarItem(
              icon: Icon(Icons.library_books), label: 'Manage'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_2_outlined), label: 'Account')
        ],
        unselectedLabelStyle: TextStyle(color: Colors.grey),
        showUnselectedLabels: true,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.indigo,
        currentIndex: 3,
      ),
    );
  }

  List gridIcon = [
    Icons.business_center_sharp,
    Icons.payment_sharp,
    Icons.percent_rounded,
    Icons.perm_contact_cal_outlined,
    Icons.qr_code_scanner_outlined,
    Icons.currency_rupee_rounded,
    Icons.list_alt_rounded,
  ];
  List gridIconColor = [
    Colors.orange.shade900,
    Colors.green,
    Colors.yellow.shade700,
    Colors.green.shade300,
    Colors.grey.shade800,
    Colors.purple.shade800,
    Colors.purple.shade400,
  ];
  List gridName = [
    'Marketing\nDesigns',
    'Online\nPayments',
    'Discount\nCoupons',
    'My\nCustomers',
    'Store QR\nCode',
    'Extra\nCharges',
    'Order\nForm',
  ];
}
