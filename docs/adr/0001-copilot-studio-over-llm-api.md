# ADR 0001: Copilot Studio instead of a hosted LLM API

## Status
Accepted

## Context
Access to the Microsoft tenant (Azure, Power Automate, Power BI, Power Apps) is available. The goal is a DevOps portfolio piece.

## Decision
Use Copilot Studio for classification and drafting, and Power Platform ALM for delivery.

## Consequences
- Delivery uses solutions, managed packages, environment variables and pac CLI.
- Less container and Linux work; keep a small Azure component to cover it.
