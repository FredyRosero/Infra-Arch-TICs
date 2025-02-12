# Architecture Link

- Sample: [http://midiagrama.com/view/?id=1516](http://midiagrama.com/view/?id=1516)

# WAF CHECKLIST

## Operational Excellence

| ID     | Description                                                                    | Yes/No | Justification                                                                                                                                                                                            |
| ------ | ------------------------------------------------------------------------------ | ------ | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| OPS 1  | How do you determine what your priorities are?                                 | True   | The priorities are given by the business needs, which are infrastructure and data analysis. These two make the most part of the company's business Activity which is crucial costwise.                   |
| OPS 2  | How do you structure your organization to support your business outcomes?      | True   | The organization is organized to check into results and to keep on creating continuosly, always checking on the things that are already done using monitoring tools and authentication defined by roles. |
| OPS 3  | How does your organizational culture support your business outcomes?           | False  |                                                                                                                                                                                                          |
| OPS 4  | How do you implement observability in your workload?                           | True   | We use monitoring services such as Cloudwatch, CloudTrail, Managed Grafana and Managed service for Prometeus. These services allow us to check on the systems constantly.                                |
| OPS 5  | How do you reduce defects, ease remediation, and improve flow into production? | True   | The usage of the AWS step functions allows our system to have automation into workflows and recovery systems to remediate things.                                                                        |
| OPS 6  | How do you mitigate deployment risks?                                          | False  |                                                                                                                                                                                                          |
| OPS 7  | How do you know that you are ready to support a workload?                      | False  |                                                                                                                                                                                                          |
| OPS 8  | How do you utilize workload observability in your organization?                | True   | AWS cloudwatch and AWS x-ray permit the monitoring of our cloud services.                                                                                                                                |
| OPS 9  | How do you understand the health of your operations?                           | False  |                                                                                                                                                                                                          |
| OPS 10 | How do you manage workload and operations events?                              | True   | AWS cloudwatch and AWS x-ray permit the monitoring to take action on possible events that may occur.                                                                                                     |
| OPS 11 | How do you evolve operations?                                                  | False  |                                                                                                                                                                                                          |

## Security

| ID     | Description                                                                                                                               | Yes/No | Justification                                                                                                    |
| ------ | ----------------------------------------------------------------------------------------------------------------------------------------- | ------ | ---------------------------------------------------------------------------------------------------------------- |
| SEC 1  | How do you securely operate your workload?                                                                                                | True   | Every service that uses resources must be authorized by a proper user authentication.                            |
| SEC 2  | How do you manage authentication for people and machines?                                                                                 | True   | AWS service for user auth in the system such as AWS IAM and AWS KMS.                                             |
| SEC 3  | How do you manage permissions for people and machines?                                                                                    | True   | AWS service for authorization of access to resources required by users such as AWS IAM.                          |
| SEC 4  | How do you detect and investigate security events?                                                                                        | True   | AWS service for monitoring the system, focusing in the cloud events.                                             |
| SEC 5  | How do you protect your network resources?                                                                                                | True   | AWS security hub service to cluster of services and the API gateway that filters the inbound traffic.            |
| SEC 6  | How do you protect your compute resources?                                                                                                | True   | Authentication and authorization services to access the machines and firewall and AWS shield protection.         |
| SEC 7  | How do you classify your data?                                                                                                            | True   | Healthcare data is classified with Health Lake.                                                                  |
| SEC 8  | How do you protect your data at rest?                                                                                                     | True   | The data storage services are configured to protect the static data.                                             |
| SEC 9  | How do you protect your data in transit?                                                                                                  | True   | The end points of traffic where data flows are closely watched and the data flow is restricted by authorization. |
| SEC 10 | How do you anticipate, respond to, and recover from incidents?                                                                            | False  |                                                                                                                  |
| SEC 11 | How do you incorporate and validate the security properties of applications throughout the design, development, and deployment lifecycle? | False  | Testing, goblin.                                                                                                 |

## Reliability

| ID     | Description                                                                               | Yes/No | Justification                                                                                                                                                 |
| ------ | ----------------------------------------------------------------------------------------- | ------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| REL 1  | How do you manage Service Quotas and constraints?                                         | False  |                                                                                                                                                               |
| REL 2  | How do you plan your network topology?                                                    | False  |                                                                                                                                                               |
| REL 3  | How do you design your workload service architecture?                                     | True   | The workload is designed depending on business needs, such as data intake, digest and information usage for different needs.                                  |
| REL 4  | How do you design interactions in a distributed system to prevent failures?               | False  |                                                                                                                                                               |
| REL 5  | How do you design interactions in a distributed system to mitigate or withstand failures? | True   | The redundancy is an important factor to manage distributed systems that withstand failures. The services are equipped with redundancy systems for instances. |
| REL 6  | How do you monitor workload resources?                                                    | True   | With workload monitoring services provided by AWS, to see in real time the process of the business technological need.                                        |
| REL 7  | How do you design your workload to adapt to changes in demand?                            | False  |                                                                                                                                                               |
| REL 8  | How do you implement change?                                                              | False  |                                                                                                                                                               |
| REL 9  | How do you back up data?                                                                  | True   | With multiple instances of data repositories to handle the data multiple times.                                                                               |
| REL 10 | How do you use fault isolation to protect your workload?                                  | True   | When there are fails that affect a service, it can rearrange itself to relaunch an instance and prevent future problems with other services.                  |
| REL 11 | How do you design your workload to withstand component failures?                          | True   | When a component fails, a new component that makes the same work replaces it while the service resets and gets ready again.                                   |
| REL 12 | How do you test reliability?                                                              | False  |                                                                                                                                                               |
| REL 13 | How do you plan for disaster recovery (DR)?                                               | False  |                                                                                                                                                               |

## Performance Efficiency

| ID     | Description                                                                                             | Yes/No | Justification                                                                                                              |
| ------ | ------------------------------------------------------------------------------------------------------- | ------ | -------------------------------------------------------------------------------------------------------------------------- |
| PERF 1 | How do you select appropriate cloud resources and architecture for your workload?                       | True   | The appropriate resources came by finding examples of architectures that are components of ours or are a little like ours. |
| PERF 2 | How do you select and use compute resources in your workload?                                           | False  | Load balancer needed.                                                                                                      |
| PERF 3 | How do you store, manage, and access data in your workload?                                             | True   | The data is stored in buckets, processed and managed by AWS Glue and Amazon Redshift.                                      |
| PERF 4 | How do you select and configure networking resources in your workload?                                  | False  | Load balancer.                                                                                                             |
| PERF 5 | How do your organizational practices and culture contribute to performance efficiency in your workload? | False  |                                                                                                                            |

## Cost Optimization

| ID      | Description                                                                  | Yes/No | Justification                                                                                                       |
| ------- | ---------------------------------------------------------------------------- | ------ | ------------------------------------------------------------------------------------------------------------------- |
| COST 1  | How do you implement cloud financial management?                             | False  |                                                                                                                     |
| COST 2  | How do you govern usage?                                                     | True   | With limits on resource consumption of different services that may require more or less resource using AWS Budgets. |
| COST 3  | How do you monitor your cost and usage?                                      | True   | With the service AWS Cost Explorer and AWS Spot Instance.                                                           |
| COST 4  | How do you decommission resources?                                           | True   | They are decommissioned with the service AWS Spot Instance, that restricts the resource use.                        |
| COST 5  | How do you evaluate cost when you select services?                           | False  |                                                                                                                     |
| COST 6  | How do you meet cost targets when you select resource type, size and number? | False  |                                                                                                                     |
| COST 7  | How do you use pricing models to reduce cost?                                | False  |                                                                                                                     |
| COST 8  | How do you plan for data transfer charges?                                   | False  |                                                                                                                     |
| COST 9  | How do you manage demand, and supply resources?                              | False  |                                                                                                                     |
| COST 10 | How do you evaluate new services?                                            | False  |                                                                                                                     |
| COST 11 | How do you evaluate the cost of effort?                                      | False  |                                                                                                                     |

## Sustainability

| ID    | Description                                                                                                      | Yes/No | Justification |
| ----- | ---------------------------------------------------------------------------------------------------------------- | ------ | ------------- |
| SUS 1 | How do you select Regions for your workload?                                                                     | False  |               |
| SUS 2 | How do you align cloud resources to your demand?                                                                 | False  |               |
| SUS 3 | How do you take advantage of software and architecture patterns to support your sustainability goals?            | False  |               |
| SUS 4 | How do you take advantage of data management policies and patterns to support your sustainability goals?         | False  |               |
| SUS 5 | How do you select and use cloud hardware and services in your architecture to support your sustainability goals? | False  |               |
| SUS 6 | How do your organizational processes support your sustainability goals?                                          | False  |               |
