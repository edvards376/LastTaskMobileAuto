#Contains all actions for History elements
class BaseHistoryScreen

    def history_list_text
        history_list_element.text
    end

    def history_element_click
        history_list_element.click
    end
    
    def select_data_type(data_type)
        history_hint_element(data_type).text
    end

end