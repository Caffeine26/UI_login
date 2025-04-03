# UI_Login and Register

## Description
This Flutter project is a simple login application that allows users to log in using their username and remember their login status for future sessions. The app offers functionality to manage user sessions by saving login details using `SharedPreferences` and offers both "New User" and "Returning User" states.

## Demo Video
link demo video on youtube: https://www.youtube.com/watch?v=k2G_CvlCgbM 

## Features
Key Features:
- User login system with username input.
- "Remember Me" feature that saves the user's login details.
- A welcoming screen that changes based on whether the user is new or returning.
- App state persistence using `SharedPreferences`.

- **Login Screen**: Users can log in with their username and access the home screen.
- **Welcome Message**: If it's a new user, they get a custom welcome message. If it's a returning user, the app displays a different message.
- **SharedPreferences**: The app stores user data locally to manage sessions across app launches.
- **Log Out**: Users can log out from the app, which clears the stored session data.
