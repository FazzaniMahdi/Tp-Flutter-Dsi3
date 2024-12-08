import 'package:flutter/material.dart';
import 'package:shopping_cart/approuter.dart';

import 'package:get/instance_manager.dart';
import 'package:shopping_cart/data/datasource/localdatasource/user_local_data_source.dart';
import 'package:shopping_cart/data/datasource/services/article.service.dart';
import 'package:shopping_cart/data/datasource/services/categorie.service.dart';
import 'package:shopping_cart/data/repositories/article.repository.dart';
import 'package:shopping_cart/data/repositories/categorie.repository.dart';
import 'package:shopping_cart/data/repositories/user.repository.dart';
import 'package:shopping_cart/domain/usecases/article.usecase.dart';
import 'package:shopping_cart/domain/usecases/categorie.usecase.dart';
import 'package:shopping_cart/domain/usecases/user.usecase.dart';
import 'package:shopping_cart/presentation/controllers/article.controller.dart';
import 'package:shopping_cart/presentation/controllers/categorie.controller.dart';
import 'package:shopping_cart/presentation/controllers/user.controller.dart';
import 'package:persistent_shopping_cart/persistent_shopping_cart.dart';

// Fonction principale qui lance l'application Flutter
void main() async {
 
 //Initialiser shoppingCart
 await PersistentShoppingCart().init();
 
  //injection articles getx
  Get.put(ArticleService());
  Get.put(ArticleRepository(artserv: Get.find()));
  Get.put(ArticleUseCase(respository: Get.find()));
  Get.put(ArticleController(useCase: Get.find()));

  //injection categories getx
  Get.put(CategorieService());
  Get.put(CategorieRepository(catserv: Get.find()));
  Get.put(CategorieUseCase(respository: Get.find()));
  Get.put(CategorieController(useCase: Get.find()));

// injection authentification
   Get.put(UserLocalDataSource());
  Get.put(UserRepository(localDataSource: Get.find()));
  Get.put(AuthenticateUserUseCase(repository: Get.find()));
  Get.put(AuthController(userUseCase: Get.find()));

  // Lance l'application en exécutant MyApp
  runApp(const MyApp());
}

// Définition de la classe stateless MyApp
class MyApp extends StatelessWidget {
  // Constructeur constant avec une clé facultative
  const MyApp({super.key});

  // Ce widget est la racine de l'application
  @override
  Widget build(BuildContext context) {
    // Retourne un MaterialApp configuré
    return MaterialApp(
       // Titre de l'application
      title: 'Flutter Application',
      // Thème de l'application avec une palette de couleurs personnalisée
      theme: ThemeData(
        // Utilisation d'un ColorScheme basé sur une couleur de départ
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        // Activation de Material Design 3
        useMaterial3: true,
        ),
      // Désactivation du bandeau "DEBUG"
      debugShowCheckedModeBanner: false,
       initialRoute: '/Home',
       routes: approutes(),  // Utilisation des routes depuis le fichier séparé
    );
  }
  
}
