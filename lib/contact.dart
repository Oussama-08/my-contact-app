import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Contact extends StatefulWidget {
  Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  String? socialmedia;
  Uri? socialMedialink;

  final Map<String, String> socialMediaMap = {
    'facebook.png': 'https://www.facebook.com/profile.php?id=100005313945397',
    'Github.png': 'https://github.com',
    'gmail.png': 'https://mail.google.com/mail/u/0/#sent',
    'instagram.png': 'https://www.instagram.com/oussama.rhm/',
    'whatsapp.png': 'https://wa.me/+213793651350',
    'tiktok.png':
        'https://www.tiktok.com/@raouflivekick/video/7465736862636772613',
    'In.png': 'https://fr.linkedin.com/',
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Icon(
          Icons.home,
          color: Colors.white,
        ),
        title: Text(
          'Home Page',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: IconButton(
                  onPressed: () {},
                  icon: socialMedialink == null
                      ? IconButton(
                          onPressed: () {
                            launchUrl(Uri.parse('tel:+213793651350'));
                          },
                          icon: Icon(Icons.phone_in_talk_outlined,
                              color: Colors.white, size: 30))
                      : Material(
                          borderRadius: BorderRadius.circular(50),
                          elevation: 4,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: Image(
                              image: AssetImage('assets/$socialmedia'))))),
        ],
      ),
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
                        onPressed: () {
                          launchUrl(Uri.parse('tel:+213793651350'));
                        },
                        icon: Icon(Icons.phone_in_talk_outlined,
                            color: Colors.white, size: 30)),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                GridView.builder(
                  itemCount: socialMediaMap.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        child: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          backgroundImage: AssetImage(
                              'assets/${socialMediaMap.keys.toList()[index]}'),
                          radius: 30,
                        ),
                        onTap: () {
                          socialmedia = socialMediaMap.keys.toList()[index];
                          socialMedialink =
                              Uri.parse(socialMediaMap.values.toList()[index]);
                          setState(() {
                            launchUrl(socialMedialink!,
                                mode: LaunchMode.externalApplication);
                          });
                        },
                      ),
                    );
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
