part of 'dashboard_import.dart';

class DashboardData {
  int selectedMessage = 0;
  List<ChatUsers> chatUsers = [
    ChatUsers(
        name: "ahmed mohammed",
        email: "ahmed@gmail.com",
        phoneNum: "+966595111957",
        messageText: "Lorem ipsum dolor sit amet, consectetur ",
        imageURL: Res.chat,
        time: "8 min ago",
        numOfMessage: "2",
        lastSeen: "last online 5 hours ago",
        message: [
          Messages(
              type: false,
              messageType: "text",
              message:
                  "Hello! Finally found the time to write to you) I need your help in creating interactive animations for my mobile application."),
          Messages(
              message: "can i send the files ?",
              type: false,
              time: "5 hours ago"),
          Messages(
            message: "ok , waiting ",
            type: true,
          ),
          Messages(
              time: "5 hours ago",
              message: "design file . rar ",
              messageType: "file",
              type: false,
              image: Res.chat),
          Messages(
            message: Res.chat_image,
            messageType: "image",
            type: true,
          ),
          Messages(
            message: "discount coupon has been activated from the merchent",
            messageType: "vac",
            type: false,
          ),
          Messages(
            message: Res.record,
            messageType: "rec",
            type: false,
          ),
          Messages(
              message: Res.rec_play,
              messageType: "recplay",
              type: false,
              time: "5 hours ago")
        ]),
    ChatUsers(
        name: "ahmed mohammed",
        messageText: "Lorem ipsum dolor sit amet, consectetur ",
        imageURL: Res.chat,
        status: "typing",
        time: "8 min ago",
        numOfMessage: "2"),
    ChatUsers(
        name: "ahmed mohammed",
        messageText: "Lorem ipsum dolor sit amet, consectetur ",
        imageURL: Res.chat,
        status: "records voice message",
        time: "8 min ago",
        numOfMessage: "2"),
    ChatUsers(
        name: "ahmed mohammed",
        messageText: "Lorem ipsum dolor sit amet, consectetur ",
        imageURL: Res.chat,
        time: "8 min ago",
        numOfMessage: "2"),
    ChatUsers(
        name: "ahmed mohammed",
        messageText: "Lorem ipsum dolor sit amet, consectetur ",
        imageURL: Res.chat,
        status: "records voice message",
        time: "8 min ago",
        numOfMessage: "2"),
    ChatUsers(
        name: "ahmed mohammed",
        messageText: "Lorem ipsum dolor sit amet, consectetur ",
        imageURL: Res.chat,
        time: "8 min ago",
        numOfMessage: "2"),
    ChatUsers(
        name: "ahmed mohammed",
        messageText: "Lorem ipsum dolor sit amet, consectetur ",
        imageURL: Res.chat,
        time: "8 min ago",
        numOfMessage: "2"),
  ];

  int selectedPage = 0;
  chandDarkMode(BuildContext context) =>
      context.read<DarkModeCubit>().darkMode();

  Seller seller = Seller();

  void getSellerSummary(BuildContext context) {
    context.read<OrderSummaryBloc>().add(OnReloadChanged());
  }

  List<Widget> subPages = [];
  List<Widget> subPage(DashboardData dashboardData) {
    return [
      DashbordPage(
        dashboardData: dashboardData,
      ),
      MessagePage(dashboardData: dashboardData)
    ];
  }

  List<SellerSummary> branch_performance = [
    SellerSummary(title: "Khobar Branch", percentage: "15", color: 0xff3AC2CB),
    SellerSummary(title: "Dammam Branch", percentage: "15", color: 0xffF12E67),
    SellerSummary(title: "Riyadh Branch", percentage: "15", color: 0xffFE9518)
  ];

  List<SellerSummary> vat = [
    SellerSummary(
        title: "standad Vat Rate \n1000 SR",
        percentage: "15",
        color: 0xff3AC2CB),
    SellerSummary(
        title: "not Subject to Vat \n1000 SR",
        percentage: "15",
        color: 0xffF12E67),
    SellerSummary(
        title: "Exempt From Vat\n1000 SR", percentage: "15", color: 0xff34B53A),
    SellerSummary(
        title: "Zero vAT rated\n1000 SR", percentage: "15", color: 0xffFE9518)
  ];

