require_relative 'base_page'

# Every page object should inherit from BasePage
class ResultsPage < BasePage

  TABLE_ROWS = {css: "tr"}
  AREA = "tr:nth-of-type(%d) > td:nth-of-type(1)"
  GALLONS_OF_PAINT = "tr-nth-of-type(%d) > td-nth-of-type(2)"

  def get_area room_number
    locator = {css:AREA % room_number}
    get_text(locator)
  end

end