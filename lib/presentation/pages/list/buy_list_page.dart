part of 'list_page.dart';

class BuyListPage extends StatefulWidget {
  static const String route_id = '/buylist';

  @override
  State<StatefulWidget> createState() => _BuyListPageState();
}

class _BuyListPageState extends State<BuyListPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<BuyBloc>(
      create: (context) => BuyBloc()..getToBuyList(),
      child: BaseScaffold(
        appBar: AppBar(title: Text('Buy List')),
        body: BlocBuilder<BuyBloc, BuyState>(
          buildWhen: (p, c) => p.buyList != c.buyList,
          builder: (_, state) {
            final buyList = state.buyList ?? [];
            return ListView.separated(
              padding: const EdgeInsets.symmetric(
                  horizontal: Spacing.s, vertical: Spacing.l),
              itemCount: buyList.length,
              itemBuilder: (_, i) => _BuyItem(buyList[i]),
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

class _BuyItem extends StatelessWidget {
  final ToBuy item;

  _BuyItem(this.item);

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
