module sui_workshop_souvenir::sui_souvenir {

    // === Imports ===
    use std::string::{Self, String};
    use sui::{
        package::{ Self },
        display::{ Self },
    };

    // === Structs ===
    public struct SuiSouvenir has key, store {
        id: UID,
        name: String,
    }

    /// One-Time-Witness for the module.
    public struct SUI_SOUVENIR has drop {}
    
    fun init(otw: SUI_SOUVENIR, ctx: &mut TxContext) {
        let keys = vector[
            string::utf8(b"name"),
            string::utf8(b"image_url"),
            string::utf8(b"description"),
        ];

        let values = vector[
            string::utf8(b"Student: {name}"),
            string::utf8(b"https://ipfs.io/ipfs/bafybeigpu43ot37lo5wjgttefs5xktbm5cwnnv4cgjkczuey2ax2mlnalm/"),
            string::utf8(b"Week1: Sui Workshop Souvenir"),
        ];

        // Claim the `Publisher` for the package!
        let publisher = package::claim(otw, ctx);

        let mut display = display::new_with_fields<SuiSouvenir>(
            &publisher, keys, values, ctx
        );

        display::update_version(&mut display);

        transfer::public_transfer(publisher, tx_context::sender(ctx));
        transfer::public_transfer(display, tx_context::sender(ctx));
    }

    #[allow(lint(self_transfer))]
    public fun mint(
        name: String,
        ctx: &mut TxContext
    ) {
        let id = object::new(ctx);

        let capy = SuiSouvenir { 
            id, 
            name, 
        };

        transfer::public_transfer(capy, tx_context::sender(ctx));
    }

    /// Permanently delete `nft`
    public fun burn(nft: SuiSouvenir) {
        let SuiSouvenir {
            id,
            name: _,
        } = nft;
        object::delete(id);
    }
}