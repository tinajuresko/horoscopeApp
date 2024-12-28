# Horoscope App

This iOS app offers an engaging and interactive experience for astrology enthusiasts. It combines horoscope readings and tarot card predictions with a clean and user-friendly interface.

## Features

### Zodiac Signs
On the home screen, the app displays icons for all the zodiac signs. The user can filter the zodiac signs using a search bar, making it easy to find and select the desired sign. Once a sign is selected, the user is navigated to a new screen where they can view the horoscope for that sign.

### Horoscope Readings
The app pulls daily horoscope data from the [Horoscope API](https://horoscope-app-api.vercel.app). Initially, the user is presented with the horoscope for the current day. However, the app also provides options to view:
- Yesterday's horoscope
- Tomorrow's horoscope
- Horoscope for the entire week or month

### Tarot Card of the Day
The app includes a Tarot feature. In the bottom-left corner of the home screen, there is an icon that leads to a screen where users can see a randomly drawn tarot card. Each card is displayed along with its name and meaning. The tarot card reading gives users insights into their day and spiritual guidance.

### Compatibility Calculator
On the home screen, there is also a heart-shaped icon located in the bottom-right corner. When clicked, it takes the user to a new screen where they can enter two zodiac signs and calculate their compatibility. This feature provides a fun way to discover how well two signs align with each other according to astrology.

## Technologies Used
- **SwiftUI**: For the user interface and interactions.
- **Horoscope API**: For retrieving daily, weekly, and monthly horoscope data.
- **Random Tarot Cards**: For drawing a random tarot card and displaying its meaning.

## Installation

To get started with the Horoscope App on your local machine, follow these steps:

### Prerequisites
Before you begin, make sure you have the following installed:
- [Xcode](https://developer.apple.com/xcode/) (version 14 or higher) on macOS
- A macOS device to run the application

### Steps

1. **Clone the repository**  
   First, clone this repository to your local machine:

   git clone https://github.com/tinajuresko/horoscopeApp.git
   cd horoscopeApp
   
2. **Open the project in Xcode**
    Navigate to the project folder and open the .xcodeproj file.
    
    open horoscopeApp.xcodeproj
    
3. **Run the app**
    Select the target device or simulator in Xcode and click the Run button (Cmd + R) to build and run the app on your device or simulator.

4. **Enjoy the App**
    Once the app is running, you can interact with the horoscope readings, tarot cards, and compatibility calculator.


