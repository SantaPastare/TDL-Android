# contains all actions for History elements
class BaseHistoryScreen

    def history_element_text(index)
        history_elements_list[index].text
    end

    def conversion_section_text
      conversion_section_element.text
    end

    def base_section_text
        base_section.text
    end
end