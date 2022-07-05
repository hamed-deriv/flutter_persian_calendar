class Month {
  const Month(this.index, this.name);

  final int index;
  final String name;

  @override
  String toString() => name;
}

const List<Month> months = <Month>[
  Month(1, 'فروردین'),
  Month(2, 'اردیبهشت'),
  Month(3, 'خرداد'),
  Month(4, 'تیر'),
  Month(5, 'مرداد'),
  Month(6, 'شهریور'),
  Month(7, 'مهر'),
  Month(8, 'آبان'),
  Month(9, 'آذر'),
  Month(10, 'دی'),
  Month(11, 'بهمن'),
  Month(12, 'اسفند'),
];
