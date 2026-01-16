# MyDAO

This project implements a Decentralized Autonomous Organization (DAO) using the Foundry framework and OpenZeppelin Contracts. The DAO allows token holders to create and vote on proposals, which are executed after a timelock period.

## Core Components

The DAO is comprised of four main smart contracts:

*   **`GovToken.sol`**: An ERC20 governance token used for voting.
*   **`TimeLock.sol`**: A Timelock contract that enforces a delay on the execution of proposals.
*   **`govnor.sol`**: The Governor contract that manages the proposal and voting process.
*   **`box.sol`**: A simple contract to be controlled by the DAO.

## How It Works

1.  **Governance Token (`GovToken.sol`)**: The `MyToken` (MTK) contract is a standard ERC20 token with voting capabilities (`ERC20Votes`). Token holders can delegate their voting power to themselves or other addresses.

2.  **Timelock (`TimeLock.sol`)**: The `MyTimelock` contract acts as the owner of other contracts and enforces a time delay between a proposal's success and its execution. This provides a window for users to exit the system if they disagree with a proposal.

3.  **Governor (`govnor.sol`)**: The `MyGovernor` contract is the heart of the DAO. It allows users with enough voting power to create proposals. A proposal consists of a set of actions to be executed by the DAO, such as calling a function on another contract. Token holders can then vote on these proposals. If a proposal passes the voting period and reaches the required quorum and vote threshold, it is queued in the Timelock.

4.  **Target Contract (`box.sol`)**: The `Box` contract is a simple example of a contract that the DAO can control. It has a `store` function that can only be called by its owner. In this setup, the `TimeLock` contract is the owner of the `Box` contract. This means that the only way to change the number in the `Box` contract is through a DAO proposal.

## Project Structure

```
.
├── lib
│   ├── forge-std
│   └── openzeppelin-contracts
├── src
│   ├── box.sol
│   ├── govnor.sol
│   ├── GovToken.sol
│   └── TimeLock.sol
├── test
├── foundry.toml
└── README.md
```

## Getting Started

### Prerequisites

*   [Foundry](https://getfoundry.sh/)

### Installation

1.  Clone the repository:
    ```bash
    git clone https://github.com/HIMXA/DAO-foundry
    ```
2.  Install dependencies:
    ```bash
    forge install
    ```

### Build

```bash
forge build
```

### Test

```bash
forge test
```
