part of 'message_import.dart';

class MessagePage extends StatelessWidget {
  final DashboardData dashboardData;
  const MessagePage({super.key, required this.dashboardData});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MessageBloc, int>(
      builder: (context, state) {
        dashboardData.selectedMessage = state;
        return ListView(
          padding: const EdgeInsets.all(20),
          children: [
            AppBarMessage(
              dashboardData: dashboardData,
            ),
            InkWell(
              onTap: () => context.read<SubPageCubit>().select(0),
              child: RichText(
                text: TextSpan(
                  text: 'Dashbord ',
                  style: TextStyle(fontSize: 10, color: MyColors.primary2),
                  children: <TextSpan>[
                    TextSpan(
                        text: '>Chat ',
                        style: TextStyle(
                            fontSize: 10, color: MyColors.borderColor)),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    child: MessageMenueWidget(dashboardData: dashboardData)),
                const SizedBox(
                  width: 50,
                ),
                Expanded(
                    child: ConversationWidget(
                  dashboardData: dashboardData,
                  chatUsers: dashboardData.chatUsers[state],
                )),
                const SizedBox(
                  width: 50,
                ),
                Expanded(
                    child: ChatDetails(
                  chatUsers: dashboardData.chatUsers[state],
                ))
              ],
            )
          ],
        );
      },
    );
  }
}
