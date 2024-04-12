import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PostingBox extends StatelessWidget {
  PostingBox({super.key});

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
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: user.length,
        itemBuilder: (context, index) {
          return UserPost(
            name: user[index],
            postImage: userImage[index],
          );
        },
      ),
    );
  }
}

class UserPost extends StatelessWidget {
  UserPost({super.key, required this.name, required this.postImage});

  final String name;
  final String postImage;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
          child: UserSection(name: name),
        ),
        SizedBox(
          height: 300,
          child: Image.network(
            postImage,
            fit: BoxFit.cover,
          ),
        ),
        CaptionSection()
      ],
    );
  }
}

class UserSection extends StatelessWidget {
  UserSection({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(
                  'https://assets.ayobandung.com/crop/0x150:720x614/750x500/webp/photo/2023/01/24/4064549419.jpg'),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                name,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
        Padding(
          padding: EdgeInsets.only(right: 8.0),
          child: Icon(Icons.more_vert),
        )
      ],
    );
  }
}

class CaptionSection extends StatelessWidget {
  const CaptionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
          child: Row(
            children: [
              Icon(Icons.favorite_border),
              SizedBox(width: 10),
              Icon(Icons.chat_bubble_outline),
              SizedBox(width: 10),
              Icon(Icons.send_outlined)
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: RichText(
            text: TextSpan(children: [
              TextSpan(
                  style: TextStyle(
                      color: Theme.of(context).brightness == Brightness.light
                          ? Colors.black
                          : Colors.white),
                  text: "Liked by "),
              TextSpan(
                  style: TextStyle(
                      color: Theme.of(context).brightness == Brightness.light
                          ? Colors.black
                          : Colors.white,
                      fontWeight: FontWeight.bold),
                  text: "Visca "),
              TextSpan(
                  style: TextStyle(
                      color: Theme.of(context).brightness == Brightness.light
                          ? Colors.black
                          : Colors.white),
                  text: "and "),
              TextSpan(
                  style: TextStyle(
                      color: Theme.of(context).brightness == Brightness.light
                          ? Colors.black
                          : Colors.white,
                      fontWeight: FontWeight.bold),
                  text: "Others "),
            ]),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: RichText(
            text: TextSpan(
                style: TextStyle(
                    color: Theme.of(context).brightness == Brightness.light
                        ? Colors.black
                        : Colors.white),
                children: [
                  TextSpan(
                      text: "Beom_gyu ",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(
                      text:
                          " is simply dummy text of the printing and typesetting industry",
                      style: TextStyle())
                ]),
          ),
        ),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              "View all comments",
              style: TextStyle(
                  color: Theme.of(context).brightness == Brightness.light
                      ? Colors.black54
                      : Colors.grey),
            )),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              "17 years ago",
              style: TextStyle(
                  color: Theme.of(context).brightness == Brightness.light
                      ? Colors.black54
                      : Colors.grey,
                  fontSize: 10),
            )),
      ],
    );
  }
}
