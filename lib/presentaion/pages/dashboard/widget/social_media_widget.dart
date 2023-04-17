part of 'widget_import.dart';

class SocialMediaWidget extends StatelessWidget {
  const SocialMediaWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CardWidget(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                Res.goole,
                width: 50,
                height: 50,
              ),
              const SizedBox(
                width: 10,
              ),
              DefaultText(title: "add google analytics key")
            ],
          )),
        ),
        const SizedBox(
          width: 80,
        ),
        Expanded(
            child: Row(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DefaultText(title: "Instagram\nFollowers"),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        Res.inst,
                        width: 50,
                        height: 50,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      DefaultText(title: "100k")
                    ],
                  )
                ],
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DefaultText(title: "Twitter\nFollowers"),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        Res.twitter,
                        width: 50,
                        height: 50,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      DefaultText(title: "100k")
                    ],
                  )
                ],
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DefaultText(title: "Tiktok\nFollowers"),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Image.asset(Res.tiktok),
                      const SizedBox(
                        width: 10,
                      ),
                      DefaultText(
                        title: "connect",
                        color: MyColors.primary2,
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ))
      ],
    );
  }
}
