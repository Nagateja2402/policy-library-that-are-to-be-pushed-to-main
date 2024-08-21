# Prewritten Terraform policy libraries in Sentinel

This library provides prescriptive Terraform policies written in Sentinel that can be used to establish secure Terraform configuration to comply to [AWS FSBP standards](https://docs.aws.amazon.com/securityhub/latest/userguide/fsbp-standard.html).

## Resources
- Original RFC: https://go.hashi.co/rfc/tf-851

## Testing policies

To test these policies, please do the following:

- Download the Sentinel CLI from the [Sentinel Downloads](https://docs.hashicorp.com/sentinel/install) page.
- Unzip the zip file and place the sentinel binary in your path.
- Clone this repository to your local machine.
- Run `make tests` to test all policies. These policies will run against mocks that are present in `policies/test/*/mocks` directory.
- If you just want to test a single policy, run `make test`

## Development

We have the following `make` targets to facilitate development and testing of these policies

```bash
make fmt # Format *.sentinel files in the codebase.
make tests # Runs sentinel unit tests against all the policies.
make generate-policy name=test-policy # Creates a boilerplate template according to best practices to get started with authoring policies
```

## Note :- 

### Policies supported via Sentinel

The following FSBP standards have equivalent Sentinel policies written for them. These policies get enforced between the `plan` and `apply` phase whenever a run gets queued in TFC/TFE.

### Policies supported via Terraform configs

Sentinel policies are only enforced in the context of a given Terraform run. The following FSBP standards can't be implemented directly using Sentinel because the evaluation result of such policies depends on the remote state of resources present in AWS. 
To remediate such violations, we added the following terraform configs which when applied guarantees compliance against a specific FSBP standard.

### Policies that are not implemented because it requires tfconfig/v2 resources

The policies that require tfconfig/v2 resources can only be implemented partially using Sentinel. Hence the policies that are mentioned below will not be implemented.

| Policy                                               | Reason                                                                                                                                                              |
|------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| [[Redshift.4] Amazon Redshift clusters should have audit logging enabled](https://docs.aws.amazon.com/securityhub/latest/userguide/redshift-controls.html#redshift-4)                     |   The redshift cluster should be referenced to the resource of type aws_redshift_logging to enable audit logging. |
| [[Redshift.15] Redshift security groups should allow ingress on the cluster port only from restricted origins](https://docs.aws.amazon.com/securityhub/latest/userguide/redshift-controls.html#redshift-15)                     |   The redshift cluster attribute vpc_security_group_ids should be referenced to the VPC Security Group resources. |                                                                                                                              

### Unsupported policies

The following policies are not supported because they currently cant be implemented using Sentinel policies or manually applying terraform configs.
