import 'menu_order.dart';
import 'order.dart';
import 'table.dart';
import 'type_order.dart';

class Resturan {
  final String name;
  late MenuOrder menuOrder;
  late List<Order> _orders = [];
  late List<Table> _tables=[];

  Resturan(this.name) {
    menuOrder = MenuOrder();
  }

  void addOrder(Order order) {
    _orders.add(order);
  }
  void removeOrder(int  index) {
    if(_orders.length-1<index){
      Order order=_orders[index];
      if(!order.isDone){
        _orders.remove(order);
      }
    }
  }

  void addTable(Table table) {
    _tables.add(table);
  }
  void removeTable(int  index) {
    if(_tables.length-1<index){
      Table table=_tables[index];
      _tables.remove(table);
    }
  }

  void showListTables(){
    print('tables:');
    print('\t person count \t type \t ');
    for(int i=0;i<_tables.length;i++){
      print('$i \t ${_tables[i].personCount} \t ${_tables[i].type==TableType.RESERVE?'reserve':_tables[i].type==TableType.EMPTY?'empty':'full'}');

    }
  }

  void showAllOrder() {
    print('orders:');
    print('\t food count \t drink count \t type \t price ');
    for (int i = 0; i < _orders.length; i++) {
      print(
          '$i \t ${_orders[i].foods.length} \t ${_orders[i].drinks
              .length} \t ${_orders[i].type == TypeOrder.BIRONBAR
              ? 'bironbar':_orders[i].type==TypeOrder.ONWHERE?'hozory':''} \t ${_orders[i].calculatePrice()}');
    }
  }
}
