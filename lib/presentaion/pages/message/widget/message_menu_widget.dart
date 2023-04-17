part of 'widget_import.dart';

class MessageMenueWidget extends StatelessWidget {
  final DashboardData dashboardData;
  const MessageMenueWidget({super.key, required this.dashboardData});

  @override
  Widget build(BuildContext context) {
    return CardWidget(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DefaultText(
          title: "Chats",
          size: 24,
        ),
        SizedBox(
          height: 20,
        ),
        DropDown(
          items: ["all chats", "group chats", "unread"],
          width: double.infinity,
        ),
        SizedBox(
          height: 20,
        ),
        DefaulForm(
          hint: "Search",
          icon: Icon(
            Icons.search,
            color: MyColors.borderColor,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        ListView.separated(
          separatorBuilder: (context, index) => SizedBox(
            height: 10,
          ),
          shrinkWrap: true,
          itemCount: dashboardData.chatUsers.length,
          itemBuilder: (context, index) {
            return MessageWidget(
              chatUsers: dashboardData.chatUsers[index],
            );
          },
        )
      ],
    ));
  }
}
