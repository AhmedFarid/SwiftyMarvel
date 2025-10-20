SwiftyMarvel is a SwiftUI app that uses the Marvel API to display a list of Marvel characters and their details.
This app implements (Clean Architecture) and some of the practices for iOS app development using SwiftUI, CoreData, Combine, MVVM, Dependency Injection, Unit Testing, Code Coverage.

<img width="150.75" height="327.75" alt="image" src="https://github.com/user-attachments/assets/6302a0d5-54cf-41c9-87aa-83aa97ee5a4a" /> <img width="150.75" height="327.75" alt="image" src="https://github.com/user-attachments/assets/059f3b26-7178-46f4-b850-bf2efa7fe03d" />
 <img width="150.75" height="327.75" alt="image" src="https://github.com/user-attachments/assets/a10a1d84-3ae3-4563-a5ae-436cc78e5f11" /> <img width="150.75" height="327.75" alt="image" src="https://github.com/user-attachments/assets/64d6bc3f-89a9-4cba-ae49-f44f07d3aa3c" />

Folder Structure

📦SwiftyMarvel

┣ 📂Core

┃ ┣ 📂DI

┃ ┗ 📂Extensions

┣ 📂Data

┃ ┣ 📂Constants

┃ ┣ 📂DataSource

┃ ┣ 📂Model

┃ ┣ 📂Mappers

┃ ┣ 📂Networking

┃ ┗ 📂Repository

┣ 📂Domain
┃ ┣ 📂Entity
┃ ┣ 📂Errors
┃ ┣ 📂Repository
┃ ┗ 📂UseCase
┣ 📂Presentation
┃ ┣ 📂Core
┃ ┣ 📂ReusableViews
┃ ┣ 📂Screens
┃ ┃ ┣ 📂Home
┃ ┃ ┃ ┣ 📂ViewModels
┃ ┃ ┃ ┗ 📂Views
