module Contexts
    module UserContexts
        def create_users
            @Rachel = FactoryBot.create(:user, bank_id:"1", name:"Rachel", password_digest:"abc123", email:"Rachel@yahoo.com", phone:"1231231234")
            @Tiffany = FactoryBot.create(:user, bank_id:"1", name:"Tiffany", password_digest:"abc123", email:"Tiffany@yahoo.com", phone:"1235231234")

        end
        def remove_users
            @Rachel.destroy
            @Tiffany.destroy
        end
    end
end