import 'dart:io';

List Invoice = [];
List Date = [];
// List NetAmount = [];

void main() {
  print("Type login for login Page");

  // Database
  // username = admin
  // password = admin

  var login = stdin.readLineSync();
  if (login == "login") {
    print("Put your Username and Password");
    LoginForm();
  } else {
    print("Your Username or password is incorrect");
  }
}

LoginForm() {
  print("Enter Your Username");
  var username = stdin.readLineSync();
  print("Enter Your Password");
  var password = stdin.readLineSync();

  if (username == "admin" && password == "admin") {
    print("==== Welcome to POS System ====");
    SaleInvoice();
  } else {
    print("Your Username or Password is incorrect");
  }
}

SaleInvoice() {
  print("Enter Your Invoice Date");
  var invdate = stdin.readLineSync();
  print("Enter Your Item Name");
  var itemname = stdin.readLineSync();
  print("Enter Your Item Price");
  var itemprice = stdin.readLineSync();
  print("Enter Your Item Quantity");
  var itemquantity = stdin.readLineSync();

  Map date = {"Inv Date": invdate};
  Date.add(date);

  Map invoice = {
    "ItemName": itemname,
    "ItemPrice": itemprice,
    "ItemQuantity": itemquantity
  };
  Invoice.add(invoice);

  // num multi(var itemprice, var itemquantity) => itemprice * itemquantity;
  // var amount = multi(itemprice, itemquantity);
  // NetAmount.add(amount);

  print("Type View for Viewing the Invoice");
  var view = stdin.readLineSync();

  if (view == "View") {
    ViewInvoice();
  } else {
    SaleInvoice();
  }
}


ViewInvoice() {
  print("Bakery Brand");
  print("Sharfabad Block 2 PECHS Karachi,Pakistan.");
  print("NTN #:12345");
  print("Contact # :1234567890");
  print("Invoice #: 0123");
  print("ClientName : Walk in Customer");
  print("$Date");
  print("$Invoice");
  // print(NetAmount);
}
