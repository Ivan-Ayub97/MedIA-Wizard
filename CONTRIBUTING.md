# Contributing to MedIA-Wizard

First of all, thank you for considering contributing to **MedIA-Wizard**! We welcome contributions from the community and strive to maintain an open and collaborative environment. Whether you're fixing bugs, suggesting improvements, or adding new features, we appreciate your help.

## How to Contribute

### 1. Fork the Repository

To contribute, first fork the repository to your own GitHub account. This allows you to work on your changes without affecting the original codebase.

- Go to the [MedIA-Wizard GitHub page](https://github.com/TU-USUARIO/MedIA-Wizard).
- Click the **Fork** button at the top right of the page.

### 2. Create a New Branch

Once you have forked the repository, create a new branch for your changes. This helps us review your work in isolation.

- In your terminal, run:

  ```bash
  git checkout -b feature/your-feature-name
  ```

  Replace `your-feature-name` with a descriptive name for your feature or bug fix.

### 3. Make Your Changes

Now you're ready to make the necessary changes! You can either:

- **Fix a bug**: Identify and resolve issues in the code.
- **Add a new feature**: Extend the functionality of MedIA-Wizard.
- **Improve documentation**: Update or add documentation for clarity and usability.

Be sure to follow the existing code style and structure for consistency.

### 4. Test Your Changes

After making your changes, it's essential to test them before submitting a pull request. Ensure that everything works as expected, and that no new bugs have been introduced.

- **Run the application** to make sure it behaves as expected.
- **Test on multiple platforms** (e.g., Windows) to ensure cross-platform compatibility.

### 5. Commit Your Changes

Once you're happy with your changes, commit them to your local branch.

- Use clear and concise commit messages:

  ```bash
  git commit -m "Fix bug in upscaling process"
  ```

- If you're fixing an issue, reference it in your commit:

  ```bash
  git commit -m "Fix bug in batch processing (Fixes #12)"
  ```

### 6. Push Your Changes

Push your changes to your forked repository on GitHub.

```bash
git push origin feature/your-feature-name
```

### 7. Open a Pull Request

Now that your changes are on GitHub, go to the original **MedIA-Wizard** repository and open a pull request.

- Navigate to the [pull requests page](https://github.com/TU-USUARIO/MedIA-Wizard/pulls).
- Click on the **New Pull Request** button.
- Select the branch with your changes and the main repository's `main` branch as the target.
- Provide a descriptive title and a brief explanation of the changes you made.

### 8. Wait for Review

Once you've submitted your pull request, the maintainers will review your changes. They may ask for modifications or improvements before merging it.

- Be open to feedback and make necessary adjustments.
- Stay patient as pull requests can take time to review and merge.

### 9. Code of Conduct

We strive to make MedIA-Wizard a welcoming and inclusive community. By contributing to this project, you agree to follow the project's [Code of Conduct](CODE_OF_CONDUCT.md). We ask that all contributors engage respectfully and help maintain a positive and productive atmosphere.

## Reporting Issues

If you encounter any bugs or issues with MedIA-Wizard, please report them by opening an issue in the [Issues section](https://github.com/TU-USUARIO/MedIA-Wizard/issues).

Before submitting an issue, please make sure to:

- Check if the issue has already been reported.
- Provide as much detail as possible, including:
  - Steps to reproduce the issue.
  - Expected behavior.
  - Actual behavior.
  - Screenshots or error messages if applicable.

## Style Guide

We follow a consistent style for code contributions. Please adhere to the following guidelines:

- **Python Style**: Follow the [PEP 8 style guide](https://pep8.org/) for Python code.
- **Documentation**: Keep documentation clear, concise, and up to date.
- **Commit Messages**: Use the format: `<type>(<scope>): <description>`. Example: `feat(upscale): improve image quality with SRGAN`.

## Thank You

Your contributions help make **MedIA-Wizard** better. Thank you for being a part of this project!

---

If you have any questions or need assistance, feel free to reach out to us at [sellocasadenubes@gmail.com](mailto:sellocasadenubes@gmail.com).
