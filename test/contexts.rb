require './test/sets/store_contexts'


module Contexts
  # explicitly include all sets of contexts used for testing 
#  include Contexts::StoreContexts
#  include Contexts::UserContexts
#  include Contexts::BankContexts
  
 def create_contexts
    create_users
    create_stores
    create_banks
  end
  
  def destroy_contexts
    remove_users
    remove_stores
    remove_banks
  end
  

end