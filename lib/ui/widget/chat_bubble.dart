import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class ChatBubble extends StatelessWidget {
  final String text;
  final String image;
  final bool isSender;
  const ChatBubble(
      {Key? key,
      required this.isSender,
      required this.text,
      required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(bottom: defaultRadius),
        child: isSender
            ? Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Flexible(
                    child: Container(
                      margin: const EdgeInsets.only(right: 15),
                      constraints: BoxConstraints(
                          maxWidth: MediaQuery.of(context).size.width * 0.6),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 10),
                      decoration: BoxDecoration(
                        color: const Color(0xffE3EBF2),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(defaultRadius),
                          topRight: const Radius.circular(0),
                          bottomLeft: Radius.circular(defaultRadius),
                          bottomRight: Radius.circular(defaultRadius),
                        ),
                      ),
                      child: Column(
                        children: [
                          Text(
                            text,
                            style: blackTextStyle.copyWith(
                              fontSize: 13,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/icon_chek_2_seen.png',
                                width: defaultRadius,
                                height: defaultRadius,
                              ),
                              const SizedBox(
                                width: 6,
                              ),
                              Text(
                                '16.55',
                                style: greenTextStyle.copyWith(
                                    fontWeight: medium, fontSize: 9),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: SizedBox(
                      width: 50,
                      height: 50,
                      child: Image.asset(image),
                    ),
                  ),
                ],
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: SizedBox(
                      width: 50,
                      height: 50,
                      child: Image.asset(image),
                    ),
                  ),
                  Flexible(
                    child: Container(
                      margin: const EdgeInsets.only(left: 15),
                      constraints: BoxConstraints(
                          maxWidth: MediaQuery.of(context).size.width * 0.6),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 10),
                      decoration: BoxDecoration(
                        color: const Color(0xffE3EBF2),
                        borderRadius: BorderRadius.only(
                          topLeft: const Radius.circular(0),
                          topRight: Radius.circular(defaultRadius),
                          bottomLeft: Radius.circular(defaultRadius),
                          bottomRight: Radius.circular(defaultRadius),
                        ),
                      ),
                      child: Column(
                        children: [
                          Text(
                            text,
                            style: blackTextStyle.copyWith(
                              fontSize: 13,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Image.asset(
                                'assets/icon_chek_2_seen.png',
                                width: defaultRadius,
                                height: defaultRadius,
                              ),
                              const SizedBox(
                                width: 6,
                              ),
                              Text(
                                '16.55',
                                style: greenTextStyle.copyWith(
                                    fontWeight: medium, fontSize: 9),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ));
  }
}
