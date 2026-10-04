# Runbook

## GitHub configuration
- Environments: `dev`, `test`, `prod` (required reviewers on `prod`), `infra`
- Variables: `DEV_ENV_URL`, `TEST_ENV_URL`, `PROD_ENV_URL`, `PP_APP_ID`, `PP_TENANT_ID`

## Deploy
Merge to `main`; the Deploy workflow builds, deploys to Test, runs tests, waits for approval, deploys to Prod.

## Roll back
TODO: redeploy the previous release tag's managed solution. Record the measured time here.

## Rotate credentials
TODO: steps for the Entra app registration / federated credential and connection owners.

## Restore
TODO: how to restore the Dataverse log and redeploy the solution.

## Alerts
| Alert | Meaning | First action |
|---|---|---|
| TODO | TODO | TODO |
