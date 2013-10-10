Before do
  $driver ||= start_app
  
  $wait.until {
    main_screen_present?
  }
  
end

After do
  $driver.quit
  $driver=nil
end
