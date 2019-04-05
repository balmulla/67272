require 'test_helper'

class StoreTest < ActiveSupport::TestCase
  should validate_presence_of(:name)

  context "Creating a context for stores" do
    # create the objects I want with factories
    setup do 
      create_stores
    end
    
    # and provide a teardown method as well
    teardown do
      remove_stores
    end
  

  should "assert that the proper retaurants open for breakfast" do
    assert @Breakfast_club.breakfast?
    assert @CMU.breakfast?
  end
  
  should "assert that the proper retaurants open for lunch" do
    assert @VCU.lunch?
    assert @CMU.lunch?
  end

  should "assert that the proper retaurants open for dinner" do
    assert @Texas.dinner?
  end
  
  should "have a scope 'exclusive' that works" do
    assert_equal 2, Store.exclusive.size
  end
  

  end
end
