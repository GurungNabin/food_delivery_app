import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:food_delivery_app_mitch_koko/models/cart_item.dart';
import 'package:food_delivery_app_mitch_koko/models/food.dart';
import 'package:intl/intl.dart';

class Restaurant extends ChangeNotifier {
  //list of food menu
  final List<Food> _menu = [
    //burges
    Food(
      name: 'Classic Cheese Burger',
      description: 'A juicy beef patty with melted cheese.',
      imagePath: 'assets/images/burgers/burger1.jpg',
      price: 1.0,
      category: FoodCategory.burgers,
      availabeAddons: [
        Addon(
          name: 'Extra cheese',
          price: 0.50,
        ),
        Addon(
          name: 'Extra Bacon',
          price: 0.75,
        ),
        Addon(
          name: 'Extra vegetables',
          price: 0.50,
        ),
      ],
    ),
    Food(
      name: 'Classic Cheese Burger',
      description: 'A juicy beef partty with melted cheese ',
      imagePath: 'assets/images/burgers/burger2.jpg',
      price: 1.0,
      category: FoodCategory.burgers,
      availabeAddons: [
        Addon(
          name: 'Extra cheese',
          price: 0.50,
        ),
        Addon(
          name: 'Extra Bacon',
          price: 0.75,
        ),
        Addon(
          name: 'Extra vegetables',
          price: 0.50,
        ),
      ],
    ),
    Food(
      name: 'Beef Burger',
      description: 'A juicy beef partty with melted cheese',
      imagePath: 'assets/images/burgers/burger3.jpg',
      price: 1.0,
      category: FoodCategory.burgers,
      availabeAddons: [
        Addon(
          name: 'Extra cheese',
          price: 0.50,
        ),
        Addon(
          name: 'Extra Bacon',
          price: 0.75,
        ),
        Addon(
          name: 'Extra vegetables',
          price: 0.50,
        ),
      ],
    ),
    Food(
      name: 'Classic Cheese Burger',
      description: 'A juicy beef partty with melted cheese',
      imagePath: 'assets/images/burgers/burger4.jpg',
      price: 1.0,
      category: FoodCategory.burgers,
      availabeAddons: [
        Addon(
          name: 'Extra cheese',
          price: 0.50,
        ),
        Addon(
          name: 'Extra Bacon',
          price: 0.75,
        ),
        Addon(
          name: 'Extra vegetables',
          price: 0.50,
        ),
      ],
    ),
    Food(
      name: 'Classic Cheese Burger',
      description: 'A juicy beef partty with melted cheese and french fries.',
      imagePath: 'assets/images/burgers/burger5.jpg',
      price: 1.0,
      category: FoodCategory.burgers,
      availabeAddons: [
        Addon(
          name: 'Extra cheese',
          price: 0.50,
        ),
        Addon(
          name: 'Extra Bacon',
          price: 0.75,
        ),
        Addon(
          name: 'Extra vegetables',
          price: 0.50,
        ),
      ],
    ),

    //deserts
    Food(
      name: '3 layer cake',
      description: 'A beautyfull cake with a bear on top of it',
      imagePath: 'assets/images/deserts/cake.jpg',
      price: 100,
      category: FoodCategory.deserts,
      availabeAddons: [
        Addon(
          name: 'Extra layer',
          price: 25,
        ),
        Addon(
          name: 'Extra chocolate',
          price: 15,
        ),
        Addon(
          name: 'Extra decoration',
          price: 10,
        ),
      ],
    ),
    Food(
      name: 'Candy',
      description: 'A sweet candy loved by all',
      imagePath: 'assets/images/deserts/candy.jpg',
      price: 100,
      category: FoodCategory.deserts,
      availabeAddons: [],
    ),
    Food(
      name: 'Cookies',
      description: 'A good home made cookies',
      imagePath: 'assets/images/deserts/cookies.jpg',
      price: 10,
      category: FoodCategory.deserts,
      availabeAddons: [
        Addon(
          name: 'Extra Cookies',
          price: 2,
        ),
      ],
    ),
    Food(
      name: 'Donut',
      description: 'A perfect circle donut with lots of different flavors',
      imagePath: 'assets/images/deserts/cake.jpg',
      price: 10,
      category: FoodCategory.deserts,
      availabeAddons: [
        Addon(
          name: 'Extra donut',
          price: 10,
        ),
        Addon(
          name: 'Extra filling',
          price: 5,
        ),
      ],
    ),
    Food(
      name: 'Icecream',
      description: 'A perfect desert loved my all',
      imagePath: 'assets/images/deserts/icecream.jpg',
      price: 10,
      category: FoodCategory.deserts,
      availabeAddons: [
        Addon(
          name: 'Extra scope',
          price: 2,
        ),
        Addon(
          name: 'Extra filling',
          price: 2,
        ),
      ],
    ),

    //drinks
    Food(
      name: 'Coffee',
      description:
          'A cup of coffee made with original coffee beans with a little details on the cup for take away',
      imagePath: 'assets/images/drinks/coffee.jpg',
      price: 5.0,
      category: FoodCategory.drinks,
      availabeAddons: [
        Addon(
          name: 'Extra beans',
          price: 1,
        ),
      ],
    ),
    Food(
      name: 'Coffee',
      description: 'A cup of coffee made with original coffee beans ',
      imagePath: 'assets/images/drinks/cappuccino.jpg',
      price: 5.0,
      category: FoodCategory.drinks,
      availabeAddons: [],
    ),
    Food(
      name: 'Orange Juice',
      description: 'An orange jucie perfect for your health',
      imagePath: 'assets/images/drinks/orange_juice.jpg',
      price: 5.0,
      category: FoodCategory.drinks,
      availabeAddons: [
        Addon(
          name: 'Extra orange',
          price: 1,
        ),
      ],
    ),
    Food(
      name: 'Mocktail',
      description: 'A mocktail with ice on it',
      imagePath: 'assets/images/drinks/mocktail.jpg',
      price: 5.0,
      category: FoodCategory.drinks,
      availabeAddons: [],
    ),
    Food(
      name: 'Wine',
      description: 'A branded wine imported form Italy',
      imagePath: 'assets/images/drinks/wine.jpg',
      price: 5.0,
      category: FoodCategory.drinks,
      availabeAddons: [],
    ),

    //salads
    Food(
      name: 'Potato Salad',
      description:
          'A salads made with sweet potato, perfect for your start up food ',
      imagePath: 'assets/images/salads/potato_salad.webp',
      price: 20,
      category: FoodCategory.salads,
      availabeAddons: [
        Addon(
          name: 'Extra potato',
          price: 10,
        ),
        Addon(
          name: 'Extra vegetables',
          price: 5,
        ),
      ],
    ),
    Food(
      name: 'Caesar Salad',
      description: 'A salads made with green leaves.',
      imagePath: 'assets/images/salads/caesar_salad.webp',
      price: 15.0,
      category: FoodCategory.salads,
      availabeAddons: [],
    ),
    Food(
      name: 'Italian Salad',
      description: 'A salads oraginated form Italy',
      imagePath: 'assets/images/salads/italian_salads.webp',
      price: 25.0,
      category: FoodCategory.salads,
      availabeAddons: [],
    ),
    Food(
      name: 'Pasta Salad',
      description: 'A perfect pasta with cheese on it',
      imagePath: 'assets/images/salads/pasta_salad.webp',
      price: 20.0,
      category: FoodCategory.salads,
      availabeAddons: [
        Addon(
          name: 'Extra cheese',
          price: 5.0,
        ),
      ],
    ),
    Food(
      name: 'Cobb Salad',
      description: 'A salads made with different ingredient ',
      imagePath: 'assets/images/salads/cobb_salad.webp',
      price: 30.0,
      category: FoodCategory.salads,
      availabeAddons: [
        Addon(
          name: 'Extra eggs',
          price: 8.0,
        ),
        Addon(
          name: 'Extra vegetables',
          price: 5.0,
        ),
      ],
    ),

    //sides
    Food(
      name: 'Samos',
      description: 'A perfect side perfect with chiya with friends ',
      imagePath: 'assets/images/sides/samosa.jpg',
      price: 1.0,
      category: FoodCategory.sides,
      availabeAddons: [
        Addon(
          name: 'Extra cheese',
          price: 0.50,
        ),
        Addon(
          name: 'Extra Bacon',
          price: 0.75,
        ),
        Addon(
          name: 'Extra vegetables',
          price: 0.50,
        ),
      ],
    ),
    Food(
      name: 'French Fries',
      description:
          'A start up dish when to eat when you main course is being ready. ',
      imagePath: 'assets/images/sides/french_fries.jpg',
      price: 8.0,
      category: FoodCategory.sides,
      availabeAddons: [],
    ),
    Food(
      name: 'Fried Rice',
      description: 'A food that can be made in home and can be eaten any time ',
      imagePath: 'assets/images/sides/fried_rice.jpg',
      price: 20.0,
      category: FoodCategory.sides,
      availabeAddons: [],
    ),
    Food(
      name: 'Garlic Bread',
      description: 'A side dish made with gralic on top of bread.',
      imagePath: 'assets/images/sides/garlic_bread.jpg',
      price: 8.0,
      category: FoodCategory.sides,
      availabeAddons: [],
    ),
    Food(
        name: 'Pasta ',
        description: 'A side dish made with gralic on top of bread.',
        imagePath: 'assets/images/sides/pasta.jpg',
        price: 15.0,
        category: FoodCategory.sides,
        availabeAddons: [Addon(name: 'Extra cheese', price: 5)]),
  ];

