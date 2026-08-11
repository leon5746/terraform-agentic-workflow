---
on:
  pull_request:
    types: [opened, synchronize, reopened]

engine:
  id: gemini

model: gemini-3.5-flash-lite

max-turns: 5
max-turn-cache-misses: 10

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

Analiza los cambios de Terraform del Pull Request y publica una revisión técnica como comentario.

## Tareas

1. Identifica los archivos y recursos Terraform modificados.
2. Ejecuta, cuando sea posible:
   - `terraform fmt -check`
   - `terraform validate`
   - `terraform plan`
3. Identifica recursos creados, modificados y eliminados.
4. Evalúa riesgos de:
   - Seguridad
   - Networking
   - Disponibilidad
   - Costos
5. Explica el impacto arquitectónico.
6. Proporciona recomendaciones concretas.

## Restricciones

- Nunca ejecutes `terraform apply`.
- No modifiques archivos ni infraestructura.
- No ejecutes comandos destructivos.
- No elimines archivos.
- No apruebes ni hagas merge del Pull Request.
- Nunca expongas secretos, tokens o credenciales.

## Formato

### Revisión de Infraestructura Terraform

**Resumen**
- Describe brevemente los cambios.

**Recursos**
- Crear:
- Modificar:
- Eliminar:

**Validaciones**
- Format:
- Validate:
- Plan:

**Riesgos**
- Seguridad:
- Networking:
- Disponibilidad:
- Costos:

**Impacto arquitectónico**
- Describe los componentes afectados.

**Recomendación**
- Proporciona una recomendación concreta.