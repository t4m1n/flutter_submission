import 'package:flutter/material.dart';
import 'package:flutter_submission/model/data_doctor.dart';

class DetailDoctorPage extends StatelessWidget {
  final DataDoctor dataDoctor;

  DetailDoctorPage({required this.dataDoctor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Stack(
            children: [
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.pink,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      Image.asset(
                        'images/logo_.jpg',
                        height: 20,
                      ),
                      OutlinedButton(
                        onPressed: () {},
                        child: Text('LOGIN'),
                        style: OutlinedButton.styleFrom(
                          primary: Colors.pink,
                          side: BorderSide(color: Colors.pink),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          CircleAvatar(
            radius: 80,
            backgroundImage: NetworkImage(dataDoctor.imageAsset),
          ),
          Text(
            dataDoctor.name,
            style: TextStyle(fontSize: 16.0, color: Colors.black),
          ),
          Text(
            dataDoctor.specialist,
            style: TextStyle(color: Colors.grey),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  // Icon(
                  //   Icons.thumb_up,
                  //   color: Colors.grey,
                  // ),
                  LikeButton(),
                  Text(
                    dataDoctor.percentage,
                  ),
                ],
              ),
              SizedBox(
                width: 15,
              ),
              Row(
                children: [
                  Icon(
                    Icons.card_travel,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    dataDoctor.experience,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Row(
              children: [
                Icon(
                  Icons.apartment,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Lulusan dari\n' + dataDoctor.graduate,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Row(
              children: [
                Icon(
                  Icons.place,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Tempat Praktik\n' + dataDoctor.place,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Row(
              children: [
                Icon(
                  Icons.local_hospital_outlined,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Nomor STR\n' + dataDoctor.str,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 35,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {},
                child: Text('Chat'),
                style: OutlinedButton.styleFrom(
                  primary: Colors.white,
                  backgroundColor: Colors.pink,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class LikeButton extends StatefulWidget {
  _LikeButtonState createState() => _LikeButtonState();
}

class _LikeButtonState extends State<LikeButton> {
  bool isLike = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return IconButton(
      onPressed: () {
        setState(() {
          isLike = !isLike;
        });
      },
      icon: isLike
          ? Icon(
              Icons.thumb_up,
              color: Colors.red,
            )
          : Icon(
              Icons.thumb_up_alt_outlined,
              color: Colors.grey,
            ),
    );
  }
}
