part of 'list_page.dart';

class SellListPage extends StatefulWidget {
  static const String route_id = '/selllist';

  @override
  State<StatefulWidget> createState() => _SellListPageState();
}

class _SellListPageState extends State<SellListPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<SellBloc>(
      create: (context) => SellBloc()..getToSellList(),
      child: BaseScaffold(
        appBar: AppBar(title: Text('Sell List')),
        body: BlocBuilder<SellBloc, SellState>(
          buildWhen: (p, c) => p.sellList != c.sellList,
          builder: (_, state) {
            final sellList = state.sellList ?? [];
            return ListView.separated(
              padding: const EdgeInsets.symmetric(
                  horizontal: Spacing.s, vertical: Spacing.l),
              itemCount: sellList.length,
              itemBuilder: (_, i) => _SellItem(sellList[i]),
              separatorBuilder: (_, i) => const Divider(
                height: 50,
                color: Colors.grey,
              ),
            );
          },
        ),
      ),
    );
  }
}

class _SellItem extends StatelessWidget {
  final ToSell item;

  _SellItem(this.item);

  @override
  Widget build(BuildContext context) {
    final name = 'Name: ${item.name ?? ''}';
    final price = 'Price: ${item.price ?? 0.0}';
    final qty = 'Quantity: ${item.quantity ?? 0}';
    final type = 'Type: ${item.type ?? 0}';

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(name),
        vSpaceS,
        Text(price),
        vSpaceS,
        Text(qty),
        vSpaceS,
        Text(type),
      ],
    );
  }
}
