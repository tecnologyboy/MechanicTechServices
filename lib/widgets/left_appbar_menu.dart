import 'package:flutter/material.dart';

class LeftAppbarMenu extends StatelessWidget {
  const LeftAppbarMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: SizedBox(
      child: Row(
        children: [
          Expanded(
            flex: 5,
            child: Container(
              height: double.infinity,
              width: 80,
              color: Colors.grey[100],
              child: ListView.builder(
                itemCount: _MenuTile().listMenu.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    child: _MenuTile().listMenu[index],
                  );
                },
              ),
            ),
          ),
          const Expanded(
            flex: 9,
            child: _SubMenuContent(widgetTitle: 'Inventory'),
          ),
        ],
      ),
    ));
  }
}

class _SubMenuContent extends StatelessWidget {
  //final Widget child;
  final String widgetTitle;

  const _SubMenuContent({
    super.key,
    //required this.child,
    required this.widgetTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: 80,
      color: Colors.white70,
      child: Column(
        children: [
          const SizedBox(
            height: 70,
          ),
          Text(widgetTitle),
          const Divider(),
          ListView.builder(
            padding: EdgeInsets.zero,
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: OpcMenuJ().ListOpc.length,
            itemBuilder: (BuildContext context, int index) {
              return OpcMenuJ().ListOpc[index];
            },
          ),
        ],
      ),
    );
  }
}

class _MenuTile {
  final List<ListTile> listMenu = [
    ListTile(
      leading: const Icon(
        Icons.ac_unit_outlined,
        size: 50,
      ),
      onTap: () {
        print('You Press J');
      },
    ),
    ListTile(
      leading: const Icon(
        Icons.access_alarm_outlined,
        size: 50,
      ),
      onTap: () {
        print('You Press K');
      },
    ),
    ListTile(
      leading: const Icon(
        Icons.account_balance_wallet,
        size: 50,
      ),
      onTap: () {
        print('You Press L');
      },
    ),
  ];
}

class OpcMenuJ {
  List<ListTile> ListOpc = [
    ListTile(
      leading: const Icon(Icons.ac_unit_outlined),
      title: const Text('U o M'),
      onTap: () {
        print('U o M');
      },
    ),
    ListTile(
      leading: const Icon(Icons.access_alarm_outlined),
      title: const Text('U o M Plan'),
      onTap: () {
        print('U o M Plan');
      },
    ),
    ListTile(
      leading: const Icon(Icons.account_balance_wallet),
      title: const Text('Products'),
      onTap: () {
        print('Products');
      },
    ),
    ListTile(
      leading: const Icon(Icons.other_houses_outlined),
      title: const Text('Other'),
      onTap: () {
        print('Other');
      },
    )
  ];
}
