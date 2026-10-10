# Protocol Flows

How identity protocols move information between the user, the identity provider (IdP), the application (service provider) and the resource, using National Identity Management Agency (NIMA) as the example.

## Overview: four boxes
Authentication proves who the user is. Authorization decides what they can reach.

```mermaid
flowchart LR
  U[User] -->|1. Sign in request| A[Application]
  A -->|2. Redirect to prove identity| I[Identity Provider]
  U -->|3. AUTHENTICATION: credentials| I
  I -->|4. Token or assertion| A
  A -->|5. AUTHORIZATION: token presented| R[Resource]
```

## OAuth 2.0 (authorization: delegated access)
Purpose: lets an app access a resource on a user's behalf without seeing their password.

```mermaid
sequenceDiagram
  participant U as User
  participant C as Client App
  participant AS as Authorization Server (IdP)
  participant R as Resource Server
  U->>C: Request a feature that needs access
  C->>U: Redirect to authorization server (with scope)
  U->>AS: Sign in and consent
  AS->>C: Authorization code
  C->>AS: Exchange code
  AS->>C: ACCESS TOKEN
  C->>R: API call with access token
  R->>C: Requested data
```

## OIDC (authentication on top of OAuth 2.0)
Purpose: tells the app who the user is. It adds an ID token to the OAuth flow.

```mermaid
sequenceDiagram
  participant U as User (browser)
  participant A as App (SP)
  participant I as Identity Provider
  participant R as Resource (UserInfo/API)
  U->>A: Open app
  A->>U: Redirect to IdP (scope = openid)
  U->>I: Sign in (authentication)
  I->>A: Authorization code via redirect
  A->>I: Exchange code
  I->>A: ID TOKEN + access token
  A->>R: Call with access token
  R->>A: User profile data
```

## SAML (single sign-on with assertions)
Purpose: lets a user sign in once at the IdP and be trusted by the SP through a signed assertion passed via the browser.

```mermaid
sequenceDiagram
  participant U as User
  participant B as Browser
  participant SP as Service Provider (app)
  participant I as Identity Provider
  U->>B: Open app
  B->>SP: Request access
  SP->>B: Redirect with authentication request
  B->>I: Authentication request
  U->>I: Sign in
  I->>B: Signed SAML ASSERTION
  B->>SP: Post assertion
  SP->>U: Access granted
```

## SCIM (provisioning: managing the account lifecycle)
Purpose: automatically creates, updates and removes user accounts in apps. It handles accounts, not logins.

```mermaid
sequenceDiagram
  participant C as SCIM Client (IdP)
  participant S as SCIM Server (app)
  participant R as Resource (User / Group)
  C->>S: POST /Users (Create)
  S->>R: New account created
  C->>S: GET /Users/id (Read)
  C->>S: PATCH or PUT /Users/id (Update)
  C->>S: DELETE /Users/id (Delete or deactivate)
```

## How this supports the lab
NIMA's directory will hold the identities. SAML, OIDC and OAuth control how those identities reach apps, and SCIM keeps accounts in step as people join, change roles and leave.