  //delivery addresss (which user can change/update)
  String _deliveryAddress = 'Samakhushi , KTM';

  /*

    G E T T E R S

  */
  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;
  String get deliveryAddress => _deliveryAddress;

  /*

    O P E R A T O R S

  */

  //user cart
  final List<CartItem> _cart = [];

  //add to carts
  void addToCart(Food food, List<Addon> selectedAddons) {
    //sett if there is a cart item already with the same food and selected addons
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      //check if the food items are the same
      bool isSameFood = item.food == food;

      //check if the list of selected addons are the same
      bool isSammeAddons =
          const ListEquality().equals(item.selectedAddons, selectedAddons);

      return isSameFood && isSammeAddons;
    });

    //if item already exists, increase it's quantity
    if (cartItem != null) {
      cartItem.quantity++;
    }

    //otherwise, add a new cart item to the cart
    else {
      _cart.add(
        CartItem(food: food, selectedAddons: selectedAddons),
      );
    }
    notifyListeners();
  }

  //remove form cart
  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);

    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }
    notifyListeners();
  }

  //get total price of cart
  double getTotalPrice() {
    double total = 0.0;

    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;

      for (Addon addon in cartItem.selectedAddons) {
        itemTotal == addon.price;
      }
      total += itemTotal * cartItem.quantity;
    }
    return total;
  }

  //get total numbe rof items in cart
  int getTotalItemCount() {
    int totalItemCount = 0;

    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }

    return totalItemCount;
  }

  //clear cart
  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

  //update delivery addres
  void updateDeliveryAddress(String newAddress) {
    _deliveryAddress = newAddress;
    notifyListeners();
  }

