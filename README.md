# Email Triage Agent on Copilot Studio: ALM and DevOps showcase

> One-paragraph pitch: a Copilot Studio agent that triages and drafts replies to email,
> delivered through a reproducible, tested, monitored CI/CD pipeline on the Power Platform and Azure.
> The agent is the workload; the delivery system is the project.

## Demo
<!-- TODO: add a GIF: PR -> pipeline -> deploy -> dashboard -> alert -->

## Architecture
<!-- TODO: embed docs/architecture diagram -->
Outlook -> Power Automate -> Copilot Studio agent -> Dataverse log -> Power Apps review queue -> Power BI.
Azure: Key Vault, Log Analytics, Application Insights (Terraform).

## What this demonstrates
- Solution-based ALM: Dev -> Test -> Prod with managed solutions
- CI/CD with GitHub Actions and federated credentials (no stored client secrets)
- Automated agent tests gating deployment
- Infrastructure as code for the Azure side
- Observability: Power BI dashboard and Application Insights alerts
- Security: drafts only, least privilege, prompt-injection threat model

## Results
| Metric | Value |
|---|---|
| Time to roll back | TODO |
| Classification accuracy on test set | TODO |
| Test gate threshold | TODO |
| Time to rebuild Azure infra from scratch | TODO |

## Repository layout
See the folder tree in `docs/architecture.md`.

## Getting started
1. Run `scripts/bootstrap.ps1` to check prerequisites.
2. Create Dev, Test and Prod environments and set the GitHub variables listed in `docs/runbook.md`.
3. Export the solution from Dev with `scripts/export.ps1`.

## Docs
- [Architecture](docs/architecture.md)
- [Runbook](docs/runbook.md)
- [Threat model](docs/threat-model.md)
- [Decision records](docs/adr/)
