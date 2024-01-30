# vad dbt CI/CD 

DBT CI/CD STARTER project.

**_Integrating dev, test, and main branches using GitHub actions._**


Development occurs on feature branches. After completion, changes are committed, and a code review is conducted. Following approval, the changes are pushed and merged into the **Dev** branch. Subsequently, a GitHub action facilitates the progression of the code from the **Dev** branch through two additional branches. Ultimately, the code reaches the **main** branch, which serves as the production branch.
