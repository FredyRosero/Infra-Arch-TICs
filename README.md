# Arquitectura de infraestructura y gobierno de tics - 2024-2

Sitio: https://sites.google.com/unal.edu.co/infra-arch-and-tic-gov/

- Fecha límite: 27-11-24 5:59pm
    - Asunto: [Infra & Arch] Tarea 01
- Contenido caso oauth 2.0 correo UNAL
    - Modelo BPMN svg/png
    - Modelo C4 (contexto, contenedores, componentes) svg/png

```plantuml
@startuml
node "End User" as EndUser
node "Amazon API Gateway" as APIGateway
node "Amazon ECS (Fargate)" as ECSFargate
database "Amazon RDS" as RDS
storage "Amazon S3" as S3
node "AWS HealthLake" as HealthLake

EndUser -> APIGateway : Request
APIGateway -> ECSFargate : Forward Request
ECSFargate -> RDS : Database Queries
ECSFargate -> HealthLake : API Calls
ECSFargate -> S3 : Store/Fetch Data
@enduml
```