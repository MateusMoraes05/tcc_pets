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
                        "Descri????o",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ),
                    const Text(
                        " Os gatos sem ra??a definida ou vira-latas s??o a maioria em nosso pa??s, n??o possuem pedigree, ou seja, n??o tem um atestado que comprova sua linhagem pura. S??o os mais amados pelos brasileiros, estima-se que eles est??o presentes em 75% dos lares com bichanos."),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Title(
                        color: Colors.black,
                        child: const Text(
                          "Caracter??sticas",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                      ),
                    ),
                    const Text(
                        "As caracter??sticas mudam muito por conta da varia????o desses Pets, mas existem algumas que s??o muito observadas por seus donos, como por exemplo, geralmente os gatos sem ra??a definidas s??o de porte de m??dio; De acordo com veterin??rios, a expectativa m??dia de vida ?? de 15 anos, mas isso depende muito do estilo de vida que o Pet leva; A pelagem desses gatinhos podem ser muito diferente uma das outras. "),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Title(
                        color: Colors.black,
                        child: const Text(
                          "Sa??de e bem-estar",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 8.0),
                      child: Text(
                          " ?? muito importante que voc?? saiba sobre alguns cuidados para prolongar e melhorar a qualidade de vida do seu Pet, por exemplo, a escova????o dos pelos, cada tamanho demanda de uma precau????o especial, o recomendado ?? que pelos curtos sejam escovados uma vez na semana, enquanto pelos longos devem ser escovados em m??dia tr??s vezes na semana, sempre com acess??rios apropriados; A frequ??ncia de banhos deve ser recomendada por seu especialista, lavagens em excesso podem prejudicar a sa??de do animal, n??o se esque??a de verificar sempre as orelhas do seu Pet para identificar a poss??vel presen??a de impurezas; Precau????es como: Castra????o, vacina????o e vermifuga????o s??o essenciais para a sa??de do seu gatinho; Caso as unhas do seu gato cres??am exageradamente deve-se utilizar equipamentos adequados para o corte manual, se n??o se sentir seguro para fazer o corte existem locais especializados como Pet Shops. Lembrando que ?? importante sempre consultar o veterin??rio referente alimenta????o do seu Pet. "),
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
