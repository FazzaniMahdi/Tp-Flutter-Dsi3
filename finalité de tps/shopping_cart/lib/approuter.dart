import 'package:shopping_cart/presentation/screens/register.screen.dart';
import 'package:flutter/material.dart';
import 'package:shopping_cart/domain/entities/categorie.entity.dart';
import 'package:shopping_cart/pages/myproducts.dart';
import 'package:shopping_cart/screens/details.dart';
import 'package:shopping_cart/screens/documents.dart';
import 'package:shopping_cart/screens/exitscreen.dart';
import 'package:shopping_cart/screens/menu.dart';
import 'package:shopping_cart/screens/products.dart';
import 'package:shopping_cart/models/Product.class.dart';
import 'package:shopping_cart/screens/profile.dart';
import 'package:shopping_cart/presentation/screens/login.screen.dart';
import 'package:shopping_cart/screens/subscribe.dart';
import 'package:shopping_cart/screens/synchronization.dart';
import 'package:shopping_cart/widgets/myappbar.dart';
import 'package:shopping_cart/widgets/mybottomnavbar.dart';
import 'package:shopping_cart/widgets/mydrawer.dart';
import 'package:shopping_cart/presentation/screens/categorielist.screen.dart';
import 'package:shopping_cart/presentation/screens/addcategorie.screen.dart';
import 'package:shopping_cart/presentation/screens/editcategorie.screen.dart';
import 'package:shopping_cart/presentation/screens/settings.screen.dart';
import 'package:shopping_cart/presentation/screens/articleslist.screen.dart';
import 'package:shopping_cart/presentation/screens/showcartscreen.screen.dart';

Map<String, WidgetBuilder> approutes() {
  return {
    '/Home': (context) => const Scaffold(
          appBar: MyAppBar(),
          body: Menu(),
          drawer: Mydrawer(),
          bottomNavigationBar: Mybottomnavbar(),
        ),
    '/Items': (context) => Scaffold(
          appBar: AppBar(title: const Text("My products")),
          body: const Myproducts(),
          drawer: const Mydrawer(),
          bottomNavigationBar: const Mybottomnavbar(),
        ),
    '/Exit': (context) => const Scaffold(
          appBar: MyAppBar(),
          body: Exitscreen(),
        ),
    '/Documents': (context) => const Documents(),
    '/Products': (context) => const Scaffold(
          body: Products(),
        ),
    '/Synchronization': (context) => const Synchronization(),
    '/Settings': (context) => const Login(),
    '/register': (context) => const Register(),
    '/Categories': (context) => const Categorieslist(),
    '/Subscribe': (context) => const Subscribe(),
    '/Profile': (context) => const Profile(),
    '/details': (context) {
      final product = ModalRoute.of(context)!.settings.arguments as Product;
      return Details(
          myListElement:
              product); // Retourne la page des détails avec le produit passé enargument
    }, //
    '/addcategories': (context) =>
        const Addcategorie(), // Route pour l'écran Addategorie
    '/editcategories': (context) {
      final categorie =
          ModalRoute.of(context)!.settings.arguments as CategorieEntity;
      return Editcategorie(categorie: categorie);
    },
    '/settingsDetails': (context) => const SettingsScreen(), // Route pour l'écran SettingsScreen
    '/shopping': (context) => const ArticlesListScreen(), // Route pour l'écran ArticlesList
    '/cartView': (context) => const CartView(), // Route pour l'écran cart view
  };
}
