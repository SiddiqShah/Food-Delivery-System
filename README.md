# 🍕 Food Delivery System

A modern, feature-rich food delivery mobile application built with Flutter. This app provides a seamless experience for users to browse restaurants, add items to cart, and complete their food orders with an intuitive and visually appealing interface.

# 📱 Features

# 🏠 Home Screen
- **Location-based service** with current location display (Dhaka)
- **Search functionality** for restaurants and groceries
- **Promotional offers** with attractive gift cards and discounts
- **Category browsing** with visual food categories (Pizza, Burgers, Chicken, etc.)
- **Restaurant exploration** with ratings, delivery time, and special offers
- **Bottom navigation** for easy app navigation

# 🛒 Shopping Cart
- **Item management** with quantity controls (add/remove items)
- **Price calculation** with subtotal, delivery charges, and total
- **Promo code system** for applying discounts
- **Visual cart items** with images, names, and prices
- **Clean cart functionality** with confirmation

# 💳 Checkout Process
- **Delivery time estimation** (15 minutes default)
- **Interactive map integration** for delivery address
- **Multiple payment methods** (Apple Pay, Credit Card)
- **Order confirmation** system
- **Address management** with visual map display

# 🎨 UI/UX Highlights
- **Consistent pink theme** throughout the app
- **Modern design patterns** with rounded corners and shadows
- **Responsive layout** that works on different screen sizes
- **Smooth navigation** between screens
- **Interactive elements** with proper feedback

# 🏗️ Architecture

The app follows a clean, modular architecture with separated concerns:

```
lib/
├── HomeScreen/
│   ├── homeScreen.dart          # Main home page
│   ├── CustomButtons.dart       # Bottom navigation bar
│   ├── Gift.dart               # Promotional gift section
│   ├── Searchbar.dart          # Search functionality
│   ├── itemImages.dart         # Food category images
│   ├── itemsContainer.dart     # Home content container
│   └── Explorerestaurent.dart  # Restaurant cards
├── cart/
│   ├── Cart.dart               # Main cart screen
│   ├── CartWidget.dart         # Individual cart items
│   └── PriceSummarySection.dart # Price calculations
├── checkout/
│   ├── checkOut.dart           # Checkout screen
│   └── PaymentMethod.dart      # Payment options
└── main.dart                   # App entry point
```

## 🚀 Getting Started

# Prerequisites
- Flutter SDK (latest stable version)
- Dart SDK
- Android Studio / VS Code
- Android/iOS device or emulator

# Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/yourusername/food_delivery_system.git
   cd food_delivery_system
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Add required assets**
   Create an `images/` folder in the root directory and add:
   - `pizza.webp` - Food item images
   - `gify.png` - Gift/promotional image
   - `map.png` - Map image for delivery address

4. **Add dependencies to pubspec.yaml**
   ```yaml
   dependencies:
     flutter:
       sdk: flutter
     font_awesome_flutter: ^10.6.0
   ```

5. **Run the application**
   ```bash
   flutter run
   ```

## 📦 Dependencies

- **flutter**: Core Flutter framework
- **font_awesome_flutter**: Icons for enhanced UI
- **material_design**: Material design components

# Key Components

# Home Screen Features
- **Location Display**: Shows current city (Dhaka)
- **Search Bar**: Full-width search for restaurants and groceries
- **Promotional Section**: Eye-catching offers with 40% off for first orders
- **Category Grid**: Visual food categories with images
- **Restaurant Cards**: Detailed restaurant information with ratings and offers

# Cart Management
- **Item Cards**: Individual cart items with images and controls
- **Quantity Controls**: Add/remove items with visual feedback
- **Price Breakdown**: Subtotal, delivery charges, and total calculation
- **Promo Codes**: Apply discount codes with validation

# Checkout Flow
- **Delivery Scheduling**: Default 15-minute delivery with scheduling option
- **Address Selection**: Visual map integration for delivery location
- **Payment Methods**: Multiple payment options with selection indicators
- **Order Confirmation**: Final order placement with success feedback

# 🎨 Design System

# Color Palette
- **Primary**: Pink (`Colors.pink`)
- **Background**: Light gray (`Color.fromARGB(255, 228, 228, 228)`)
- **Cards**: White (`Colors.white`)
- **Text**: Black with gray variants

# Typography
- **Headers**: Bold, 24-25px
- **Body**: Regular, 16-18px
- **Captions**: 14px with gray color

# Components
- **Rounded Corners**: 12-24px border radius
- **Shadows**: Subtle elevation for cards
- **Icons**: Consistent sizing and colors

# 🔄 Navigation Flow

```
Home Screen → Cart → Checkout → Payment → Confirmation
     ↑         ↑        ↑         ↑
   Search   Add Items  Address  Payment
  Results              Selection Method
```

# 🤝 Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request


# 📞 Contact

Muhammad Siddiq Shah - shahsiddiq004@gmail.com



# 🙏 Acknowledgments

- Flutter team for the amazing framework
- Material Design for UI guidelines
- Font Awesome for beautiful icons
