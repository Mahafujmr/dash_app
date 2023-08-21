import 'package:flutter/material.dart';

void main() {
  runApp(DashboardApp());
}

class DashboardApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Dashboard',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DashboardPage(),
    );
  }
}

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App Dashboard'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          DashboardHeader(),
          SizedBox(height: 20.0),
          DashboardStats(),
          SizedBox(height: 20.0),
          DashboardGraph(),
          SizedBox(height: 20.0),
          DashboardTasks(),
        ],
      ),
    );
  }
}

class DashboardHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      color: Colors.blue,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Welcome, User!',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10.0),
          Text(
            'Check out your dashboard below',
            style: TextStyle(
              color: Colors.white70,
              fontSize: 16.0,
            ),
          ),
        ],
      ),
    );
  }
}

class DashboardStats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        StatCard(icon: Icons.insert_chart, label: 'Sales', value: '243K'),
        StatCard(icon: Icons.shopping_cart, label: 'Orders', value: '398'),
        StatCard(icon: Icons.person, label: 'Customers', value: '12K'),
      ],
    );
  }
}

class StatCard extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  StatCard({required this.icon, required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Icon(icon, size: 40.0, color: Colors.blue),
            SizedBox(height: 8.0),
            Text(label, style: TextStyle(fontSize: 16.0)),
            SizedBox(height: 4.0),
            Text(value,
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}

class DashboardGraph extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.0),
      height: 200.0,
      color: Colors.white,
      child: Placeholder(), // Replace with your graph widget
    );
  }
}

class DashboardTasks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Tasks',
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10.0),
          TaskCard(title: 'Design App Screens', date: 'Aug 25, 2023'),
          TaskCard(title: 'Implement Backend', date: 'Sep 3, 2023'),
          TaskCard(title: 'Write Documentation', date: 'Sep 10, 2023'),
        ],
      ),
    );
  }
}

class TaskCard extends StatelessWidget {
  final String title;
  final String date;

  TaskCard({required this.title, required this.date});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(date),
        trailing: Icon(Icons.check_circle, color: Colors.green),
      ),
    );
  }
}
