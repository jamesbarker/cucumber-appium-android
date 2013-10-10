def button_exists? button
  $driver.find_elements(:xpath, "//button[contains(@value,\"#{button}\")]").count>0
end

def wait_for_button_to_exist button
  $wait.until {button_exists? button}
end

def click_button button
  wait_for_button_to_exist button
  $driver.find_element(:xpath, "//button[contains(@value,\"#{button}\")]").click
end

def xpath_exists? xpath
$driver.find_elements(:xpath, xpath).count>0
end

def wait_for_xpath_to_exist xpath
  $wait.until { xpath_exists? xpath }
end

def click_xpath xpath
  wait_for_xpath_to_exist xpath
  $driver.find_element(:xpath, xpath).click
end

def id_exists? id
  $driver.find_elements(:id, id).count>0
end

def wait_for_id_to_exist id
  $wait.until { id_exists? id }
end

def click_id id
  wait_for_id_to_exist id
  $driver.find_element(:id, id).click
end

def id_text id
  wait_for_id_to_exist id
  $driver.find_element(:id, id).text
end

def text_exists? text
  $driver.find_elements(:xpath, "//text[contains(@value,\"#{text}\")]").count>0
end
def wait_for_text_to_exist text
    $wait.until {text_exists? text}
end

def click_text text
  wait_for_text_to_exist text
  $driver.find_element(:xpath, "//text[contains(@value,\"#{text}\")]").click
end

def fill_in id, text
  wait_for_id_to_exist id
  element =  $driver.find_element(:id, id)
  element.clear
  element.send_keys text
end




