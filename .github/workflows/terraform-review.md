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
    allowed:
      - "*"

safe-outputs:
  add-comment:
    max: 1
    pull-requests: true
---

# Revisión de Infraestructura Terraform

Analiza los cambios de Terraform realizados en el Pull Request.

Utiliza las herramientas disponibles de Terraform MCP Server para obtener
información relevante sobre la configuración y los cambios de infraestructura.

Identifica:

- Recursos creados.
- Recursos modificados.
- Recursos eliminados.
- Riesgos de seguridad.
- Riesgos de networking.
- Riesgos de disponibilidad.
- Posible impacto en costos.
- Impacto arquitectónico.

## Instrucciones

1. Analiza los archivos Terraform modificados por el Pull Request.
2. Utiliza las herramientas disponibles mediante Terraform MCP Server cuando
   necesites información adicional sobre Terraform.
3. Analiza los resultados obtenidos.
4. Identifica posibles riesgos.
5. Explica el impacto de los cambios.
6. Genera una recomendación para el equipo.

No ejecutes `terraform apply`.

No modifiques infraestructura.

No expongas secretos, tokens ni credenciales.

No realices cambios en los archivos del repositorio.

Publica un único comentario en el Pull Request con el siguiente formato:

### Revisión de Infraestructura Terraform

**Resumen**

Describe brevemente los cambios detectados.

**Recursos**

- Crear:
- Modificar:
- Eliminar:

**Riesgos**

- Seguridad:
- Networking:
- Disponibilidad:
- Costos:

**Impacto arquitectónico**

Describe los principales componentes afectados y el impacto
de los cambios en la arquitectura.

**Recomendación**

Proporciona una recomendación concreta antes de aprobar
el Pull Request.