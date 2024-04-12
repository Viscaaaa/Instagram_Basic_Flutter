import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class StoryWidget extends StatelessWidget {
  const StoryWidget(
      {super.key,
      required this.name,
      required this.userImage,
      required this.isMe,
      required this.isLive});

  final String name;
  final String userImage;

  final bool isMe;
  final bool isLive;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: [
          Stack(
              alignment:
                  isLive ? Alignment.bottomCenter : Alignment.bottomRight,
              children: [
                CircleAvatar(
                  radius: 33,
                  backgroundColor: isMe
                      ? Colors.white
                      : (isLive ? Colors.blue : Colors.pink),
                  child: CircleAvatar(
                    radius: 32,
                    backgroundImage: NetworkImage(userImage),
                  ),
                ),
                if (isMe)
                  CircleAvatar(
                    radius: 10,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 9,
                      backgroundColor: Colors.blue,
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 19,
                      ),
                    ),
                  ),
                if (isLive)
                  Container(
                    alignment: Alignment.center,
                    height: 15,
                    width: 40,
                    color: Colors.pink,
                    child: Text(
                      "LIVE",
                      style: TextStyle(fontSize: 11, color: Colors.white),
                    ),
                  ),
              ]),
          Padding(
            padding: EdgeInsets.only(top: 5),
            child: Text(name),
          )
        ],
      ),
    );
  }
}

class Stories extends StatelessWidget {
  Stories({super.key});

  final List user = [
    "Visca",
    "Beomyu",
    "Soobin",
    "Yeonjun",
    "Taehyun",
    "Heuningkai",
    "Visca",
    "Beomyu",
    "Soobin",
    "Yeonjun",
  ];

  final List userImage = [
    'https://assets.ayobandung.com/crop/0x150:720x614/750x500/webp/photo/2023/01/24/4064549419.jpg',
    'https://cdn1-production-images-kly.akamaized.net/3cMLI7Jqnz4NioAYayRRlpT5cag=/800x1066/smart/filters:quality(75):strip_icc():format(webp)/kly-media-production/medias/4772184/original/001055300_1710399757-f290bf4e2b4d52ae25ee0451c944d038.jpg',
    'https://media.suara.com/pictures/970x544/2022/05/01/52291-soobin-txt-koreaboo.jpg',
    'https://cdn.idntimes.com/content-images/community/2019/01/dwktogvu8aajstr-69245e4aaf62061f79308ca90eff3624_600x400.jpeg',
    'https://image.kpopmap.com/2023/04/txt-taehyun-041823-2.jpg',
    'https://i.pinimg.com/736x/14/97/fe/1497fe85e558e550e544e87a94311179.jpg',
    'https://assets.ayobandung.com/crop/0x150:720x614/750x500/webp/photo/2023/01/24/4064549419.jpg',
    'https://cdn1-production-images-kly.akamaized.net/3cMLI7Jqnz4NioAYayRRlpT5cag=/800x1066/smart/filters:quality(75):strip_icc():format(webp)/kly-media-production/medias/4772184/original/001055300_1710399757-f290bf4e2b4d52ae25ee0451c944d038.jpg',
    'https://media.suara.com/pictures/970x544/2022/05/01/52291-soobin-txt-koreaboo.jpg',
    'https://cdn.idntimes.com/content-images/community/2019/01/dwktogvu8aajstr-69245e4aaf62061f79308ca90eff3624_600x400.jpeg',
  ];

  @override
  Widget build(Object context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: user.length,
      itemBuilder: (context, index) {
        return StoryWidget(
            name: user[index],
            userImage: userImage[index],
            isMe: index == 0 ? true : false,
            isLive: index == 1 ? true : false);
      },
    );
  }
}
