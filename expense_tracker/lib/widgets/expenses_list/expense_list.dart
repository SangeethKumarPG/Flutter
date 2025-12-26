import 'package:expense_tracker/models/expense.dart';
import 'package:expense_tracker/widgets/expenses_list/expense_item.dart';
import 'package:flutter/material.dart';

class ExpenseList extends StatelessWidget {
  const ExpenseList({
    super.key,
    required this.expenses,
    required this.removeExpense,
  });
  final List<Expense> expenses;
  final void Function(Expense expense) removeExpense;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (context, index) => Dismissible(
        background: Container(
          color: Theme.of(context).colorScheme.error.withAlpha((0.65*255).toInt()),
          margin: EdgeInsets.symmetric(
            horizontal: Theme.of(context).cardTheme.margin!.horizontal/2,
            vertical: Theme.of(context).cardTheme.margin!.vertical/2,
          ),
        ),
        key: ValueKey(expenses[index]),
        onDismissed: (direction) {
          removeExpense(expenses[index]);
        },
        child: ExpenseItem(expense: expenses[index]),
      ),
    );
  }
}
