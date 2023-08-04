// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class DukaanPremium extends StatefulWidget {
  DukaanPremium({super.key});

  @override
  State<DukaanPremium> createState() => _DukaanPremiumState();
}

class _DukaanPremiumState extends State<DukaanPremium> {
  final videoURL = 'https://youtu.be/id1E0lqnUtY';
  late YoutubePlayerController _controller;
  @override
  void initState() {
    final videoID = YoutubePlayer.convertUrlToId(videoURL);
    _controller = YoutubePlayerController(
      initialVideoId: videoID!,
      flags: const YoutubePlayerFlags(autoPlay: false),
    );
    super.initState();
  }

  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        title: Text('Dukaan Premium'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 130,
                  width: double.infinity,
                  color: Colors.blue[800],
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Card(
                    elevation: 2,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      height: 200,
                      width: 350,
                      child: Column(
                        children: [
                          Stack(children: [
                            Container(
                              height: 80,
                              width: 150,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          'https://github.com/amalpr2000/ui_screens/blob/main/assets/images/logo.png?raw=true'))),
                            ),
                            Positioned(
                              top: 50,
                              left: 81,
                              child: Text(
                                'PREMIUM',
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold),
                              ),
                            )
                          ]),
                          Text(
                            'Get Dukaan Premium for just',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '₹4,999/year',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'All the advanced features for scaling your',
                            style: TextStyle(color: Colors.grey, fontSize: 15),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Text(
                            'business.',
                            style: TextStyle(color: Colors.grey, fontSize: 15),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Features',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 270,
                    child: ListView.separated(
                        itemBuilder: (context, index) => ListTile(
                              contentPadding: EdgeInsets.all(0),
                              leading: Container(
                                width: 55,
                                height: 55,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 2.5, color: Colors.blue),
                                    borderRadius: BorderRadius.circular(50)),
                                child: Icon(
                                  icon[index],
                                  size: 40,
                                  color: Colors.blue,
                                ),
                              ),
                              title: Text(
                                featurelist[index][0],
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              subtitle: Text(featurelist[index][1]),
                            ),
                        separatorBuilder: (context, index) => SizedBox(
                              height: 10,
                            ),
                        itemCount: featurelist.length),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, bottom: 15),
              child: Divider(
                thickness: 5,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18),
              child: Row(
                children: [
                  Text(
                    'What is Dukaan Premium?',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                elevation: 2,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 200,
                  width: 350,
                  child: YoutubePlayer(
                    controller: _controller,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Divider(
              thickness: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 20, bottom: 15),
              child: Row(
                children: [
                  Text(
                    'Frequently asked questions',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 420,
              child: ListView.separated(
                  itemBuilder: (context, index) => ExpandedTile(
                      question: freqlist[index][0], answer: freqlist[index][1]),
                  separatorBuilder: (context, index) => Divider(
                        color: Colors.grey,
                      ),
                  itemCount: 6),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 22, bottom: 22),
              child: Divider(
                thickness: 5,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, bottom: 16),
              child: Row(
                children: [
                  Text(
                    'Need help? Get in touch',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _iconcard(icon: Icons.chat_bubble_outline, str: 'Live Chat'),
                _iconcard(icon: Icons.phone_rounded, str: 'Phone Call'),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12, bottom: 12),
              child: Divider(
                thickness: 5,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Select Domain',
                  style: TextStyle(color: Colors.blue[800], fontSize: 16),
                ),
                ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                    onPressed: () {},
                    child: Text(
                      'Get Premium',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ))
              ],
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }

  List<IconData> icon = [
    Icons.language,
    Icons.verified_outlined,
    Icons.laptop_mac_rounded,
    Icons.headset_mic_outlined,
  ];

  List<List<String>> featurelist = [
    [
      'Custom domain',
      'Get your own custom domain and build \nyour brand on the internet.'
    ],
    [
      'Varified seller badge',
      'Get green verified badge under your \nstore name and build trust.'
    ],
    [
      'Dukaan for PC',
      'Access all the exclusive premium \nfeatures on Dukaan for PC.'
    ],
    [
      'Priority support',
      'Get your questions resolved with our\npriority customer support.'
    ],
  ];

  List<List<String>> freqlist = [
    [
      'What type of businesses can use Dukaan \npremium?',
      'Dukaan caters to a wide variety of sellers.Be it a \nsmall grocery store or a big legacy brand - anyone\nwho wants to sell their products/services online-\nDukaan is the perfect platform for you.'
    ],
    [
      'What is your refund policy?',
      'Dukaan caters to a wide variety of sellers.Be it a \nsmall grocery store or a big legacy brand - anyone\nwho wants to sell their products/services online-\nDukaan is the perfect platform for you.'
    ],
    [
      'Will there be an automatic charge after the paid traial?',
      'Dukaan caters to a wide variety of sellers.Be it a \nsmall grocery store or a big legacy brand - anyone\nwho wants to sell their products/services online-\nDukaan is the perfect platform for you.'
    ],
    [
      'What payment methods do you offer?',
      'Dukaan caters to a wide variety of sellers.Be it a \nsmall grocery store or a big legacy brand - anyone\nwho wants to sell their products/services online-\nDukaan is the perfect platform for you.'
    ],
    [
      'What happens when my free trial ends?',
      'Dukaan caters to a wide variety of sellers.Be it a \nsmall grocery store or a big legacy brand - anyone\nwho wants to sell their products/services online-\nDukaan is the perfect platform for you.'
    ],
    [
      'What are the terms for the custom domain?',
      'Dukaan caters to a wide variety of sellers.Be it a \nsmall grocery store or a big legacy brand - anyone\nwho wants to sell their products/services online-\nDukaan is the perfect platform for you.'
    ],
  ];
  _iconcard({required icon, required String str}) {
    return Card(
      elevation: 4,
      color: Colors.white,
      child: SizedBox(
        height: 90,
        width: 160,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Icon(icon), Text(str)],
        ),
      ),
    );
  }
}

class AddIcon extends StatefulWidget {
  AddIcon({super.key});

  @override
  State<AddIcon> createState() => _AddIconState();
}

class _AddIconState extends State<AddIcon> {
  bool isExoanded = false;
  @override
  Widget build(BuildContext context) {
    return isExoanded ? Icon(Icons.minimize_rounded) : Icon(Icons.add);
  }
}

class ExpandedTile extends StatefulWidget {
  String question;
  String answer;
  ExpandedTile({super.key, required this.question, required this.answer});

  @override
  State<ExpandedTile> createState() => _ExpandedTileState();
}

class _ExpandedTileState extends State<ExpandedTile> {
  bool expandedOrNot = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ExpansionTile(
          // tilePadding: EdgeInsets.all(5),
          title: Text(
            widget.question,
            style: const TextStyle(fontSize: 17, color: Colors.black),
          ),
          trailing: Icon(
            expandedOrNot ? Icons.minimize_outlined : Icons.add,
            color: Colors.black,
          ),
          onExpansionChanged: (value) {
            return setState(() {
              expandedOrNot = value;
            });
          },
          children: [
            Padding(
              padding: const EdgeInsets.all(0),
              child: Text(widget.answer),
            ),
          ],
        ),
        // Padding(
        //   padding: const EdgeInsets.only(left: 10, right: 10),
        //   child: Divider(
        //     thickness: 1,
        //   ),
        // )
      ],
    );
  }
}