  List<BestSellerModel> bestSeller = [
    BestSellerModel(
        image: Res.best1,
        name: "Italian coffee",
        price: "20 SR",
        totlaSale: "1000 SR",
        percentage: "sales (12%) ",
        salese: "50",
        reviewNum: "20(reviews)"),
    BestSellerModel(
        image: Res.best2,
        name: "Italian coffee",
        price: "20 SR",
        totlaSale: "1000 SR",
        percentage: "sales (12%) ",
        salese: "50",
        reviewNum: "20(reviews)"),
    BestSellerModel(
        image: Res.best1,
        name: "Italian coffee",
        price: "20 SR",
        totlaSale: "1000 SR",
        percentage: "sales (12%) ",
        salese: "50",
        reviewNum: "20(reviews)"),
    BestSellerModel(
        image: Res.best2,
        name: "Italian coffee",
        price: "20 SR",
        totlaSale: "1000 SR",
        percentage: "sales (12%) ",
        salese: "50",
        reviewNum: "20(reviews)"),
    BestSellerModel(
        image: Res.best1,
        name: "Italian coffee",
        price: "20 SR",
        totlaSale: "1000 SR",
        percentage: "sales (12%) ",
        salese: "50",
        reviewNum: "20(reviews)"),
  ];
  List<MostBurModel> mostBur = [
    MostBurModel(nameOrder: "1. ahmed mohammed", price: "1000 sR"),
    MostBurModel(nameOrder: "2. ahmed mohammed", price: "1000 sR"),
    MostBurModel(nameOrder: "2. ahmed mohammed", price: "1000 sR"),
    MostBurModel(nameOrder: "2. ahmed mohammed", price: "1000 sR"),
    MostBurModel(nameOrder: "2. ahmed mohammed", price: "1000 sR")
  ];
  List<HeightPerfEmpModel> heightperEmp = [
    HeightPerfEmpModel(
        branch: "Riyadh Branch", name: "Ahmed Mohammed ", image: Res.profile2),
    HeightPerfEmpModel(
        branch: "Riyadh Branch", name: "Ahmed Mohammed ", image: Res.profile2),
    HeightPerfEmpModel(
        branch: "Riyadh Branch", name: "Ahmed Mohammed ", image: Res.profile2),
    HeightPerfEmpModel(
        branch: "Riyadh Branch", name: "Ahmed Mohammed ", image: Res.profile2),
    HeightPerfEmpModel(
        branch: "Riyadh Branch", name: "Ahmed Mohammed ", image: Res.profile2),
  ];

