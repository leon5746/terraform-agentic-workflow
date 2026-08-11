---
name: Revisión de Infraestructura Terraform
description: Analizar cambios de infraestructura Terraform
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
3. Genera un plan de Terraform cuando sea posible.
4. Analiza los recursos que serán creados, modificados o eliminados.
5. Identifica configuraciones que puedan representar un riesgo.
6. Explica el impacto arquitectónico de los cambios.
7. Proporciona recomendaciones cuando detectes posibles riesgos.
8. Publica el análisis como comentario en el Pull Request.

## Restricciones de seguridad

- No ejecutes `terraform apply`.
- No modifiques infraestructura de producción.
- No expongas credenciales, tokens o secretos.
- No apruebes ni hagas merge del Pull Request.
- No realices cambios en el repositorio salvo que estén explícitamente autorizados.

## Formato de salida

Genera el resultado utilizando la siguiente estructura:

### Revisión de Infraestructura Terraform

**Recursos**
- Recursos a crear:
- Recursos a modificar:
- Recursos a eliminar:

**Riesgos potenciales**
- Seguridad:
- Networking:
- Disponibilidad:
- Costos:

**Impacto en la arquitectura**
- Describe los principales componentes afectados.

**Recomendación**
- Proporciona una recomendación concreta para el equipo de desarrollo.