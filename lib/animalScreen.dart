import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

final List<String> imagesList = [
  'assets/c1.jpeg',
  'assets/c2.jpeg',
  'assets/c3.jpeg',
  'assets/c4.jpeg',
];
final List<String> titles = [
  ' cat1',
  ' cat2 ',
  ' cat3 ',
  ' cat4 ',
];

class animalScreen extends StatefulWidget {
  @override
  _animalScreenState createState() => _animalScreenState();
}

class _animalScreenState extends State<animalScreen> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: const Text(
              "Gato vira-lata",
              style: TextStyle(color: Colors.black),
            ),
            backgroundColor: Colors.white,
            leading: IconButton(
              onPressed: () => {Navigator.pop(context)},
              icon: const Icon(Icons.arrow_back,
                  color: Color.fromRGBO(65, 123, 90, 100)),
            )),
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
                padding: const EdgeInsets.symmetric(horizontal: 26),
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
                        " Os gatos sem raça definida ou vira-latas são a maioria em nosso país, não possuem pedigree, ou seja, não tem um atestado que comprova sua linhagem pura. São os mais amados pelos brasileiros, estima-se que eles estão presentes em 75% dos lares com bichanos."),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Title(
                        color: Colors.black,
                        child: const Text(
                          "Características",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                      ),
                    ),
                    const Text(
                        "As características mudam muito por conta da variação desses Pets, mas existem algumas que são muito observadas por seus donos, como por exemplo, geralmente os gatos sem raça definidas são de porte de médio; De acordo com veterinários, a expectativa média de vida é de 15 anos, mas isso depende muito do estilo de vida que o Pet leva; A pelagem desses gatinhos podem ser muito diferente uma das outras. "),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Title(
                        color: Colors.black,
                        child: const Text(
                          "Saúde e bem-estar",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 8.0),
                      child: Text(
                          " É muito importante que você saiba sobre alguns cuidados para prolongar e melhorar a qualidade de vida do seu Pet, por exemplo, a escovação dos pelos, cada tamanho demanda de uma precaução especial, o recomendado é que pelos curtos sejam escovados uma vez na semana, enquanto pelos longos devem ser escovados em média três vezes na semana, sempre com acessórios apropriados; A frequência de banhos deve ser recomendada por seu especialista, lavagens em excesso podem prejudicar a saúde do animal, não se esqueça de verificar sempre as orelhas do seu Pet para identificar a possível presença de impurezas; Precauções como: Castração, vacinação e vermifugação são essenciais para a saúde do seu gatinho; Caso as unhas do seu gato cresçam exageradamente deve-se utilizar equipamentos adequados para o corte manual, se não se sentir seguro para fazer o corte existem locais especializados como Pet Shops. Lembrando que é importante sempre consultar o veterinário referente alimentação do seu Pet. "),
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
