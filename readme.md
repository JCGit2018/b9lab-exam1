# Toll Roads Network

## Background
The concept of interoperability in toll collection essentially means that one customer(driver), with one transponder 
account, can seamlessly use the toll facilities of many toll road operators.  Well-known examples include E-ZPass, Fastrak,
and SunPass in the USA. This topic comes with some challenges–challenges that industry groups have been working to overcome
or minimize since the transponder was first introduced in the late 1980’s.  Today, old issues still exist and new ones are 
being created as operations evolve.
 
I found the article “Why We Don’t Have The Unified One Single Electronic Transponder System?” that described the problem. 
http://thepavlovictoday.com/afterimage-review/still-dont-unified-single-electronic-toll-collection-system/

## Problem
Every toll road operator has its own requirements and legislative directives. The different characteristics of toll 
facilities (roads, bridges, tunnels, and so on) complicate the landscape. Plus, the cost of doing business varies widely 
in the transport industry. Every toll road operator calculates transaction processing costs differently.  These things 
combine to be a significant source of difficulty in negotiating agreements. Centralized consortiums require a single set
of rules to operate, and a national consortium of all toll agencies will be even harder to wrangle than the current 
regional collectives. Interoperability needs to support the vast uniqueness within the industry and make participation easy
for toll road operators of all shapes and sizes.

There are several methods of toll collection nowadays.
- Toll booth. Toll collection began with cash transactions at the toll booth. With cash, the customer physically hands money
to the  toll collector for the transaction. Both sides participate and, more importantly, they agree on the terms of the transaction.
The customer transacts directly with the toll agency. This type of transaction is ideal for everyone involved, 
except for one problem—it’s very slow.

- Automated toll collection system and Transponder. It's faster. It’s introduced a great deal of operational complexity.
It created the need for a customer account, and it took away the active participation and agreement that happens in a cash 
transaction. Toll violations notwithstanding, the transponder is essentially the root of operational complexity and many 
customer service issues in toll collection. The transponder also presents some of the largest hurdles for interoperability.

## Distributed Solution
A truly peer-to-peer system for interoperability in electronic toll collection would allow payments to be sent directly from 
a customer(driver) to a toll road operator without going through a central party. The benefits and simplicity of an in-person, 
cash toll transaction can be realized in a distributed network that allows a customer(driver) to transact directly with 
any toll operator, anywhere.  

The solution is a peer-to-peer network built on blockchain technology. The inherent structure of the model provides a 
cryptographically secure peer-to-peer network for recording transactions and tracking digital assets and identities in shared, 
replicated ledgers, such that both the toll road operator and the customer are mutually protected from double-billing, 
double-spending, fraud, and external malicious attacks on the system. 

The ecosystem provides several distributed sets of information that would be shared by the participants: 
  - a toll transaction ledger 
  - an asset inventory (unified register of customers(drivers), license plates, and transponders)

Toll road operators certify suppliers who list their assets—transponders, license plates, and other vehicle identifiers—in the shared inventory. 
Customers(drivers) use a digital wallet to store payment instruments, hold prepaid balances, and list their certified assets. 
When a customer uses a toll facility, the toll operator initiates a transaction directly with the customer’s electronic wallet. 
The customer participates in the transaction by approving and thus cryptographically signing the transaction.

By using a shared blockchain architecture, every participant in the system has direct access to the data they need. 
The need for agency-to-agency data transfers and agency-to-agency financial exchanges for interoperable transactions is eliminated. 
Every customer can transact directly with every toll road operator.

### Ecosystem

#### Participants
Toll road operators and suppliers register and attach to the network by acting as nodes. 
Customers(drivers) register and attach to the network through an electronic wallet, much like the Coinbase bitcoin wallet or others.
All participants register through a certification process and are given unique, private digital keys. 

#### Asset Registration
Suppliers(Vehicle regulator and others) and toll road operators add their assets to the system as they are introduced into circulation. 
For example, a transponder supplier would add sets of inventory to the blockchain as they are sold to customers. Similarly, as suppliers, 
Departments of Motor Vehicles would add license plate and registered owner information to the blockchain. 
Customers use an electronic wallet to store payment instruments, transponder IDs, license plates, and any other potential asset information. 
The architecture allows for anonymous customers through the private key mechanism, so personal data such as address, phone number, 
etc. are not necessarily required.

#### Transactions
Toll transactions occur in the lane as they do today. The toll operator reads a transponder or takes a picture of a license plate.
Instead of taking the payment from a customer(driver)’s prepaid transponder account, the toll road operator connects directly with 
the customer’s electronic wallet and initiates a transaction. The customer then approves the transaction and the payment is processed. 
Transaction approval could be addressed in various ways: customers could manually approve transactions with a button-push; auto-approve
transactions from their local agency; auto-approve transactions based on GPS location from a mobile wallet; and auto-approve 
transactions for certain days and times based on a commute schedule. There are many possibilities for smart and efficient solutions 
to create a win-win situation for the both participants.

All toll road operators have access to the entire set of assets and wallets through the blockchain. They also have a real-time connection 
to what is known as the transponder and license plate validation lists and so on. The blockchain contains the complete chain-of-custody 
for all assets. The blockchain also provides access to a customer’s wallet, which contains the current status of payment instruments.

### Implementing Ecosystem
From architecture design of the ecosystem  there are contracts like VehicleRegulator, Driver, TollRoadOperator and others.
The high-level design of VehicleRegulator.sol is available in my Git repository.
