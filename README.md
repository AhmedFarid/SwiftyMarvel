SwiftyMarvel is a SwiftUI app that uses the Marvel API to display a list of Marvel characters and their details.
This app implements (Clean Architecture) and some of the practices for iOS app development using SwiftUI, CoreData, Combine, MVVM, Dependency Injection, Unit Testing, Code Coverage.

<img width="150.75" height="327.75" alt="image" src="https://github.com/user-attachments/assets/6302a0d5-54cf-41c9-87aa-83aa97ee5a4a" /> <img width="150.75" height="327.75" alt="image" src="https://github.com/user-attachments/assets/059f3b26-7178-46f4-b850-bf2efa7fe03d" />
 <img width="150.75" height="327.75" alt="image" src="https://github.com/user-attachments/assets/a10a1d84-3ae3-4563-a5ae-436cc78e5f11" /> <img width="150.75" height="327.75" alt="image" src="https://github.com/user-attachments/assets/64d6bc3f-89a9-4cba-ae49-f44f07d3aa3c" />

<div class="markdown-heading" dir="auto"><h3 tabindex="-1" class="heading-element" dir="auto">Folder Structure</h3><a id="user-content-folder-structure" class="anchor" aria-label="Permalink: Folder Structure" href="#folder-structure"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path d="m7.775 3.275 1.25-1.25a3.5 3.5 0 1 1 4.95 4.95l-2.5 2.5a3.5 3.5 0 0 1-4.95 0 .751.751 0 0 1 .018-1.042.751.751 0 0 1 1.042-.018 1.998 1.998 0 0 0 2.83 0l2.5-2.5a2.002 2.002 0 0 0-2.83-2.83l-1.25 1.25a.751.751 0 0 1-1.042-.018.751.751 0 0 1-.018-1.042Zm-4.69 9.64a1.998 1.998 0 0 0 2.83 0l1.25-1.25a.751.751 0 0 1 1.042.018.751.751 0 0 1 .018 1.042l-1.25 1.25a3.5 3.5 0 1 1-4.95-4.95l2.5-2.5a3.5 3.5 0 0 1 4.95 0 .751.751 0 0 1-.018 1.042.751.751 0 0 1-1.042.018 1.998 1.998 0 0 0-2.83 0l-2.5 2.5a1.998 1.998 0 0 0 0 2.83Z"></path></svg></a></div>

<div class="highlight highlight-text-md notranslate position-relative overflow-auto" dir="auto"><pre>📦SwiftyMarvel
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
┗ 📜SwiftyMarvelApp.swift =&gt; The app entry point.</pre><div class="zeroclipboard-container">
    <clipboard-copy aria-label="Copy" class="ClipboardButton btn btn-invisible js-clipboard-copy m-2 p-0 d-flex flex-justify-center flex-items-center" data-copy-feedback="Copied!" data-tooltip-direction="w" value="📦SwiftyMarvel
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
┗ 📜SwiftyMarvelApp.swift =&gt; The app entry point." tabindex="0" role="button">
      <svg aria-hidden="true" height="16" viewBox="0 0 16 16" version="1.1" width="16" data-view-component="true" class="octicon octicon-copy js-clipboard-copy-icon">
    <path d="M0 6.75C0 5.784.784 5 1.75 5h1.5a.75.75 0 0 1 0 1.5h-1.5a.25.25 0 0 0-.25.25v7.5c0 .138.112.25.25.25h7.5a.25.25 0 0 0 .25-.25v-1.5a.75.75 0 0 1 1.5 0v1.5A1.75 1.75 0 0 1 9.25 16h-7.5A1.75 1.75 0 0 1 0 14.25Z"></path><path d="M5 1.75C5 .784 5.784 0 6.75 0h7.5C15.216 0 16 .784 16 1.75v7.5A1.75 1.75 0 0 1 14.25 11h-7.5A1.75 1.75 0 0 1 5 9.25Zm1.75-.25a.25.25 0 0 0-.25.25v7.5c0 .138.112.25.25.25h7.5a.25.25 0 0 0 .25-.25v-7.5a.25.25 0 0 0-.25-.25Z"></path>
</svg>
      <svg aria-hidden="true" height="16" viewBox="0 0 16 16" version="1.1" width="16" data-view-component="true" class="octicon octicon-check js-clipboard-check-icon color-fg-success d-none">
    <path d="M13.78 4.22a.75.75 0 0 1 0 1.06l-7.25 7.25a.75.75 0 0 1-1.06 0L2.22 9.28a.751.751 0 0 1 .018-1.042.751.751 0 0 1 1.042-.018L6 10.94l6.72-6.72a.75.75 0 0 1 1.06 0Z"></path>
</svg>
    </clipboard-copy>
  </div></div>
