# Threat model

| Threat | Impact | Mitigation |
|---|---|---|
| Prompt injection via email content | Agent manipulated into unwanted actions | Drafts only; no send, forward or delete actions; minimal connector permissions |
| Sensitive data exposure | Email content leaves intended boundary | Review data loss prevention policies; limit connectors; redact where possible |
| Over-privileged CI identity | Pipeline abused | Least-privilege app registration; federated credentials; protected environments |
| Secret leakage in repo | Credential compromise | gitleaks in CI; no secrets in settings files; Key Vault |
| Bad agent change reaches Prod | Misclassification at scale | Test gate; approval; fast rollback |

## What the agent must never do
- Send mail automatically
- Forward, delete or move mail based on email text
