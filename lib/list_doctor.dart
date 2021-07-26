import 'package:flutter/material.dart';
import 'package:flutter_submission/detail_doctor.dart';
import 'package:flutter_submission/model/data_doctor.dart';

class ListDoctorPage extends StatelessWidget {
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
                      Image.asset(
                        'images/logo_.jpg',
                        height: 20,
                      ),
                      OutlinedButton(
                        onPressed: () {},
                        child: Text('LOGIN'),
                        style: OutlinedButton.styleFrom(
                            primary: Colors.pink,
                            side: BorderSide(color: Colors.pink)),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                final DataDoctor dataDoctor = dataDoctorList[index];
                return Card(
                  margin: EdgeInsets.all(10.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            radius: 60,
                            backgroundImage:
                                NetworkImage(dataDoctor.imageAsset),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                dataDoctor.name,
                                style: TextStyle(
                                    fontSize: 16.0, color: Colors.black),
                              ),
                              Text(
                                dataDoctor.specialist,
                                style: TextStyle(color: Colors.grey),
                              ),
                              SizedBox(
                                height: 60,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.thumb_up,
                                            color: Colors.grey,
                                          ),
                                          SizedBox(
                                            width: 7,
                                          ),
                                          Text(
                                            dataDoctor.percentage,
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.card_travel,
                                            color: Colors.grey,
                                          ),
                                          SizedBox(
                                            width: 7,
                                          ),
                                          Text(
                                            dataDoctor.experience,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  OutlinedButton(
                                    onPressed: () {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) {
                                        return DetailDoctorPage(
                                            dataDoctor: dataDoctor);
                                      }));
                                    },
                                    child: Text('Detail'),
                                    style: OutlinedButton.styleFrom(
                                      primary: Colors.white,
                                      backgroundColor: Colors.pink,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
              itemCount: dataDoctorList.length,
            ),
          ),
        ],
      ),
    );
  }
}
