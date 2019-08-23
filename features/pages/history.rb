require './features/modules/base_history'

class HistoryScreen < BaseHistoryScreen
    def initialize(driver)
        @driver = driver
    end

    def history_elements_list
        @driver.find_elements(id: 'history_item_name')
    end

    def conversion_section_element
        @driver.find_element(id: 'target_value')
    end

    def base_section
        @driver.find_element(id: 'source_value')
    end
end
