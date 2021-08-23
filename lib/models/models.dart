List<Fruit> _fruits = [];

class Fruit {
  final int id;
  final String name, description, image, delivery;
  final double price;

  Fruit(this.id, this.name, this.description, this.image, this.delivery,
      this.price);
}

getFruit() {
  // later work on getting data from the api here
  _fruits = [
    Fruit(
        1,
        "assets/drink1.jpg",
        'dfghjkllkjhgfd',
        'https://images.unsplash.com/photo-1588165171080-c89acfa5ee83?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8c3RyYXdiZXJyeXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
        'sdfghjkl',
        77),
    Fruit(
        1,
        "assets/drink1.jpg",
        'dfghjkllkjhgfd',
        'https://images.unsplash.com/photo-1588165171080-c89acfa5ee83?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8c3RyYXdiZXJyeXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
        'sdfghjkl',
        77),
    Fruit(
        1,
        "assets/drink1.jpg",
        'dfghjkllkjhgfd',
        'https://images.unsplash.com/photo-1588165171080-c89acfa5ee83?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8c3RyYXdiZXJyeXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
        'sdfghjkl',
        77),
    Fruit(
        1,
        "assets/drink1.jpg",
        'dfghjkllkjhgfd',
        'https://images.unsplash.com/photo-1588165171080-c89acfa5ee83?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8c3RyYXdiZXJyeXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
        'sdfghjkl',
        77),
  ];
}
