import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class NotificationCard extends StatelessWidget {
  final String text;
  final bool isAcc;
  final String time;
  const NotificationCard(
      {Key? key, required this.text, required this.isAcc, required this.time})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: defaultRadius),
      child: Row(
        children: [
          Container(
            width: 20,
            height: 70,
            decoration: BoxDecoration(
                color: isAcc ? kPrimaryColor : kRedTextColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(defaultRadius),
                    bottomLeft: Radius.circular(defaultRadius))),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(left: 10, right: 18),
              width: double.infinity,
              height: 70,
              decoration: BoxDecoration(
                color: kWhiteColor,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    spreadRadius: 1,
                    blurRadius: 2,
                    offset: Offset(0, 2),
                  )
                ],
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(defaultRadius),
                  bottomRight: Radius.circular(defaultRadius),
                ),
              ),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: SizedBox(
                      width: 50,
                      height: 50,
                      child: Image.asset('assets/image_profile.png'),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Tyara Sizedbox',
                        style: blackTextStyle.copyWith(fontWeight: bold),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Text(
                        text,
                        style: blackTextStyle.copyWith(fontSize: 12),
                      )
                    ],
                  ),
                  const Spacer(),
                  Text(
                    time,
                    style: blackTextStyle,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
