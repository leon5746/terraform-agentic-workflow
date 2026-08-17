---
on:
  pull_request:
    types: [opened, synchronize, reopened]

engine:
  id: gemini
  model: gemini-3.5-flash-lite

max-turns: 2
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

# Revisión de Infraestructura Terraform

Analiza únicamente los cambios Terraform del Pull Request.

Utiliza Terraform MCP Server para revisar la configuración.

Identifica:
- Recursos modificados.
- Posibles riesgos de seguridad.

No ejecutes terraform apply.

Publica un único comentario con los resultados.