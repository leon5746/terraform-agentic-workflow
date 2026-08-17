---
on:
  pull_request:
    types: [opened, synchronize, reopened]

engine:
  id: gemini
  model: gemini-3.5-flash-lite

max-turns: 10
max-turn-cache-misses: 10

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

# Revisión de Infraestructura Terraform

Analiza únicamente los cambios Terraform del Pull Request.

Utiliza Terraform MCP Server para revisar la configuración.

Identifica:
- Recursos modificados.
- Posibles riesgos de seguridad.

No ejecutes terraform apply.

Publica un único comentario con los resultados.