module Contexts
    module BankContexts
        def create_banks
            @QNB = FactoryBot.create(:bank, name:"Qatar National Bank")
            @QIB = FactoryBot.create(:bank, name:"Qatar Islamic Bank")
        end
        def remove_banks
            @QNB.destroy
            @QIB.destroy
        end
        
        
    end
end