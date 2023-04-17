part of 'widget_import.dart';

class ChatWidget extends StatelessWidget {
  final DashboardData dashboardData;
  final List<Messages> messages;
  const ChatWidget(
      {super.key, required this.messages, required this.dashboardData});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage(Res.chat), fit: BoxFit.fill)),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                border: Border.all(color: MyColors.primary2),
                borderRadius: BorderRadius.circular(20)),
            child: Row(
              children: [
                Image.asset(Res.chat2),
                SizedBox(
                  width: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DefaultText(title: "socail media design"),
                    DefaultText(
                      title: "50 ",
                      color: MyColors.primary2,
                    )
                  ],
                )
              ],
            ),
          )
        ]),
        SizedBox(
          height: 10,
        ),
        ListView.separated(
          separatorBuilder: (context, index) => SizedBox(
            height: 10,
          ),
          shrinkWrap: true,
          itemCount: messages.length,
          itemBuilder: (context, index) {
            return Row(
              children: [
                messages[index].image != null
                    ? Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage(messages[index].image ?? ""),
                                fit: BoxFit.fill)),
                      )
                    : Container(),

                SizedBox(
                  width: 10,
                ),
                messages[index].type ?? false
                    ? Expanded(
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 5),
                          alignment: Alignment.centerRight,
                          child: Icon(
                            Icons.more_horiz_outlined,
                            color: MyColors.borderColor,
                          ),
                        ),
                      )
                    : Container(),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      dashboardData.getChatBubles(messages[index]),
                      // Container(
                      //   // width: MediaQuery.of(context).size.width * 0.20,
                      //   padding: EdgeInsets.all(16),
                      //   alignment: messages[index].type ?? false
                      //       ? Alignment.bottomRight
                      //       : Alignment.bottomLeft,
                      //   decoration: BoxDecoration(
                      //       borderRadius: BorderRadius.only(
                      //           topRight: Radius.circular(10),
                      //           bottomRight: Radius.circular(10),
                      //           bottomLeft: Radius.circular(10)),
                      //       border: messages[index].type ?? false
                      //           ? Border.all(color: MyColors.borderColor)
                      //           : Border.all(color: Colors.transparent),
                      //       color: messages[index].type ?? false
                      //           ? Colors.transparent
                      //           : MyColors.primary2),
                      //   child: DefaultText(
                      //     title: messages[index].message ?? "",
                      //     overflow: TextOverflow.visible,
                      //   ),
                      // ),
                      SizedBox(
                        height: 5,
                      ),
                      DefaultText(
                        title: messages[index].time ?? "",
                        size: 10,
                        color: MyColors.borderColor,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                !(messages[index].type ?? false)
                    ? Container(
                        alignment: Alignment.bottomCenter,
                        child: Icon(
                          Icons.more_horiz_outlined,
                          color: MyColors.borderColor,
                        ),
                      )
                    : Container(),

                //   BubbleSpecialOne(
                //     text: messages[index].message ?? "",
                //     isSender: messages[index].type ?? false,
                //     color: MyColors.primary2,
                //     tail: false,
                //     textStyle: TextStyle(
                //         fontSize: 10,
                //         color: Colors.white,
                //         overflow: TextOverflow.ellipsis),
                //   ),
                // ),
              ],
            );
          },
        ),
      ],
    );
  }
}
