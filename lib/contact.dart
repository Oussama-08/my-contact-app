import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'widgets/socialmediaicon.dart';


class Contact extends StatelessWidget {
  Contact({super.key});

  Map <String,String> socialMedia = {
    'facebook.png' :  'https://www.facebook.com/profile.php?id=100005313945397',
    'Github.png'   :  'https://github.com',
    'gmail.png'    :  'https://mail.google.com/mail/u/0/#sent',
    'instagram.png':  'https://www.instagram.com/oussama.rhm/',
    'whatsapp.png' :  'https://wa.me/+213793651350',
    'tiktok.png'   :  'https://www.tiktok.com/@raouflivekick/video/7465736862636772613',
    'In.png'       :  'https://fr.linkedin.com/',
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 50,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage('assets/luffy.png'),
                  radius: 150,
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  'Oussama Rahmouni',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      '+213793651350',
                      style: TextStyle(
                        color: const Color.fromARGB(255, 80, 76, 76),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.phone_in_talk_outlined,
                        size: 30,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        launchUrl(Uri.parse('tel:+213793651350'));
                      },
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                GridView.builder(
                  itemCount: socialMedia.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3),
                  itemBuilder: (context, index) {
                    return SocialMediaIcon(
                        socialMedia: socialMedia.keys.toList()[index],
                        socialMedialink: socialMedia.values.toList()[index]);
                  },
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  padding: EdgeInsets.all(20),
                ),
              ],
            ),
          )),
    );
  }

}