  Widget getChatBubles(Messages messages) {
    if (messages.messageType == "text") {
      return Container(
        // width: MediaQuery.of(context).size.width * 0.20,
        padding: EdgeInsets.all(16),
        alignment: messages.type ?? false
            ? Alignment.bottomRight
            : Alignment.bottomLeft,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(10),
                bottomRight: Radius.circular(10),
                bottomLeft: Radius.circular(10)),
            border: messages.type ?? false
                ? Border.all(color: MyColors.borderColor)
                : Border.all(color: Colors.transparent),
            color: messages.type ?? false
                ? Colors.transparent
                : MyColors.primary2),
        child: DefaultText(
          title: messages.message ?? "",
          overflow: TextOverflow.visible,
        ),
      );
    }
    if (messages.messageType == "file") {
      return Container(
        // width: MediaQuery.of(context).size.width * 0.20,
        padding: EdgeInsets.all(16),
        alignment: messages.type ?? false
            ? Alignment.bottomRight
            : Alignment.bottomLeft,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(10),
                bottomRight: Radius.circular(10),
                bottomLeft: Radius.circular(10)),
            border: messages.type ?? false
                ? Border.all(color: MyColors.borderColor)
                : Border.all(color: Colors.transparent),
            color: messages.type ?? false
                ? Colors.transparent
                : MyColors.primary2),
        child: Row(
          children: [
            Image.asset(Res.file),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: DefaultText(
                title: messages.message ?? "",
                overflow: TextOverflow.visible,
              ),
            ),
            Image.asset(Res.arrow_down)
          ],
        ),
      );
    }
    if (messages.messageType == "image") {
      return Container(
        alignment: messages.type ?? false
            ? Alignment.bottomRight
            : Alignment.bottomLeft,
        child: Row(
          children: [
            Image.asset(Res.arrow_down),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Image.asset(
                messages.message ?? "",
                width: 20,
              ),
            )
          ],
        ),
      );
    }
    if (messages.messageType == "vac") {
      return Container(
        padding: EdgeInsets.all(6),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: MyColors.primary.withOpacity(0.8),
            borderRadius: BorderRadius.circular(10)),
        child: DefaultText(
          title: messages.message ?? "",
          align: TextAlign.center,
        ),
      );
    }
    if (messages.messageType == "rec") {
      return Container(
        // width: MediaQuery.of(context).size.width * 0.20,
        padding: EdgeInsets.all(16),
        alignment: messages.type ?? false
            ? Alignment.bottomRight
            : Alignment.bottomLeft,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(10),
                bottomRight: Radius.circular(10),
                bottomLeft: Radius.circular(10)),
            border: messages.type ?? false
                ? Border.all(color: MyColors.borderColor)
                : Border.all(color: Colors.transparent),
            color: messages.type ?? false
                ? Colors.transparent
                : MyColors.primary2),
        child: Row(
          children: [
            Image.asset(Res.paly),
            Expanded(child: Image.asset(messages.message ?? "")),
            DefaultText(title: "1:25")
          ],
        ),
      );
    }
    if (messages.messageType == "recplay") {
      return Container(
        // width: MediaQuery.of(context).size.width * 0.20,
        padding: EdgeInsets.all(16),
        alignment: messages.type ?? false
            ? Alignment.bottomRight
            : Alignment.bottomLeft,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(10),
                bottomRight: Radius.circular(10),
                bottomLeft: Radius.circular(10)),
            border: messages.type ?? false
                ? Border.all(color: MyColors.borderColor)
                : Border.all(color: Colors.transparent),
            color: messages.type ?? false
                ? Colors.transparent
                : MyColors.primary2),
        child: Row(
          children: [
            Icon(
              Icons.pause_circle_outline,
              color: Colors.white,
              size: 30,
            ),

            ///  Image.asset(Res.paly),
            Expanded(child: Image.asset(messages.message ?? "")),
            DefaultText(title: "1:25")
          ],
        ),
      );
    }
    return Container();
  }

  SideTitles get bottomTitles {
    return SideTitles(
      showTitles: true,
      getTitlesWidget: (value, meta) {
        String text = '';
        switch (value.toInt()) {
          case 1:
            return DefaultText(
              title: "SAT",
              size: 9,
              color: MyColors.borderColor,
            );
          case 2:
            return DefaultText(
              title: "SUN",
              size: 9,
              color: MyColors.borderColor,
            );
          case 3:
            return DefaultText(
              title: "MON ",
              size: 9,
              color: MyColors.borderColor,
            );
          case 4:
            return DefaultText(
              title: "TUS",
              size: 9,
              color: MyColors.borderColor,
            );
          case 5:
            return DefaultText(
              title: "WED",
              size: 9,
              color: MyColors.borderColor,
            );
          case 6:
            return DefaultText(
              title: "TUE",
              size: 9,
              color: MyColors.borderColor,
            );
          case 7:
            return DefaultText(
              title: "FRI",
              size: 9,
              color: MyColors.borderColor,
            );
        }
        return Text('');
      },
    );
  }

  SideTitles get leftTitel {
    return SideTitles(
      showTitles: true,
      getTitlesWidget: (value, meta) {
        String text = '';
        switch (value.toInt()) {
          case 1:
            return DefaultText(
              title: "0",
              size: 9,
              color: MyColors.borderColor,
            );
          case 2:
            return DefaultText(
              title: "1",
              size: 9,
              color: MyColors.borderColor,
            );
          case 3:
            return DefaultText(
              title: "2",
              size: 9,
              color: MyColors.borderColor,
            );
          case 4:
            return DefaultText(
              title: "3",
              size: 9,
              color: MyColors.borderColor,
            );
          case 5:
            return DefaultText(
              title: "4",
              size: 9,
              color: MyColors.borderColor,
            );
          case 6:
            return DefaultText(
              title: "5",
              size: 9,
              color: MyColors.borderColor,
            );
          case 7:
            return DefaultText(
              title: "6",
              size: 9,
              color: MyColors.borderColor,
            );
        }
        return Text('');
      },
    );
  }

  List<PieChartSectionData> chartSections() {
    final List<PieChartSectionData> list = [
      PieChartSectionData(
          color: MyColors.dengerColor,
          value: 100 / 3,
          radius: 40.0,
          title: '15',
          titleStyle: TextStyle(color: Colors.white)),
      PieChartSectionData(
          color: MyColors.shippedColor,
          value: 100 / 3,
          radius: 40.0,
          title: '15',
          titleStyle: TextStyle(color: Colors.white)),
      PieChartSectionData(
          color: MyColors.primary2,
          value: 100 / 3,
          radius: 40.0,
          title: '15',
          titleStyle: TextStyle(color: Colors.white))
    ];

    return list;
  }

  final List<FlSpot> dummyData1 = List.generate(8, (index) {
    return FlSpot(index.toDouble(), index * Random().nextDouble());
  });

  // This will be used to draw the orange line
  final List<FlSpot> dummyData2 = List.generate(8, (index) {
    return FlSpot(index.toDouble(), index * Random().nextDouble());
  });

  // This will be used to draw the blue line
  final List<FlSpot> dummyData3 = List.generate(8, (index) {
    return FlSpot(index.toDouble(), index * Random().nextDouble());
  });
}
