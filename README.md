# SwiftUI To-Do List

A simple SwiftUI app that allows you to create and manage your to-do items on iOS. This project follows an MVVM structure, using a `ToDo` model and a `ToDosViewModel` to handle data persistence and state management.

## Overview

- **Add, edit, and delete** tasks
- **Mark tasks as completed** with a checkbox
- **Persist data** locally using JSON encoding and decoding
- **Reorder tasks** using SwiftUI’s built-in list methods

## Key Components

1. **`ToDo` (Model)**
   - Conforms to `Identifiable` and `Codable`.
   - Contains properties for title, due date, completion status, and notes.

2. **`ToDosViewModel` (View Model)**
   - Holds an array of `ToDo` items.
   - Provides methods to load, save, add, edit, reorder, and delete items.
   - Uses JSON for data persistence in the app’s Documents directory.

3. **`ToDoList` (View)**
   - Displays all `ToDo` items in a `List`.
   - Includes functions to delete, reorder, and toggle completion status.
   - Presents a sheet for adding or editing tasks.

4. **`DetailView` (View)**
   - Allows users to add or edit details of a to-do item.
   - Includes options to set reminders, due dates, and completion status.

## Getting Started

1. **Clone this repository** or download the project files.
2. **Open the project** in Xcode (version 14 or higher recommended).
3. **Build and run** on the iOS simulator or a physical device.

## How It Works

1. **Model Initialization**  
   When the app launches, `ToDosViewModel` loads existing tasks from the Documents directory. If no data is found, an empty list is used.

2. **Adding or Editing a To-Do**  
   - Tap the **plus** button on the main list to create a new to-do.
   - You can edit an existing to-do by tapping on it in the list, which opens `DetailView`.

3. **Deleting and Reordering**  
   - Swipe left on an item to delete it.
   - Tap the **Edit** button to reorder tasks using SwiftUI’s move functionality.

4. **Completing Tasks**  
   - Tap the checkbox icon next to a task to mark it as completed (or incomplete).

5. **Data Persistence**  
   - When an item is added, edited, or deleted, the view model encodes the updated list into JSON and writes it to the Documents directory.
   - On the next app launch, the JSON file is decoded back into the to-do list.

## Requirements

- iOS 16.0+ / Swift 5.7+
- Xcode 14 or later

## Acknowledgments

- This project was developed as part of a SwiftUI class.
- Special thanks to the resources provided in [this YouTube playlist](https://www.youtube.com/playlist?list=PL9VJ9OpT-IPSM6dFSwQCIl409gNBsqKTe).

## License

This project is provided for educational purposes. Feel free to use the code as a reference or foundation for your own projects.