/*

    H E L P E R S

  */

  //generate a receipt
  String displayCartReceipt() {
    final receipt = StringBuffer();
    receipt.writeln('Here\'s your receipt.');
    receipt.writeln();

    //format the data to include up to seconds only
    String formattedData =
        DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());

    receipt.writeln(formattedData);
    receipt.writeln();
    receipt.writeln('-------------');

    for (final cartItem in _cart) {
      receipt.writeln(
          '${cartItem.quantity} x ${cartItem.food.name}-${_formatPrice(cartItem.food.price)}');
      if (cartItem.selectedAddons.isNotEmpty) {
        receipt.writeln(' Add-ons: ${_formatAddons(cartItem.selectedAddons)}');
      }
      receipt.writeln();
    }
    receipt.writeln('-------------');
    receipt.writeln();
    receipt.writeln('Total Items: ${getTotalItemCount()}');
    receipt.writeln('Total Price: ${_formatPrice(getTotalPrice())}');
    receipt.writeln();
    receipt.writeln('Delivering to: $deliveryAddress');

    return receipt.toString();
  }

  //format double value into money
  String _formatPrice(double price) {
    return '\$${price.toStringAsFixed(2)}';
  }

  //format list of addons into a string summary
  String _formatAddons(List<Addon> addons) {
    return addons
        .map((addon) => '${addon.name}(${_formatPrice(addon.price)})')
        .join(",");
  }
}
