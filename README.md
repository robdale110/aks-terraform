Use the following command to list subscriptions

`az account list`

Make a note of subscription Id of subscription to use.

Now create a Service Principal using the following command, replacing the subscription Id from above.

`az ad sp create-for-rbac --role="Contributor" --scopes="/subscriptions/<SUBSCRIPTION_ID>"`

This will output JSON in the following format.

```json
{
  "appId": "00000000-0000-0000-0000-000000000000",
  "displayName": "azure-cli-2021-02-13-20-01-37",
  "name": "http://azure-cli-2021-02-13-20-01-37",
  "password": "0000-0000-0000-0000-000000000000",
  "tenant": "00000000-0000-0000-0000-000000000000"
}
```

Make a note of the appId, password and tenant. Then export the following environment variables using these values.

`export ARM_CLIENT_ID=<insert appId from above>`

`export ARM_SUBSCRIPTION_ID=<insert subscription id>`

`export ARM_TENANT_ID=<insert tenant from above>`

`export ARM_CLIENT_SECRET=<insert password from above>`