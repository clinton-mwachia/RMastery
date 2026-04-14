> Learn R by doing - interactive, practical, powerful.

RMastery is a powerful **interactive R learning platform** built as an R
package. It helps you learn R step-by-step using **hands-on tutorials,
exercises, and instant feedback**.

## Features

- **Interactive Tutorials** – Learn concepts with guided lessons
- **Hands-on Exercises** – Practice as you learn
- **Instant Feedback** – Get real-time grading with explanations
- **Structured Curriculum** – Beginner → Intermediate → Advanced
- **Real-world Examples** – Work with practical datasets
- **Exams** – Full Exams

## Built With

- `learnr` – Interactive tutorials
- `gradethis` – Automatic grading and feedback

## Installation

Install from GitHub:

``` r
install.packages("pak")
pak::pak("clinton-mwachia/RMastery")
```

## Getting Started

Launch your first lesson:

``` r
library(RMastery)

# start your learning jouney
start_learning()

# browse available tutorials
list_tutorials()

# lauch a given lesson
load_tutorial(tutorial = "data")
```

## Course Structure

- Variables & Data Types
- Vectors
- Data Frames

Each lesson includes:

- Explanation
- Interactive coding
- Instant feedback
- Hints

## Project Structure

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

## Goals

RMastery aims to:

- Make R learning **interactive and practical**
- Replace passive tutorials with **hands-on experience**
- Provide a **complete learning path** in one package

## Contributing

Contributions are welcome!

You can:

- Add new lessons
- Improve exercises
- Fix bugs
- Suggest features

Steps:

1.  Fork the repo
2.  Create a branch
3.  Make changes
4.  Submit a pull request

## License

MIT License

## Author

Built with Love by [clinton-mwachia](https://github.com/clinton-mwachia)

## Support

If you like this project:

- tar the repo
- Fork it
- Contribute

> Learn R the right way — by doing.
