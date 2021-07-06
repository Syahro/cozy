import 'package:cozy/theme.dart';
import 'package:cozy/widget/facility_item.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          bottom: false,
          child: Stack(
            children: [
              Image.asset(
                'assets/thumbnail.png',
                height: 350,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: edge,
                  vertical: 30,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Image.asset(
                        'assets/btn_back.png',
                        width: 40,
                        height: 40,
                      ),
                    ),
                    Image.asset(
                      'assets/btn_wishlist.png',
                      width: 40,
                      height: 40,
                    ),
                  ],
                ),
              ),
              ListView(
                children: [
                  SizedBox(
                    height: 328,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(20),
                      ),
                      color: whiteColor,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        //NOTE: TITLE
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: edge,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Kuretakeso Hott',
                                    style: blackTextStyle.copyWith(
                                      fontSize: 22,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Text.rich(TextSpan(
                                      text: '\$52',
                                      style: purpleTextStyle.copyWith(
                                        fontSize: 16,
                                      ),
                                      children: [
                                        TextSpan(
                                          text: ' / month',
                                          style: greyTextStyle.copyWith(
                                            fontSize: 16,
                                          ),
                                        )
                                      ]))
                                ],
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/Icon_star.png',
                                    width: 20,
                                  ),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Image.asset(
                                    'assets/Icon_star.png',
                                    width: 20,
                                  ),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Image.asset(
                                    'assets/Icon_star.png',
                                    width: 20,
                                  ),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Image.asset(
                                    'assets/Icon_star.png',
                                    width: 20,
                                  ),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Image.asset(
                                    'assets/Icon_star.png',
                                    width: 20,
                                    color: greyColor,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        //NOTE: FACILITIES
                        Padding(
                          padding: EdgeInsets.only(left: edge),
                          child: Text(
                            'Main Facilities',
                            style: blackTextStyle.copyWith(
                              fontSize: 16,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: edge),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              FacilityItem(
                                  name: ' kitchen',
                                  imageUrl: 'assets/icon_kitchen.png',
                                  total: 2),
                              FacilityItem(
                                  name: ' bedroom',
                                  imageUrl: 'assets/icon_badroom.png',
                                  total: 3),
                              FacilityItem(
                                  name: ' Big Lemari',
                                  imageUrl: 'assets/icon_cupboard.png',
                                  total: 3),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        //NOTE: PHOTO
                        Padding(
                          padding: EdgeInsets.only(left: edge),
                          child: Text(
                            'Photos',
                            style: blackTextStyle.copyWith(
                              fontSize: 16,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          )),
    );
  }
}
