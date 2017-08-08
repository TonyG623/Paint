require_relative '../spec_helper'

context 'Paint Calculator' do

  describe 'Room Number Decider' do
    before :each do
      paint_url = 'http://127.0.0.1:5000'
      load_url paint_url
    end

    main_page = MainPage.new

    it 'correct number of rows' do
      number_of_rooms = 2
      main_page.insert_rooms number_of_rooms
      main_page.click_submit
      room_config_page = DimensionsPage.new
      expect(room_config_page.get_number_of_rooms).to be number_of_rooms
    end
  end

  describe 'Dimensions Page' do
    number_of_rooms = 2

    before :each do
      paint_url = 'http://127.0.0.1:5000/dimensions?rooms=%d' % number_of_rooms
      load_url paint_url
    end

    dimensions_page = DimensionsPage.new

    it 'correct number of rooms with ridiculous number' do
      areas = []
      number_of_rooms.times do |n|
        length = rand(100)
        width = rand(100)
        height = rand(100)
        dimensions_page.insert_length n, length
        dimensions_page.insert_width n, width
        dimensions_page.insert_height n, height
        area = length * width * height
        areas << area
      end

      dimensions_page.click_submit
      results_page = ResultsPage.new

      areas.each do |area|
        results_page.get_area 1
      end


    end
  end
end