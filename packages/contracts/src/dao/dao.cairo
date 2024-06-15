use starknet::{ContractAddress, ClassHash};

// *************************************************************************
//                  Interface of the `MarketFactory` contract.
// *************************************************************************
#[starknet::interface]
trait IDAO<TContractState> {
    fn create_dao(ref self: TContractState) -> ContractAddress;
}

#[starknet::contract]
mod DAO {
    // *************************************************************************
    //                               IMPORTS
    // *************************************************************************

    // Core lib imports.
    use super::{IDAO};
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
    impl DAO of IDAO <ContractState>{
        fn create_dao(ref self: ContractState) -> ContractAddress {
            let dao_contract: ContractAddress = 0x0;
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
    