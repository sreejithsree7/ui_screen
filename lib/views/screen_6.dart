// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

class Catalogue extends StatefulWidget {
  Catalogue({super.key});

  @override
  State<Catalogue> createState() => _CatalogueState();
}

class _CatalogueState extends State<Catalogue>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 2);
  }

  List productImg = [
    'https://yi-files.s3.eu-west-1.amazonaws.com/products/708000/708037/1217218-cover.jpg',
    'https://images.meesho.com/images/products/169540230/kfod9_512.webp',
    'https://m.media-amazon.com/images/I/61okvM1wNsL.jpg',
    'https://mydukaan.s3.amazonaws.com/3377706/fd293b93-ebac-449c-a718-157df6bdbf99/no-price-01-b2c870ed-5b60-485d-806c-1dbc7c6fc3b2.jpg',
    'https://mydukaan.s3.amazonaws.com/3377706/fd293b93-ebac-449c-a718-157df6bdbf99/whatsapp-image-2021-04-12-at-3-12eea4df-71da-499c-8fca-eb778c51cfd4.jpeg',
    'https://cdn3.mydukaan.io/app/image/1000x1000/?url=https://mydukaan.s3.amazonaws.com/3377706/fd293b93-ebac-449c-a718-157df6bdbf99/no-price-04-6faa7c09-cbbb-4521-a59e-3253a9b7621e.jpg',
    'https://mydukaan.s3.amazonaws.com/3377706/fd293b93-ebac-449c-a718-157df6bdbf99/no-price-02-9c3d9a56-f3f8-4240-9b07-7dfb5af29f10.jpg',
    'https://mydukaan.s3.amazonaws.com/3377706/fd293b93-ebac-449c-a718-157df6bdbf99/no-price-01-b2c870ed-5b60-485d-806c-1dbc7c6fc3b2.jpg',
  ];
  List productName = [
    'Couch Potato | Women...',
    'Couch Potato | Men | BI...',
    'Mug | Explore',
    'Combo Blahst 2 | Expla...',
    'Mug | Orchard',
    'Combo Blashst 2 | Expla...',
    'I See Combo Pack',
    'Kids Combo Blahst',
  ];

  List productprice = [
    '₹799',
    '₹799',
    '₹399',
    '₹699',
    '₹499',
    '₹599',
    '₹1,299',
    '₹1,199',
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        centerTitle: true,
        title: Text('Catalogue'),
        actions: [Icon(Icons.search)],
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: [
            Tab(
              text: 'Products',
            ),
            Tab(
              text: 'Categories',
            )
          ],
        ),
      ),
      body: TabBarView(controller: _tabController, children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: GridView.builder(
            itemCount: productName.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                mainAxisSpacing: 15,
                childAspectRatio: 1 / .48),
            itemBuilder: (context, index) => Material(
              elevation: 5,
              borderRadius: BorderRadius.circular(10),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(6),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(productImg[index]))),
                          height: 95,
                          width: 95,
                        ),
                        Column(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  child: Text(
                                    productName[index],
                                    style: TextStyle(fontSize: 16),
                                  ),
                                  width: 207,
                                ),
                                Icon(Icons.more_vert_rounded)
                              ],
                            ),
                            Text('1 piece'),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              productprice[index],
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  child: Text(
                                    'In stock',
                                    style: TextStyle(
                                        color: Colors.green,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  width: 172,
                                ),
                                Switch(
                                  value: true,
                                  onChanged: (value) {},
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                    Divider(
                      color: Colors.grey,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.share_outlined),
                        SizedBox(
                          width: 10,
                        ),
                        Text('Share Product')
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        Center(child: Text('Categories'))
      ]),
    );
  }
}
