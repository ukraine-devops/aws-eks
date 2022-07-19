# AWS, EKS and other cloud tools

my demo repository for blueprints and solutions encountered on the project

## Tools and services

- AWS cloud: EKS, Route53, PostgreSQL, ALB  
- GitLab, Runners, Pipelines

## Rules and architectural approaches

1. Do cross-reviews, it helps to create code with a good quality in mind

2. [12-Factor App site](https://12factor.net) - use 12-factor app as a backbone architectural pattern for your cloud system.

3. Apply microservice architecture for system agility and ability to expand and migrate quickly (modularity, SOLID)

4. Work on one task at a time, don't switch between several contexts (refocus takes time and creates complex problems)

5. Create clear docs and diagrams after R&D and feature testing (your feature costs nothing without proper documentation and high-level diagram)

6. Each task/ticket must be atomic and have a single responsibility principle (SOLID)

7. Use short-lived "feature" branches and one main branch as a base artifact for all environments.

8. Code artifacts must be as small as possible, secure and well tested

9. Use caching on all levels: pipelines, cloud, containers (it saves delivery time and overall budget)

10. Apply maximum level of automation and abstraction in the code, save pipelines, resources and automation in the project repository.

11. Use only mature tools, frameworks, images with a minimum quantity of defects

12. Penetration testing and security scans reassure you of the safety and reliability of the solution

13. Try to have declarative approach in code, pipelines, scripts as much as possible (try not to use an imperative approach in scripts, because it makes support more expensive and migration more difficult)

14. Create ephemeral environments and do code tests for all pull requests.

15. Your repository it's one source of truth for code, provision and deployments: keep all these together.

16. Secrets and certificates must be in secure storage and falls under the least privilege rule.

17. Best practice for the cloud is: single sign-on with two-factor authentication, for service connections: role with a short-lived token.

18. We must follow "clear code" practices with DRY(don't repeat), KISS(keep it simple), YAGNI(you're gonna need it) and SOLID(mostly used in OOP, but helpful in DevOps) principles
