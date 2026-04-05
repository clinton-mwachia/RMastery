# 🚀 RMastery

> Learn R by doing — interactive, practical, powerful.

RMastery is a powerful **interactive R learning platform** built as an R package.
It helps you learn R step-by-step using **hands-on tutorials, exercises, and instant feedback**.

---

## ✨ Features

* 📘 **Interactive Tutorials** – Learn concepts with guided lessons
* 💻 **Hands-on Exercises** – Practice as you learn
* ⚡ **Instant Feedback** – Get real-time grading with explanations
* 🧠 **Structured Curriculum** – Beginner → Intermediate → Advanced
* 🖥 **CLI Support** – Learn in the terminal using swirl
* 📊 **Real-world Examples** – Work with practical datasets

---

## 🧱 Built With

* `learnr` – Interactive tutorials
* `gradethis` – Automatic grading and feedback
* `swirl` – Command-line learning interface

---

## 📦 Installation

Install from GitHub:

```r
install.packages("devtools")
devtools::install_github("clinton-mwachia/RMastery")
```

---

## 🚀 Getting Started

Launch your first lesson:

```r
library(RMastery)

launch_vectors()
```

Or browse available tutorials:

```r
learnr::available_tutorials("RMastery")
```

---

## 📚 Course Structure

### 🟢 Beginner

* Variables & Data Types
* Vectors
* Data Frames
* Basic Visualization

### 🟡 Intermediate

* Data Manipulation (`dplyr`)
* Visualization (`ggplot2`)
* Functions & Control Flow
* Data Cleaning

### 🔴 Advanced

* Machine Learning
* APIs & Data Collection
* Shiny Applications
* Package Development

---

## 🧪 Example Lesson

Each lesson includes:

* 📖 Explanation
* 💻 Interactive coding
* ✅ Instant grading
* 💡 Smart hints

Example exercise:

```r
# Create a vector from 1 to 5
```

You write code → get feedback instantly 🎯

---

## How to Run A Lesson

```r
devtools::load_all()
devtools::document()
learnr::run_tutorial("F:/R/RMastery/inst/tutorials/data_structures/data_structures.Rmd")
```
---

## 📁 Project Structure

```
RMastery/
├── R/
├── inst/
│   └── tutorials/
│       ├── data_structures/
│       ├── introduction/
│       └── machine_learning/
├── man/
├── DESCRIPTION
└── README.md
```

---

## 🎯 Goals

RMastery aims to:

* Make R learning **interactive and practical**
* Replace passive tutorials with **hands-on experience**
* Provide a **complete learning path** in one package

---

## 🤝 Contributing

Contributions are welcome!

You can:

* Add new lessons
* Improve exercises
* Fix bugs
* Suggest features

Steps:

1. Fork the repo
2. Create a branch
3. Make changes
4. Submit a pull request

---

## 📄 License

MIT License

---

## 👨‍💻 Author

Built with ❤️ to make learning R simple, interactive, and powerful.

---

## ⭐ Support

If you like this project:

* ⭐ Star the repo
* 🍴 Fork it
* 🧑‍💻 Contribute

---

> Learn R the right way — by doing.

---