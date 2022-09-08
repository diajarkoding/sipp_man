import 'package:flutter/material.dart';
import 'package:sipp_man/ui/widget/line_divider.dart';
import '../../shared/theme.dart';

class ChatTile extends StatelessWidget {
  final String image;
  final String name;
  final String message;
  final bool sent;
  final bool active;
  final bool seen;
  const ChatTile(
      {Key? key,
      required this.image,
      required this.name,
      required this.message,
      required this.sent,
      required this.active,
      required this.seen})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/detail-chat');
      },
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: SizedBox(
                      width: 50,
                      height: 50,
                      child: Image.asset(image),
                    ),
                  ),
                  const SizedBox(
                    width: 17,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: blackTextStyle.copyWith(fontWeight: bold),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Text(
                        message,
                        style: blackTextStyle.copyWith(fontSize: 13),
                      )
                    ],
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '16.55',
                    style: blackTextStyle,
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  Image.asset(
                    sent
                        ? 'assets/icon_chek_1.png'
                        : active
                            ? 'assets/icon_chek_2.png'
                            : seen
                                ? 'assets/icon_chek_2_seen.png'
                                : 'assets/icon_chek_1.png',
                    width: defaultRadius,
                    height: defaultRadius,
                  )
                ],
              )
            ],
          ),
          LineDivider(
            top: 10,
            bottom: 10,
            color: kPrimaryColor.withOpacity(0.5),
          )
        ],
      ),
    );
  }
}
