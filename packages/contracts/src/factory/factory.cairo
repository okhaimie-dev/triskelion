use starknet::{ContractAddress, ClassHash};

// *************************************************************************
//                  Interface of the `MarketFactory` contract.
// *************************************************************************
#[starknet::interface]
trait IDAOFactory<TContractState> {
    fn create_dao(ref self: TContractState) -> ContractAddress;
}

#[starknet::contract]
mod DAOFactory {
    // *************************************************************************
    //                               IMPORTS
    // *************************************************************************

    // Core lib imports.
    use super::{IDAOFactory};
    use starknet::{get_caller_address, ContractAddress, contract_address_const, ClassHash};

    // Local imports.


    // *************************************************************************
    //                              STORAGE
    // *************************************************************************
    #[storage]
    struct Storage {
    }

    // *************************************************************************
    //                              CONSTRUCTOR
    // *************************************************************************

    #[constructor]
    fn constructor(ref self: ContractState) {
    }

    // *************************************************************************
    //                          EXTERNAL FUNCTIONS
    // *************************************************************************
    #[abi(embed_v0)]
    impl DAOFactory of IDAOFactory <ContractState>{
        fn create_dao(ref self: ContractState) -> ContractAddress {
            let dao_contract: ContractAddress = contract_address_const::<0x0>();
            return dao_contract;
        }
    }

    // *************************************************************************
    //                          INTERNAL FUNCTIONS
    // *************************************************************************
    #[generate_trait]
    impl InternalImpl of InternalTrait {

    }
}
    