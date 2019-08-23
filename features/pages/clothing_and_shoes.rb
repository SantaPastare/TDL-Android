require './features/modules/base_clothing_and_shoes'

class ClothingAndShoesScreen < BaseClothingAndShoesScreen
    def initialize(driver)
        @driver = driver
    end

    def type_element(type)
        type_elements = @driver.find_elements(id: 'select_unit_spinner')
        case type
        when 'from'
            type_elements.first
        when 'to'
            type_elements[1]
        when 'type'
            type_elements.last
        else
          raise 'Unsupported type'
        end
    end

    def type_popup_elements
        @driver.find_elements(id: 'select_unit_spinner_menu_name')
    end
    
    # def conversion_section_element
    #     @driver.find_element(id: 'target_value')
    # end
end
