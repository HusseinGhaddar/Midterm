import 'package:flutter/material.dart';
import 'service_provider.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  String selectedType = "Any";
  String selectedProfession = "Plumber";
  ServiceProvider? selectedProvider;

  List<String> professions = ["Plumber", "Electrician", "Carpenter"];

  List<ServiceProvider> getFilteredProviders() {
    List<ServiceProvider> filteredProviders = providers.where((provider) {
      bool matchesType;
      if (selectedType == "Any") {
        matchesType = true;
      } else if (selectedType == "Individual") {
        matchesType = provider.isIndividual;
      } else {
        matchesType = !provider.isIndividual;
      }

      bool matchesProfession = provider.profession == selectedProfession;
      return matchesType && matchesProfession;
    }).toList();
    return filteredProviders;
  }

  @override
  Widget build(BuildContext context) {
    List<ServiceProvider> filteredProviders = getFilteredProviders();

    return Scaffold(
      appBar: AppBar(
        title: Text("Service Providers"),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Radio(
                    value: "Individual",
                    groupValue: selectedType,
                    onChanged: (value) {
                      setState(() {
                        selectedType = value.toString();
                      });
                    },
                  ),
                  Text("Individual"),
                  Radio(
                    value: "Company",
                    groupValue: selectedType,
                    onChanged: (value) {
                      setState(() {
                        selectedType = value.toString();
                      });
                    },
                  ),
                  Text("Company"),
                  Radio(
                    value: "Any",
                    groupValue: selectedType,
                    onChanged: (value) {
                      setState(() {
                        selectedType = value.toString();
                      });
                    },
                  ),
                  Text("Any"),
                ],
              ),
              SizedBox(height: 16.0),
              DropdownButton<String>(
                value: selectedProfession,
                onChanged: (value) {
                  setState(() {
                    selectedProfession = value!;
                    selectedProvider = null;
                  });
                },
                items: professions.map((profession) {
                  return DropdownMenuItem(
                    value: profession,
                    child: Text(profession),
                  );
                }).toList(),
              ),
              SizedBox(height: 16.0),
              DropdownButton<ServiceProvider>(
                value: selectedProvider,
                onChanged: (value) {
                  setState(() {
                    selectedProvider = value;
                  });
                },
                items: filteredProviders.map((provider) {
                  return DropdownMenuItem(
                    value: provider,
                    child: Text(provider.name),
                  );
                }).toList(),
              ),
              SizedBox(height: 16.0),
              if (selectedProvider != null)
                Text(
                  selectedProvider.toString(),
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}
