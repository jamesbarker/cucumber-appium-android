def main_screen_visit
  $wait.until { main_screen_present? }
end

def main_screen_present?
 button_exists? 'Send'
end

def main_screen_click_send_button
  click_button 'Send' 
end

def main_screen_message message
 fill_in 'com.example.androidtestapp:id/edit_message', message
end
