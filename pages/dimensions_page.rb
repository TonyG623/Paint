require_relative 'base_page'

# Every page object should inherit from BasePage
class DimensionsPage < BasePage

  TABLE_ROWS = {css: "tr"}
  SUBMIT_BUTTON = {css: "input[type='submit']"}
  LENGTH_INPUT = "input[name='length-%d']"
  WIDTH_INPUT = "input[name='width-%d']"
  HEIGHT_INPUT = "input[name='height-%d']"

  def get_number_of_rooms
    find_elements(TABLE_ROWS).length - 1
  end

  def insert_length row, length
    selector = {css: LENGTH_INPUT % row}
    type selector, length
  end

  def insert_width row, length
    selector = {css: WIDTH_INPUT % row}
    type selector, length
  end

  def insert_height row, length
    selector = {css: HEIGHT_INPUT % row}
    type selector, length
  end

  def click_submit
    click SUBMIT_BUTTON
  end

end