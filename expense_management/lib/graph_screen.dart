import 'package:expense_management/mydraw_screen.dart';
import 'package:expense_management/utlilites.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pie_chart/pie_chart.dart';

class GraphScrean extends StatefulWidget {
  const GraphScrean({super.key});

  @override
  State<StatefulWidget> createState() {
    return _GraphScreanState();
  }
}

class _GraphScreanState extends State {
  Map<String, double> dataMap = {
    'Food': 20,
    'Fuel': 20,
    'Medicine': 10,
    'Enteriment': 20,
    'Shopping': 30
  };

  List<Expense> expenseList = [
    Expense(
        title: "Food",
        color: Colors.red,
        desciption: '',
        expense: 650,
        date: '',
        imgPath: 'images/food.png'),
    Expense(
        title: "Fuel",
        color: Colors.blue,
        desciption: '',
        expense: 600,
        date: '',
        imgPath: 'images/fuel.png'),
    Expense(
        title: "Medicine",
        color: Colors.green,
        desciption: '',
        expense: 500,
        date: '',
        imgPath: 'images/medicine.png'),
    Expense(
        title: "Shopping",
        color: Colors.pink,
        desciption: '',
        expense: 325,
        date: '',
        imgPath: 'images/shopcart.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Graph',
            style:
                GoogleFonts.poppins(fontWeight: FontWeight.w500, fontSize: 16)),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
        child: Column(
          children: [
            SizedBox(
              child: PieChart(
                colorList: const [
                  Colors.red,
                  Colors.blue,
                  Colors.green,
                  Colors.purple,
                  Color.fromRGBO(241, 38, 197, 0.7)
                ],
                animationDuration: const Duration(milliseconds: 1700),
                chartValuesOptions:
                    const ChartValuesOptions(showChartValues: false),
                legendOptions: LegendOptions(
                    legendShape: BoxShape.circle,
                    legendPosition: LegendPosition.right,
                    legendTextStyle: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    )),
                dataMap: dataMap,
                chartType: ChartType.ring,
                chartRadius: 170,
                chartLegendSpacing: 50,
                ringStrokeWidth: 27.5,
                centerWidget: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Total',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 10,
                        )),
                    Text(
                      '₹ 2550.00',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 13,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 364,
              width: double.infinity,
              margin: const EdgeInsets.symmetric(vertical: 40),
              padding: const EdgeInsets.symmetric(vertical: 30),
              decoration: const BoxDecoration(
                border: Border.symmetric(
                    horizontal: BorderSide(
                        width: 2, color: Color.fromRGBO(206, 206, 206, 1))),
              ),
              child: ListView.separated(
                itemCount: expenseList.length,
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    height: 30,
                  );
                },
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      children: [
                        Container(
                            height: 40,
                            width: 40,
                            padding: const EdgeInsets.all(8),
                            margin: const EdgeInsets.only(right: 10),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: expenseList[index].color),
                            child: Image.asset(
                              expenseList[index].imgPath,
                              height: 20,
                              width: 20,
                            )),
                        Text(
                          expenseList[index].title,
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
                          ),
                        ),
                        const Spacer(),
                        Text(
                          '₹',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          ' ${expenseList[index].expense}',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Icon(
                          Icons.arrow_right_outlined,
                          color: Color.fromRGBO(0, 0, 0, 0.5),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              width: 230,
              child: Row(
                children: [
                  Text('Total',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                      )),
                  const Spacer(),
                  Text(
                    '₹ 2550.00',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      drawer: MyMenu(activeIndex: 1),
    );
  }
}
