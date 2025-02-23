import 'package:flutter/material.dart';
import 'package:flutter_application_1/start.dart';

class SocialMediaIcon extends StatelessWidget {
  String socialMedia;
  String socialMedialink;

  SocialMediaIcon(
      {required this.socialMedia, required this.socialMedialink, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        child: CircleAvatar(
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('assets/$socialMedia'),
          radius: 30,
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => StartSocialMedia(
                      socialMedialink:
                          'https://www.facebook.com/profile.php?id=100005313945397',
                    )),
          );
        },
      ),
    );
  }
}
