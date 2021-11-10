

class SeatSelection {

  ///Variables

  /*
  List <SeatPrice> _seatInfo = [
    SeatPrice('Basic', 7.99),
    SeatPrice('Normal', 11.99),
    SeatPrice('Premium', 19.99),
    SeatPrice('High-Class', 29.99)
  ];

   */


  final List <String> _seatSection = [
    'Basic - \$7.99',
    'Normal - \$11.99',
    'Premium - \$19.99',
    'High-Class - \$29.99'
  ];

  final List <String> _rowSelection= ['A', 'B', 'C', 'D'];

  final List <double> _sectionPrice = [7.99, 11.99, 19.99, 29.99];

  double _price = 0.00;

  String getSectionDropValue(){
    String sectionDropdownValue = _seatSection[0];
    return sectionDropdownValue;
  }

  String getRowDropValue(){
    String sectionDropdownValue = _rowSelection[0];
    return sectionDropdownValue;
  }

  List <String> getSection(){
    return _seatSection;
  }

  List <String> getRow(){
    return _rowSelection;
  }

  List <double> getPrice(){
    return _sectionPrice;
  }

  void setPrice({int index = 0}){
    if(_sectionPrice[index] == _seatSection[index])
      _price = _sectionPrice[index];
  }


  String toStringPrice() {
      return '\$$_sectionPrice[0]';
  }

}