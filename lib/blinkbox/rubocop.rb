module Blinkbox
  module Rubocop
    begin
      VERSION = File.read(File.join(__dir__, '../VERSION')).strip
    rescue
      VERSION = "0.0.0"
    end

    def self.update_config(config_dir)
      puts "Updating checked out Rubocop config..."
      current_dir = Dir.pwd

      begin
        Dir.chdir(config_dir)
        `git pull -q origin master`
        Dir.chdir(current_dir)
      rescue
        puts "Failed to update config in #{config_dir}. Try removing it and re-running?"
      end
    end

    def self.checkout_config(config_dir)
      puts "Checking out Rubocop config..."
      `git clone -q https://git.mobcastdev.com/TEST/rubocop_config.git #{config_dir}`
    end
  end
end
