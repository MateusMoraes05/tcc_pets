import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

final List<String> imagesList = [
  'assets/d1.jpeg',
  'assets/d2.jpeg',
  'assets/d3.jpeg',
  'assets/d4.jpeg',
];
final List<String> titles = [
  ' dog1',
  ' dog2 ',
  ' dog3 ',
  ' dog4 ',
];

class dogScreen extends StatefulWidget {
  @override
  _dogScreenState createState() => _dogScreenState();
}

class _dogScreenState extends State<dogScreen> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Cachorro vira-lata",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () => {Navigator.pop(context)},
            icon: const Icon(Icons.arrow_back,
                color: Color.fromRGBO(65, 123, 90, 100)),
          ),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              CarouselSlider(
                options: CarouselOptions(
                  autoPlay: true,
                  // enlargeCenterPage: true,
                  //scrollDirection: Axis.vertical,
                  onPageChanged: (index, reason) {
                    setState(
                      () {
                        _currentIndex = index;
                      },
                    );
                  },
                ),
                items: imagesList
                    .map(
                      (item) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                          margin: const EdgeInsets.only(
                            top: 10.0,
                            bottom: 10.0,
                          ),
                          elevation: 6.0,
                          shadowColor: Colors.redAccent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: ClipRRect(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(30.0),
                            ),
                            child: Stack(
                              children: <Widget>[
                                Image.asset(
                                  item,
                                  fit: BoxFit.cover,
                                  // width: double.infinity,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: imagesList.map((urlOfItem) {
                  int index = imagesList.indexOf(urlOfItem);
                  return Container(
                    width: 10.0,
                    height: 10.0,
                    margin: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 2.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _currentIndex == index
                          ? const Color.fromRGBO(0, 0, 0, 0.8)
                          : const Color.fromRGBO(0, 0, 0, 0.3),
                    ),
                  );
                }).toList(),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: Column(
                  children: [
                    Title(
                      color: Colors.black,
                      child: const Text(
                        "Descrição",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ),
                    const Text(
                        "Este cachorro é mais conhecido como SRD (Sem raça definida), o vira-lata não tem um certo padrão de origem e por este motivo não tem pedigree, assim o SRD está presente em cerca de 41% das casas brasileiras. "),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Title(
                        color: Colors.black,
                        child: const Text(
                          "Característica",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                      ),
                    ),
                    const Text(
                        "Seu tamanho e peso pode se variar, diante da mistura de várias raças o SRD pode apresentar tamanhos de porte pequeno, médio, grande ou até mesmo gigante. Já em relação a sua pelagem, eles podem apresentar pelos curtos ou longos, assim sendo apenas de uma cor ou de várias tonalidades.  "),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Title(
                        color: Colors.black,
                        child: const Text(
                          "Saude e Bem-estar",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 8.0),
                      child: Text(
                          "Os cuidados necessários com este cachorrinho vão ser muito variados, para os de pelos mais longos é recomendado escovações diárias, já o que tem pelagem mais curta pode ser escovado uma vez por semana, apenas para remover os pelos já soltos. O seu banho também se varia em como é o seu animalzinho, más o recomendado é de 2 banhos mensais, sempre com água morna para garantir a eles um bom banho, lembrando que deve se manter a água longe de suas orelhas, pois podem causar dores de ouvido. A sua boa alimentação vai garantir uma boa disposição e energia deste cãozinho, mas assim visando e tentando evitar a obesidade, os seus dentinhos do canino devem ser escovados 2 a 3 vezes na semana, seguindo assim está raça tende a viver entre 14 a 16 anos"),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
