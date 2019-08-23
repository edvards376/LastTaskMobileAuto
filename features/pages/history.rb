require './features/modules/base_history'
# contains all application's keyboard elements
class HistoryScreen < BaseHistoryScreen
  def initialize(driver)
    @driver = driver
  end

  def history_list_element
    @driver.find_element(id: 'history_single_line') 
  end

  def history_hint_element(data_type)
    history_hint_element = @driver.find_element(id: 'history_item_hint')
  end

end
