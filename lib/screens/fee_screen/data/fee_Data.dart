class FeeData {
  final String receiptNo;
  final String month;
  final String date;
  final String paymentStatus;
  final String totalAmount;
  final String btnStatus;

  FeeData(this.receiptNo, this.month, this.date, this.paymentStatus,
      this.totalAmount, this.btnStatus);
}
//currently we are not using this file

List<FeeData> fee = [
  FeeData('90871', 'November','8 Nov 2022', 'Pending', '80000', 'Pay Now'),
  FeeData('90871', 'October','8 Oct 2022', 'Pending', '80000', 'Download'),
  FeeData('90871', 'March','8 Mar 2022', 'Pending', '80000', 'Pay Now'),
];
