class BasePage

  # Return a single element from a given locator
  #
  # ==== Attributes
  # * +locator+ - What to find the element with
  #
  def find_element(locator)
    driver.find_element locator
  end

  # Return an array of elements from a given locator
  #
  # ==== Attributes
  # * +locator+ - What to find the element with
  #
  def find_elements(locator)
    $driver.find_elements locator
  end

  # Return a boolean as to whether or not an item was displayed on the page
  #
  # ==== Attributes
  # * +locator+ - What to find the element with
  #
  def displayed?(locator)
    e = $driver.find_element locator
    e.displayed?
  end

  # Click a single element on the page
  #
  # ==== Attributes
  # * +locator+ - What to find the element with
  #
  def click(locator)
    e = $driver.find_element locator
    puts "Locator is invisible: #{locator}" unless displayed? locator
    e.click
  end

  def type(locator, text)
    e = $driver.find_element locator
    puts "Locator is invisible: #{locator}" unless displayed? locator
    e.send_keys text
  end

  def get_text(locator)
    e = $driver.find_element locator
    e.get_text
  end


end