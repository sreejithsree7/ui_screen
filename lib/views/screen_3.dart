// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Payments extends StatelessWidget {
  Payments({super.key});

  List ProductName = [
    "Order #1688068",
    "Order #1457741",
    "Order #1408896",
    "Order #1369633",
    "Order #1370125",
    "Order #1370568",
    "Order #1359971",
    "Order #1265103",
    "Order #1173537",
    "Order #1176731",
    "Order #1174245",
    "Order #1177731",
    "Order #1174282",
    "Order #1174435",
    "Order #1164892",
  ];
  List ProductRate = [
    '₹799',
    '₹397.4',
    '₹686.42',
    '₹1123.5',
    '₹1122.75',
    '₹884.17',
    '₹599.25',
    '₹2,297',
    '₹599.25',
    '₹524.25',
    '₹699',
    '₹1123.,5',
    '₹799',
    '₹524.25',
    '₹524.25',
  ];
  List ProductDate = [
    'jul 12, 02:06 PM',
    'Apr 26, 07:47 AM',
    'Apr 11, 10:54 AM',
    'Apr 2, 11:29 AM',
    'Apr 2, 11:29 AM',
    'Apr 1, 11:19 AM',
    'Apr 1, 10:37 AM',
    'Mar 6, 01:26 PM',
    'Feb 22, 10:04 PM',
    'Feb 21, 01:25 PM',
    'Feb 21, 10:20 AM',
    'Feb 20, 09:54 AM',
    'Feb 19, 10:47 AM',
    'Feb 18, 12:08 PM',
    'Feb 13, 07:57 PM',
  ];
  List deposited = [
    '₹799 deposited to 58860200000138',
    '₹397.4 deposited to 58860200000138',
    '₹656.4 deposited to 58860200000138',
    '₹123.6 deposited to 58860200000138',
    '₹1722.7 deposited to 58860200000138',
    '₹854.1 deposited to 58860200000138',
    '₹599.25 deposited to 58860200000138',
    '₹197 deposited to 58860200000138',
    '₹599 deposited to 58860200000138',
    '₹524 deposited to 58860200000138',
    '₹699 deposited to 58860200000138',
    '₹1123.5 deposited to 58860200000138',
    '₹799 deposited to 58860200000138',
    '₹524.25 deposited to 58860200000138',
    '₹524.25 deposited to 58860200000138',
  ];
  List productImage = [
    'https://rukminim1.flixcart.com/image/850/650/kl2mljk0/kids-t-shirt/y/h/c/7-8-years-pretty-awesome-isle-of-tangerines-original-imagy9zpzbfzrxge.jpeg?q=20',
    'https://cdn.shopify.com/s/files/1/0584/2770/3448/products/t-shirts-for-kids-bu021939-rama-11_1400x.jpg?v=1647344261',
    'https://i.pinimg.com/550x/93/20/13/932013c737cc814726d1de4da585bfdd.jpg',
    'https://5.imimg.com/data5/SELLER/Default/2022/8/BH/EE/VB/122998678/n-3-250x250.png',
    'https://rukminim1.flixcart.com/image/850/650/kl2mljk0/kids-t-shirt/y/h/c/7-8-years-pretty-awesome-isle-of-tangerines-original-imagy9zpzbfzrxge.jpeg?q=20',
    'https://rukminim1.flixcart.com/image/312/312/xif0q/pencil-box/y/f/b/stn-combo-37-8-poksi-original-imagdmyyuzvtyzvh.jpeg?q=70',
    'https://cdn.shopify.com/s/files/1/0036/7637/3061/products/WhatsAppImage2022-06-30at5.52.17PM_1.jpg?v=1656936482',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ8c4PQBIROujYZ05Nv14XwVLSXwwqArHtUXQ&usqp=CAU',
    'https://cdn.shopaccino.com/feranoid/products/keep-it-mellow-t-shirt-542798_m.jpg?v=452',
    'https://cdn.shopify.com/s/files/1/0050/9994/6070/products/ridingspiritolive_150x150_crop_center.jpg?v=1641487858',
    'https://cdn.shopify.com/s/files/1/0399/7620/6492/products/WhatsAppImage2021-04-07at9.15.57AM.jpg?v=1617775003&width=533',
    'https://i.ebayimg.com/images/g/LTEAAOSwhsBjGTqg/s-l500.jpg',
    'https://rukminim1.flixcart.com/image/850/650/kl2mljk0/kids-t-shirt/y/h/c/7-8-years-pretty-awesome-isle-of-tangerines-original-imagy9zpzbfzrxge.jpeg?q=20',
    'https://rukminim1.flixcart.com/image/312/312/xif0q/pencil-box/y/f/b/stn-combo-37-8-poksi-original-imagdmyyuzvtyzvh.jpeg?q=70',
    'https://cdn.shopify.com/s/files/1/0036/7637/3061/products/WhatsAppImage2022-06-30at5.52.17PM_1.jpg?v=1656936482',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        title: Text('Payments'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Card(
                    color: Colors.grey,
                    // elevation: ,
                    child: Container(
                      margin: EdgeInsets.all(0.4),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5)),
                      height: 182,
                      width: 350,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Transaction Limit',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'A free limit up to which you will receive\nthe online payments directly in your bank',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.grey),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              child: LinearProgressIndicator(
                                value: 13332 / 50000,
                                color: Colors.blue[800],
                                backgroundColor: Colors.grey[300],
                                minHeight: 5,
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              '36,668 left out of ₹50,000',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 15),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            SizedBox(
                              height: 30,
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.blue[800]),
                                  onPressed: () {},
                                  child: Text('Increase limit')),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18, right: 18, bottom: 18),
              child: Row(
                children: [
                  Text(
                    'Default Method',
                    style: TextStyle(fontSize: 18),
                  ),
                  Spacer(),
                  Text(
                    'Online payments',
                    style: TextStyle(color: Colors.grey, fontSize: 15),
                  ),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 18,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 18,
                right: 18,
              ),
              child: Row(
                children: [
                  Text(
                    'Payment Profile',
                    style: TextStyle(fontSize: 18),
                  ),
                  Spacer(),
                  Text(
                    'Bank Account',
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 18,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Divider(
                thickness: 2,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18, right: 18),
              child: Row(
                children: [
                  Text(
                    'Payments Overview',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text(
                    'Life Time',
                    style: TextStyle(color: Colors.grey, fontSize: 15),
                  ),
                  Icon(Icons.keyboard_arrow_down_outlined)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  colorCard(
                      title: 'AMOUNT ON HOLD',
                      amount: '0',
                      color: Colors.orange),
                  colorCard(
                      title: 'AMOUNT RECEIVED',
                      amount: '13,332',
                      color: Color.fromARGB(255, 3, 202, 50))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 10),
              child: Row(
                children: [
                  Text(
                    'Tansactions',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ChoiceChip(
                    label: Text('On hold'),
                    selected: false,
                    disabledColor: Colors.grey[300]),
                ChoiceChip(
                  label: Text(
                    'Payouts (15)',
                    style: TextStyle(color: Colors.white),
                  ),
                  selected: true,
                  selectedColor: Colors.blue[800],
                ),
                ChoiceChip(
                  label: Text('Refunds'),
                  selected: false,
                  disabledColor: Colors.grey[300],
                )
              ],
            ),
            SizedBox(
              height: 400,
              child: GridView.builder(
                itemCount: ProductName.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 1 / .3,
                  crossAxisCount: 1,
                  mainAxisSpacing: 10,
                ),
                itemBuilder: (context, index) => Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(6),
                                image: DecorationImage(
                                    image: NetworkImage(productImage[index]))),
                            height: 60,
                            width: 60,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5.0),
                            child: Column(
                              children: [
                                // SizedBox(
                                //   height: 5,
                                // ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      ProductName[index],
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    // Spacer(),
                                    SizedBox(
                                      width: 110,
                                    ),
                                    Text(
                                      ProductRate[index],
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                          color: Colors.blue[400]),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(ProductDate[index]),
                                      SizedBox(
                                        width: 99,
                                      ),
                                      CircleAvatar(
                                        radius: 5,
                                        backgroundColor: Colors.green,
                                      ),
                                      SizedBox(
                                        width: 2,
                                      ),
                                      Text('Successful')
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 12, top: 5),
                        child: Text(deposited[index]),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Divider(
                          color: Colors.grey,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  colorCard({required String title, required String amount, required color}) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 100,
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(5)),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  title,
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  '₹$amount',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
