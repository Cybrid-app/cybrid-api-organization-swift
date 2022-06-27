# Swift5 API client for CybridApiOrganizationSwift

# Welcome

Welcome to the Cybrid platform; enabling turnkey crypto banking services!

In these documents, you will find information on the operations provided by our platform, as well as details on how our REST API operates more generally.

Our complete set of APIs allows you to manage all your resources: your Organization, your banks and your identities. The complete set of APIs can be found on the following pages:

| API                                                            | Description                  |
|----------------------------------------------------------------|------------------------------|
| [Organization API](<api_platform_organization_swagger_ui_url>) | APIs to manage organizations |
| [Bank API](<api_platform_bank_swagger_ui_url>)                 | APIs to manage banks         |
| [Identities API](<api_idp_swagger_ui_url>)                     | APIs to manage identities    |

When you're ready, [request access](https://www.cybrid.xyz/access) to your Dashboard to view and administer your Organization. Once you've logged in, you can begin creating Banks, either for sandbox or production usage, and start enabling your customers to leverage DeFi and web3 with confidence.

If you have any questions, please contact [Support](mailto:support@cybrid.app) at any time so that we can help.

## Authentication

The Cybrid Platform uses OAuth 2.0 Bearer Tokens to authenticate requests to the platform. Credentials to create Organization and Bank tokens can be generated via your Dashboard ([request access](https://www.cybrid.xyz/access)).

An Organization Token applies broadly to the whole Organization and all of its Banks, whereas, a Bank Token is specific to an individual Bank.

Both Organization and Bank tokens can be created using the OAuth Client Credential Grant flow. Each Organization and Bank has its own unique Client ID and Secret that allows for machine-to-machine authentication.

**Never share your Client ID or Secret publicly or in your source code repository**

Your Client ID and Secret can be exchanged for a time-limited Bearer Token by interacting with the Cybrid Identity Provider or through interacting with the **Authorize** button in this document:

```
curl -X POST <api_idp_url>/oauth/token -d '{
    \"grant_type\": \"client_credentials\",
    \"client_id\": \"<Your Client ID>\",
    \"client_secret\": \"<Your Secret>\",
    \"scope\": \"<Your requested scopes -- space separated>\"
  }' -H \"Content-Type: application/json\"
```

## Scopes

The Cybrid platform supports the use of scopes to control the level of access a token is limited to. Scopes do not grant access to resources; instead, they provide limits, in support of the least privilege principal.

The following scopes are available on the platform and can be requested when generating either an Organization or a Bank token. Generally speaking, the _Read_ scope is required to read and list resources, the _Write_ scope is required to update a resource and the _Execute_ scope is required to create a resource.

| Resource      | Read scope         | Write scope          | Execute scope     | Token Type         |
|---------------|--------------------|----------------------|-------------------|--------------------|
| Organizations | organizations:read | organizations:write  |                   | Organization/ Bank |
| Banks         | banks:read         | banks:write          | banks:execute     | Organization/ Bank |
| Customers     | customers:read     | customers:write      | customers:execute | Bank               |
| Assets        | prices:read        |                      |                   | Bank               |
| Accounts      | accounts:read      |                      | accounts:execute  | Bank               |
| Prices        | prices:read        |                      |                   | Bank               |
| Symbols       | prices:read        |                      |                   | Bank               |
| Quotes        | quotes:read        |                      | quotes:execute    | Bank               |
| Trades        | trades:read        |                      | trades:execute    | Bank               |

## Organizations

An Organization is meant to model the organization partnering with Cybrid to use our platform.

An Organization does not directly interact with customers. Instead, an Organization has one or more banks, which encompass the financial service offerings of the platform.

## Banks

A Bank is owned by an Organization and can be thought of as an environment or container for Customers and product offerings. An example of a Bank would be your customer facing banking website, or an internal staging environment for testing and integration.

An Organization can have multiple banks, in sandbox or production environments. A sandbox Bank will be backed by stubbed data and process flows. For instance, identity record and funding source processes will be simulated rather than performed.

## Customers

Customers represent your banking users on the platform. At present, we offer support for Individuals as Customers.

Customers must be verified in our system before they can play any part on the platform. See the Identity Records section for more details on how a customer can be verified.

Customers must also have an account to be able to transact. See the Accounts APIs for more details on setting up accounts for the customer.


## Overview
This API client was generated by the [OpenAPI Generator](https://openapi-generator.tech) project.  By using the [openapi-spec](https://github.com/OAI/OpenAPI-Specification) from a remote server, you can easily generate an API client.

- API version: v0.0.0
- Package version: 
- Build package: org.openapitools.codegen.languages.Swift5ClientCodegen

## Installation

### Carthage

Run `carthage update`

### CocoaPods

Run `pod install`

## Documentation for API Endpoints

All URIs are relative to *http://api-organization.cybrid.local*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*InternalOrganizationsAPI* | [**internalCreateOrganization**](docs/InternalOrganizationsAPI.md#internalcreateorganization) | **POST** /api/internal/organizations | Create organization
*OrganizationsAPI* | [**getOrganization**](docs/OrganizationsAPI.md#getorganization) | **GET** /api/organizations/{organization_guid} | Get organization
*OrganizationsAPI* | [**updateOrganization**](docs/OrganizationsAPI.md#updateorganization) | **PATCH** /api/organizations/{organization_guid} | Patch organization


## Documentation For Models

 - [ErrorResponseOrganizationModel](docs/ErrorResponseOrganizationModel.md)
 - [InternalPostOrganizationOrganizationModel](docs/InternalPostOrganizationOrganizationModel.md)
 - [OrganizationOrganizationModel](docs/OrganizationOrganizationModel.md)
 - [PatchOrganizationOrganizationModel](docs/PatchOrganizationOrganizationModel.md)


## Documentation For Authorization


## BearerAuth

- **Type**: HTTP basic authentication

## oauth2

- **Type**: OAuth
- **Flow**: application
- **Authorization URL**: 
- **Scopes**: 
 - **organizations:write**: organizations write
 - **organizations:read**: organizations read


## Author

support@cybrid.app

