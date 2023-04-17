part of 'widget_import.dart';

class ChatDetails extends StatelessWidget {
  final ChatUsers chatUsers;
  const ChatDetails({super.key, required this.chatUsers});

  @override
  Widget build(BuildContext context) {
    return CardWidget(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
              color: MyColors.secondary,
              borderRadius: BorderRadius.circular(20)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage(chatUsers.imageURL),
                            fit: BoxFit.fill)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: DefaultText(
                    title: chatUsers.name,
                  ))
                ],
              ),
              SizedBox(
                height: 20,
              ),
              RichText(
                text: TextSpan(
                  text: 'Email ',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                  children: <TextSpan>[
                    TextSpan(
                        text: chatUsers.email,
                        style: TextStyle(
                            fontSize: 14, color: MyColors.borderColor)),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              RichText(
                text: TextSpan(
                  text: 'phone number ',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                  children: <TextSpan>[
                    TextSpan(
                        text: chatUsers.phoneNum,
                        style: TextStyle(
                            fontSize: 14, color: MyColors.borderColor)),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border:
                      Border.all(color: MyColors.borderColor.withOpacity(0.3)),
                ),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: MyColors.primary2,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Row(children: [
                        DefaultText(title: "kwaidi"),
                        Icon(
                          Icons.close,
                          color: Colors.white,
                        )
                      ]),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Image.asset(Res.notif),
            SizedBox(
              width: 10,
            ),
            Expanded(child: DefaultText(title: "Notification")),
            CustomSwitch(
              activeColor: MyColors.primary2,
              value: true,
              onChanged: (value) {},
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Divider(
          color: MyColors.borderColor,
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Icon(
              Icons.arrow_forward_ios_outlined,
              color: MyColors.borderColor,
            ),
            DefaultText(title: "shared media")
          ],
        ),
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            border: Border.all(color: MyColors.borderColor.withOpacity(0.3)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: MyColors.primary2,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: DefaultText(title: "photos"),
              ),
              DefaultText(title: "viedos"),
              DefaultText(title: "Files"),
              DefaultText(title: "Links")
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            border: Border.all(color: MyColors.borderColor.withOpacity(0.3)),
          ),
          child: Row(
            children: [
              Expanded(
                  child: Image.asset(
                Res.chat_image,
                width: 90,
                height: 90,
              )),
              Expanded(
                  child: Image.asset(
                Res.chat_image2,
                width: 90,
                height: 90,
              )),
              Expanded(
                  child: Image.asset(
                Res.chat_image3,
                width: 90,
                height: 90,
              )),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Divider(
          color: MyColors.borderColor,
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Icon(
              Icons.arrow_forward_ios_outlined,
              color: MyColors.borderColor,
            ),
            DefaultText(title: "orders (1) ")
          ],
        ),
        SizedBox(
          height: 20,
        ),
        IntrinsicHeight(
          child: Row(
            children: [
              Image.asset(Res.perf),
              SizedBox(
                width: 20,
              ),
              Expanded(
                  child: DefaultText(
                title: "Women Perfuem",
              )),
              VerticalDivider(
                color: MyColors.borderColor,
                thickness: 2,
              ),
              DefaultText(
                align: TextAlign.end,
                title: "Completed",
                color: MyColors.blue,
              )
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        DefaultText(
          title: "Order details",
          size: 18,
          color: MyColors.borderColor,
          decoration: TextDecoration.underline,
        ),
        SizedBox(
          height: 20,
        ),
        Divider(
          color: MyColors.borderColor,
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Icon(
              Icons.arrow_forward_ios_outlined,
              color: MyColors.borderColor,
            ),
            DefaultText(title: "starred messages  (1) ")
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Flexible(
              child: DefaultText(
                  letterSpace: 1.2,
                  maxLines: 9,
                  overflow: TextOverflow.fade,
                  title:
                      "https://www.figma.com/proto/UMbcUigr9dNeoBZGxcw\nTxL/Untitled?page-id=0%3A1&node-id=112%3A164&viewport=-124%2C335%2C0.69&scaling=scale-down"),
            ),
            Icon(
              Icons.more_vert,
              color: MyColors.borderColor,
            )
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Divider(
          color: MyColors.borderColor,
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Icon(
              Icons.arrow_forward_ios_outlined,
              color: MyColors.borderColor,
            ),
            Expanded(child: DefaultText(title: "notes (1)")),
            DefaultText(
              title: "Add",
              color: MyColors.primary2,
            )
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: MyColors.grey2,
                    borderRadius: BorderRadius.circular(10)),
                child: DefaultText(
                  maxLines: 9,
                  overflow: TextOverflow.fade,
                  title:
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eleifend.",
                ),
              ),
            )
          ],
        )
      ],
    ));
  }
}
