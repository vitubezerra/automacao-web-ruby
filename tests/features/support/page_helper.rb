Dir[File.join(File.dirname(__FILE__),
    '../pages/*_page.rb')].each { |file| require file }



module Page
    def home
        @home ||= HomePage.new
    end
end