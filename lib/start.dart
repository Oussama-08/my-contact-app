import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class StartSocialMedia extends StatelessWidget {
  String socialMedialink;

  StartSocialMedia({
    super.key,
    required this.socialMedialink,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: ElevatedButton(
          style: ButtonStyle(backgroundColor:WidgetStatePropertyAll(Colors.deepOrange)),
            onPressed: () {
              launchUrl(Uri.parse(socialMedialink),
                  mode: LaunchMode.externalApplication);
            },
            child: Text('start social media')),
      ),
    );
  }
}
