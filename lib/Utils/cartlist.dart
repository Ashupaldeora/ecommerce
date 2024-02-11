List addtocartimage = [];

List addtocartname = [];

List addtocartprice = [];

List numberofitems = [];

List addcartclicks = [];

int subtotal = 0;

var subtottemp;

double sumUsingLoop(List<dynamic> numbers) {
  double sum = 0;
  for (double number in numbers) {
    sum += number;
  }
  return sum;
}
