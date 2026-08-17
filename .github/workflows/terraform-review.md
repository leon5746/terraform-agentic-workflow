---
on:
  pull_request:
    types: [opened, synchronize, reopened]

engine:
  id: gemini
  model: gemini-3.5-flash-lite

max-turns: 5
max-turn-cache-misses: 5

permissions:
  contents: read
  pull-requests: read

mcp-servers:
  terraform:
    container: "hashicorp/terraform-mcp-server"

safe-outputs:
  add-comment:
    max: 1
    pull-requests: true
---

# Prueba Terraform MCP

Utiliza Terraform MCP Server para inspeccionar el proyecto Terraform.

No utilices comandos Git para obtener información del Pull Request.

Identifica únicamente:
- Los archivos Terraform existentes.
- Los recursos Terraform definidos.

No ejecutes terraform apply.

No modifiques archivos.

Devuelve un resumen breve.