module Contexts
    module StoreContexts
        
        def create_stores
            @CMU = FactoryBot.create(:store, name:"CMU", opening_time:"1am", closing_time:"5pm", latitude:"34.50097", longitude:"-84.97533", exclusive: true)
            @VCU = FactoryBot.create(:store, name:"VCU", opening_time:"11am", closing_time:"5pm", latitude:"34.50097", longitude:"-84.97533", exclusive: true)
            @Texas = FactoryBot.create(:store, name:"Texas", opening_time:"5pm", closing_time:"11pm", latitude:"34.50097", longitude:"-84.97533", exclusive: false)
            @Breakfast_club = FactoryBot.create(:store, name:"CMU", opening_time:"8am", closing_time:"1pm", latitude:"34.50097", longitude:"-84.97533", exclusive: false)
        end
        
        def remove_stores
            @CMU.destroy
            @VCU.destroy
            @Texas.destroy
            @Breakfast_club.destroy
        end
        
    end
end