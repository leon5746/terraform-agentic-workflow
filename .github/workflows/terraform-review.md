---
on:
  pull_request:
    types: [opened, synchronize, reopened]

engine:
  id: gemini
  
model: gemini-2.5-flash

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

Analiza los cambios de Terraform introducidos por el Pull Request.

## Objetivos

- Revisar los archivos de Terraform modificados por el Pull Request.
- Validar la configuración de Terraform.
- Analizar el plan de Terraform.
- Identificar posibles riesgos de seguridad, networking, disponibilidad y costos.
- Explicar el impacto de los cambios propuestos en la infraestructura.
- Proporcionar recomendaciones al equipo de desarrollo.

## Instrucciones

1. Analiza los archivos de Terraform modificados por el Pull Request.
2. Ejecuta las validaciones necesarias de Terraform.
3. Ejecuta `terraform fmt -check` cuando sea posible.
4. Ejecuta `terraform validate` cuando sea posible.
5. Genera un plan de Terraform cuando sea posible.
6. Analiza los recursos que serán creados, modificados o eliminados.
7. Identifica configuraciones que puedan representar un riesgo.
8. Explica el impacto arquitectónico de los cambios.
9. Proporciona recomendaciones cuando detectes posibles riesgos.
10. Publica el análisis como comentario en el Pull Request.

## Restricciones de seguridad

- No ejecutes `terraform apply`.
- No modifiques infraestructura de producción.
- No expongas credenciales, tokens o secretos.
- No apruebes ni hagas merge del Pull Request.
- No realices cambios en el repositorio.
- No ejecutes comandos destructivos.
- No elimines archivos.
- No modifiques archivos de Terraform durante la revisión.

## Formato de salida

Genera el resultado utilizando la siguiente estructura:

### Revisión de Infraestructura Terraform

**Resumen**

Describe brevemente qué cambios introduce el Pull Request.

**Recursos**

- Recursos a crear:
- Recursos a modificar:
- Recursos a eliminar:

**Validaciones**

- Terraform format:
- Terraform validate:
- Terraform plan:

**Riesgos potenciales**

- Seguridad:
- Networking:
- Disponibilidad:
- Costos:

**Impacto en la arquitectura**

Describe los principales componentes afectados y cómo los cambios modifican la arquitectura existente.

**Recomendación**

Proporciona una recomendación concreta para el equipo de desarrollo.