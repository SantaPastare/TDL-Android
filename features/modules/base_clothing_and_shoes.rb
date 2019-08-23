# contains all actions for Clothing and shoes elements
class BaseClothingAndShoesScreen
    def find_category(name)
        return unless type_popup_element_texts.include? name

        until type_popup_element_texts.include? name
          last_category = type_popup_element_texts.last
          MOBILE.swipe('down')
          raise('type not found') if last_category == type_popup_element_texts.last
        end
    end

    def selected_type_name(type)
      type_element(type).text
    end

    def open_type_selection_popup
      from_type_element.click
    end

    def select_from_type(from_name)
      return if selected_type_name('from') == from_name

      open_type_category 'from'
      find_category from_name
      type_popup_elements.each do |element|
        if element.text == from_name
          element.click
          break
        end
      end
    end

    def type_popup_element_texts
        text = []
        type_popup_elements.each do |type|
          text.push type.text
        end
        text
    end
    
    def open_from_type_category
        from_type_element.click
    end

    def open_to_type_category
      to_type_element.click
    end

    def to_type(to_name)
      return if selected_type_name('to') == to_name

      open_type_category 'to'
      find_category to_name
      type_popup_elements.each do |element|
        if element.text == to_name
          element.click
          break
        end
      end
    end

    def type(type_name)
      return if selected_type_name('type') == type_name

      open_type_category 'type'
      find_category type_name
      type_popup_elements.each do |element|
        if element.text == type_name
          element.click
          break
        end
      end
    end

    def to_section_text
      conversion_section_element.text
    end

    def open_type_category(type)
      element = type_element(type)
      element.click
    end

end