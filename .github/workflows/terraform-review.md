---
on:
  pull_request:
    types: [opened, synchronize, reopened]

engine:
  id: gemini

model: gemini-3.5-flash-lite

max-turns: 3
max-turn-cache-misses: 5

permissions:
  contents: read
  pull-requests: read

safe-outputs:
  add-comment:
    max: 1
    pull-requests: true

---

# Revisión de Infraestructura Terraform

Analiza los cambios de Terraform del Pull Request.

Identifica:

- Recursos creados, modificados o eliminados.
- Riesgos de seguridad.
- Riesgos de networking.
- Riesgos de disponibilidad.
- Impacto en costos.
- Impacto arquitectónico.

No ejecutes comandos ni modifiques archivos.

No ejecutes `terraform apply`.

No expongas secretos, tokens ni credenciales.

Publica un comentario en el Pull Request con:

### Revisión de Infraestructura Terraform

**Resumen**

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

**Recomendación**