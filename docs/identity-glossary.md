# Identity Glossary

Core identity terms used in the Funsho Technologies lab, defined in my own words.

## Authentication
This is the process of proving that you are who you say you are. It answers the question, "who are you?"

**Funsho example:** An HR officer signs in to her work account with her password before she can reach anything on the network.

## Authorization
This is the process of determining what an authenticated identity can access or is allowed to do. It is based on roles, permissions and attributes.

**Funsho example:** Once signed in, the HR officer can open the staff list, but only Finance staff can open the Payroll & Finance drive.

## Directory
This is a structured repository that stores information about objects in a network, such as users, devices, groups, policies & applications.

**Funsho example:** Funsho's directory holds every employee account, the HR, Finance, IT and Sales groups, and the laptops they use.

## Identity Provider (IdP)
An IdP creates, maintains & manages identity information, and offers authN, authZ & auditing services.

**Funsho example:** Funsho's central directory service confirms who an employee is whenever they try to open a company app.

## Service Provider (SP)
An SP is the application or resource a user is trying to reach. It trusts the IdP to confirm who the user is, then grants access based on that.

**Funsho example:** The Payroll & Finance drive is the SP. It relies on Funsho's IdP to vouch for each person who tries to open it.

## RBAC (Role-Based Access Control)
This explains how access to a particular resource is tied to one's role in a firm.

- **Principal:** the user, group or app asking for access
- **Role definition:** the list of things a role is allowed to do
- **Scope:** where the role applies (e.g. one resource, one folder, or everything)

**Funsho example:** Everyone in the Finance group (principals) gets the "Payroll Reader" role (role definition) on the Payroll & Finance drive (scope).

## ABAC (Attribute-Based Access Control)
Access is decided by attributes, such as a person's department, location, device or the time of day, rather than just their role. It's more flexible than RBAC because the rules can combine several conditions.

**Funsho example:** A Finance employee can open payroll only from a company laptop during working hours.

**RBAC vs ABAC:** RBAC asks "what is your job?" ABAC asks "what is true about you and this request right now?"

## Least Privilege
The principle of least privilege ensures that you only have access to what you need to carry out a task, and nothing more.

**Funsho example:** An HR intern can read the staff list but can't edit payroll records.
