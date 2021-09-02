import 'package:flutter/material.dart';
//Add carousel_slider: ^4.0.0 to your pubspec.yaml dependencies. And import it:
import 'package:carousel_slider/carousel_slider.dart';

class Projeto {
  final String nome;
  final String picture;
  
  Projeto(this.nome, this.picture);
}

class Projetos extends StatefulWidget {
  @override
  _ProjetosState createState() => _ProjetosState();
}

class _ProjetosState extends State<Projetos> {
  final projetoshtml = <Projeto>[
    Projeto(
      "Primeira Página",
      "image/html1.png",
     
    ),
    Projeto(
      "Meu Artista Preferido",
      "image/meu_artista_favorito.png",
     
    ),
    Projeto(
      "Pontos Turisticos",
      "image/pontos_turisticos.png",
      
    ),
    Projeto(
      "Cine SoulCode",
      "image/projato_final_html.png",
     
    ),
  ];
  
  final projetoscss = <Projeto>[
    Projeto(
      "Começando a estilizar",
      "image/css1.png",
     
    ),
    Projeto(
      "Receite de bolo",
      "image/css2.png",
     
    ),
    Projeto(
      "Bubaloo",
      "image/css3.png",
      
    ),
    Projeto(
      "Hotel Plaza",
      "image/css_final.png",
     
    ),
  ];

  final projetosjs = <Projeto>[
    Projeto(
      "Math.Tech home",
      "image/js_home.png",
     
    ),
    Projeto(
      "Math.Tech home2",
      "image/js_home2.png",
     
    ),
    Projeto(
      "Math.Tech Converções",
      "image/js_conversões.png",
      
    ),
    Projeto(
      "Math.tech Calculadora",
      "image/js_calculadora.png",
     
    ),
  ];
  final projetosReact = <Projeto>[
    Projeto(
      "Calculadora",
      "image/calc.png",
     
    ),
    Projeto(
      "Soulhealth",
      "image/soulhealth.png",
     
    ),
    Projeto(
      "Soulhealth",
      "image/soulhealth2.png",
      
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final textStyles = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: Text('Projetos'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: CarouselSlider(
                items: projetoshtml
                    .map((e) => Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            SizedBox(height:8),
                              Text(
                              "Projetos HTML ",
                              style: textStyles.headline3,
                              textAlign: TextAlign.center
                            ),
                            SizedBox(height:8),
                            Image.asset(
                              e.picture,
                              width: 450,
                              height: 400,
                            ),
                            SizedBox(height:8),
                            Text(e.nome, style: textStyles.headline4, textAlign: TextAlign.center),
                          
                          ],
                        ))
                    .toList(),
                options: CarouselOptions(
                  height: 800,
                  enlargeCenterPage: true,
                  enableInfiniteScroll: false,
                  autoPlay: true,
                ),
              ),
            ),
            Center(
              child: CarouselSlider(
                items: projetoscss
                    .map((e) => Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            SizedBox(height:8),
                              Text(
                              "Projetos CSS ",
                              style: textStyles.headline2,
                              textAlign: TextAlign.center
                            ),
                            SizedBox(height:8),
                            Image.asset(
                              e.picture,
                              width: 450,
                              height: 400,
                            ),
                            SizedBox(height:8),
                            Text(e.nome, style: textStyles.headline4, textAlign: TextAlign.center),
                          
                          ],
                        ))
                    .toList(),
                options: CarouselOptions(
                  height: 800,
                  enlargeCenterPage: true,
                  enableInfiniteScroll: false,
                  autoPlay: true,
                ),
              ),
            ),
            Center(
              child: CarouselSlider(
                items: projetosjs
                    .map((e) => Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            SizedBox(height:8),
                              Text(
                              "Projetos JS ",
                              style: textStyles.headline2,
                              textAlign: TextAlign.center
                            ),
                            SizedBox(height:8),
                            Image.asset(
                              e.picture,
                              width: 450,
                              height: 400,
                            ),
                            SizedBox(height:8),
                            Text(e.nome, style: textStyles.headline4, textAlign: TextAlign.center),
                          
                          ],
                        ))
                    .toList(),
                options: CarouselOptions(
                  height: 800,
                  enlargeCenterPage: true,
                  enableInfiniteScroll: false,
                  autoPlay: true,
                ),
              ),
            ),
            Center(
              child: CarouselSlider(
                items: projetosReact
                    .map((e) => Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            SizedBox(height:8),
                              Text(
                              "Projetos React Native ",
                              style: textStyles.headline2,
                              textAlign: TextAlign.center
                            ),
                            SizedBox(height:8),
                            Image.asset(
                              e.picture,
                              width: 450,
                              height: 400,
                            ),
                            SizedBox(height:8),
                            Text(e.nome, style: textStyles.headline4, textAlign: TextAlign.center),
                          
                          ],
                        ))
                    .toList(),
                options: CarouselOptions(
                  height: 800,
                  enlargeCenterPage: true,
                  enableInfiniteScroll: false,
                  autoPlay: true,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
