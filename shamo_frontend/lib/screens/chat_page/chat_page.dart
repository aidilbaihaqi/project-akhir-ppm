import 'package:flutter/material.dart';
import 'package:shamo_frontend/theme.dart';

import 'package:shamo_frontend/widgets/chat_tile.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        backgroundColor: bgColor1,
        centerTitle: true,
        title: Text(
          'Message Support',
          style: primaryTextStyle.copyWith(
            fontSize: 18,
            fontWeight: medium,
          ),
        ),
        elevation: 0,
        automaticallyImplyLeading: false,
      );
    }

    Widget content() {
      return Expanded(
        child: Container(
          color: bgColor3,
          width: double.infinity,
          child: ListView(
            padding: EdgeInsets.symmetric(
              horizontal: defaultMargin,
            ),
            children: const [
              ChatTile(),
            ],
          ),
        ),
      );
    }

    // ignore: unused_element
    Widget emptyChat() {
      return Expanded(
        child: Container(
          margin: const EdgeInsets.only(bottom: 70.0),
          color: bgColor3,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/icon_headset.png',
                width: 80.0,
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                'Ops\'s no message yet?',
                style: primaryTextStyle.copyWith(
                  fontSize: 16.0,
                  fontWeight: medium,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                'You have never done a transaction',
                style: secondaryTextStyle.copyWith(
                  fontSize: 14.0,
                  fontWeight: regular,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              SizedBox(
                height: 44.0,
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24.0,
                      vertical: 10.0,
                    ),
                    backgroundColor: primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        12.0,
                      ),
                    ),
                  ),
                  child: Text(
                    'Explore Store',
                    style: primaryTextStyle.copyWith(
                      fontSize: 14.0,
                      fontWeight: regular,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    return Column(
      children: [
        header(),
        content(),
      ],
    );
  }
}