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

tools:
  bash: ["terraform:*", "git:*", "ls", "cat", "grep", "find"]

safe-outputs:
  add-comment:
    max: 1
    pull-requests: true

---

# Revisión de Infraestructura Terraform

Revisa los cambios de Terraform del Pull Request y publica un comentario con los hallazgos.

## Tareas

1. Analiza únicamente los cambios relevantes del Pull Request.
2. Identifica recursos creados, modificados o eliminados.
3. Evalúa riesgos de seguridad, networking, disponibilidad y costos.
4. Explica el impacto arquitectónico.
5. Proporciona recomendaciones concretas.

Cuando sea necesario, ejecuta `terraform fmt -check` y `terraform validate`.

No ejecutes `terraform plan` salvo que sea necesario para comprender los cambios.

## Restricciones

- No ejecutes `terraform apply`.
- No modifiques archivos.
- No modifiques infraestructura.
- No ejecutes comandos destructivos.
- No elimines archivos.
- No apruebes ni hagas merge del Pull Request.
- No expongas secretos, tokens ni credenciales.

## Formato

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