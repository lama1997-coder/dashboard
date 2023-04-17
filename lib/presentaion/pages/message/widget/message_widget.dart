part of "widget_import.dart";

class MessageWidget extends StatelessWidget {
  final ChatUsers chatUsers;
  const MessageWidget({super.key, required this.chatUsers});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: MyColors.secondary),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            // Container(
            //   alignment: Alignment.centerLeft,
            //   width: 100,
            //   height: 40,
            //   decoration: BoxDecoration(
            //       shape: BoxShape.circle,
            //       color: MyColors.dengerColor,
            //       image: DecorationImage(
            //           fit: BoxFit.cover,
            //           image: AssetImage(chatUsers.imageURL))),
            // ),
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
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DefaultText(
                    title: chatUsers.name,
                    size: 12,
                  ),
                  chatUsers.status != null
                      ? DefaultText(
                          title: chatUsers.status ?? "",
                          size: 10,
                          color: MyColors.primary2,
                        )
                      : Container()
                ],
              ),
            ),
            DefaultText(
              title: chatUsers.time,
              color: MyColors.borderColor,
              size: 10,
            )
          ]),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                  child: DefaultText(
                title: chatUsers.messageText,
                size: 12,
                color: MyColors.borderColor,
              )),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: MyColors.dengerColor, shape: BoxShape.circle),
                child: DefaultText(title: chatUsers.numOfMessage ?? ""),
              )
            ],
          )
        ],
      ),
    );
  }
}
