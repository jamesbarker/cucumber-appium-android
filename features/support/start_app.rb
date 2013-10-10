def start_app
  def capabilities
      {
          "device" => "Android",
          "browserName" => "",
          "version" => "4.3",
          "app" => "#{Dir.pwd}/AndroidTestApp/bin/MainActivity-debug.apk",
          "app-package" => "com.example.androidtestapp",
          "app-activity" => "com.example.androidtestapp.MainActivity"
      }
    end
    
    http_client = ::Selenium::WebDriver::Remote::Http::Default.new
    http_client.timeout = 80
   
    
    Selenium::WebDriver.for(
        :remote,
        :desired_capabilities => capabilities,
        :url => 'http://127.0.0.1:4723/wd/hub',
        :http_client => http_client
    )
end