part of 'widget_import.dart';

class ConversationWidget extends StatelessWidget {
  final DashboardData dashboardData;
  final ChatUsers chatUsers;
  const ConversationWidget(
      {super.key, required this.chatUsers, required this.dashboardData});

  @override
  Widget build(BuildContext context) {
    return CardWidget(
        child: Column(
      children: [
        Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage(chatUsers.imageURL), fit: BoxFit.fill)),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DefaultText(title: chatUsers.name),
                  DefaultText(
                    title: chatUsers.lastSeen ?? "last Seen",
                    color: MyColors.primary2,
                    size: 10,
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              decoration:
                  BoxDecoration(color: MyColors.grey, shape: BoxShape.circle),
              child: Icon(
                Icons.search,
                color: MyColors.borderColor,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              padding: EdgeInsets.all(10),
              decoration:
                  BoxDecoration(color: MyColors.grey, shape: BoxShape.circle),
              child: Icon(
                Icons.more_vert,
                color: MyColors.borderColor,
              ),
            )
          ],
        ),
        SizedBox(
          height: 20,
        ),
        ChatWidget(
          dashboardData: dashboardData,
          messages: chatUsers.message ?? [],
        ),
        Container(
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(9),
              border: Border.all(
                  width: 1, color: MyColors.borderColor.withOpacity(0.3))),
          child: MessageBar(
            messageBarColor: MyColors.primary,
            replyWidgetColor: MyColors.primary,
            onSend: (_) => print(_),
            actions: [
              InkWell(
                child: Icon(
                  Icons.add_circle,
                  color: MyColors.primary2,
                  size: 24,
                ),
                onTap: () {},
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
