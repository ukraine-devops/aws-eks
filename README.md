# AWS, EKS and other cloud tools

my demo repository for blueprints and solutions encountered on the project

## Tools and services

- AWS cloud: EKS, Route53, PostgreSQL, ALB  
- GitLab, Runners, Pipelines

## Rules and architectural approaches for the project

1. Cross-reviews help to create code with a good quality level

2. [12-Factor App site](https://12factor.net) - use 12-factor app as a backbone architectural pattern for your system.

3. Apply microservice architecture for system agility and ability to expand and migrate quickly

4. Work on one task at a time, don't switch between contexts

5. Create clear docs and diagrams after R&D and feature testing

6. Each task must be atomic and have a single responsibility

7. Use short-lived "feature" branches and one main branch

8. Code artifacts must be as small as possible, secure and well tested

9. Use caching on all levels: pipelines, cloud, containers (it saves overall time and budget)

10. Apply maximum level of automation and abstraction in the code

11. Use only mature tools, frameworks and OS images

12. Penetration testing and security scans reassure you of the safety and reliability of the solution

13. Try to have declarative approach in code, pipelines, scripts as much as possible

14. Create ephemeral environments and do tests for all pull requests

15. Your repository it's one source of truth for code, provision and deployments: keep all code together.

16. Secrets and configuration data must be in Secret Manager and have a high level of security.

17. Best practice for the cloud is: single sign-on with two-factor authentication, for service connections: roles with a short-lived tokens.
