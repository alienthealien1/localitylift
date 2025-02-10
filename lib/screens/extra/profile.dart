import 'dart:convert';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  Future<Map<String, dynamic>?> getUserData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? userData = prefs.getString("userDetail");

    if (userData != null && userData.isNotEmpty) {
      return json.decode(userData);
    } else {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Profile")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Center(
              child: Text(
                "Profile Page",
                style: TextStyle(fontSize: 40),
              ),
            ),
            FutureBuilder<Map<String, dynamic>?>(
              future: getUserData(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const CircularProgressIndicator();
                } else if (snapshot.hasError) {
                  return const Text("Error loading data");
                } else if (!snapshot.hasData || snapshot.data == null) {
                  return const Text("No user data found");
                } else {
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Center(
                        child: Text(
                          "User Name : ${snapshot.data!["name"]}",
                          style: const TextStyle(fontSize: 30),
                        ),
                      ),
                      Center(
                        child: Text(
                          "Email : ${snapshot.data!["email"]}",
                          style: const TextStyle(fontSize: 30),
                        ),
                      ),
                      Center(
                        child: Text(
                          "Phone : ${snapshot.data!["phone"]}",
                          style: const TextStyle(fontSize: 30),
                        ),
                      ),
                      Center(
                        child: Text(
                          "Location : ${snapshot.data!["location"]}",
                          style: const TextStyle(fontSize: 30),
                        ),
                      ),
                      Center(
                        child: Text(
                          "Role : ${snapshot.data!["role"]}",
                          style: const TextStyle(fontSize: 30),
                        ),
                      ),
                    ],
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
