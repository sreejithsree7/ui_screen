// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class AdditionalInformation extends StatefulWidget {
  AdditionalInformation({super.key});
  @override
  State<AdditionalInformation> createState() => _AdditionalInformationState();
}

class _AdditionalInformationState extends State<AdditionalInformation> {
  bool isSwitchon = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[800],
          centerTitle: true,
          title: Text(
            'Additional Information',
          ),
        ),
        body: Column(
          children: [
            customlistview(
                leadingIcon: Icons.share,
                title: 'Share Dukaan App',
                trailingIcon: Icons.arrow_forward_ios_rounded),
            customlistview(
                leadingIcon: Icons.message_outlined,
                title: 'Change Language',
                trailingIcon: Icons.arrow_forward_ios_rounded),
            ListTile(
              leading: Icon(Icons.wechat),
              title: Text('WhatsApp Chat Support'),
              trailing: Switch(
                value: isSwitchon,
                onChanged: (value) {
                  setState(() {
                    isSwitchon = !isSwitchon;
                  });
                },
              ),
            ),
            customlistview(
              leadingIcon: Icons.lock_open_rounded,
              title: 'Privacy Policy',
            ),
            customlistview(leadingIcon: Icons.star_border, title: 'Rate Us'),
            customlistview(leadingIcon: Icons.exit_to_app, title: 'Sign Out'),
            Spacer(),
            Text('Version'),
            Text('2.4.2'),
            SizedBox(
              height: 10,
            )
          ],
        ));
  }

  ListTile customlistview(
      {required IconData leadingIcon,
      required String title,
      IconData? trailingIcon}) {
    return ListTile(
      leading: Icon(leadingIcon),
      title: Text(title),
      trailing: Icon(trailingIcon),
    );
  }
}
