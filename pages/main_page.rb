require_relative 'base_page'

# Every page object should inherit from BasePage
class MainPage < BasePage

  INPUT_BOX = {css: "input[name='rooms']"}
  SUBMIT_BUTTON = {css: "input[type='submit']"}

  def insert_rooms(number_of_rooms)
    type INPUT_BOX, number_of_rooms
  end

  def click_submit
    click SUBMIT_BUTTON
  end

end