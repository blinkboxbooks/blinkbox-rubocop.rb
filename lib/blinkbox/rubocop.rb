# General namespace. See the Rubocop module.
module Blinkbox
  # Helper methods for setting up, configuring and running Rubocop.
  module Rubocop

    begin
      # Set the Gem Version
      VERSION = File.read(File.join(__dir__, '../../VERSION')).strip
    rescue
      VERSION = "0.0.0"
    end

    # Attempts to update an existing checkout of the config files via git.
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

    # Attempts to checkout a clean copy of the config files via git.
    def self.checkout_config(config_dir)
      puts "Checking out Rubocop config..."
      `git clone -q https://git.mobcastdev.com/TEST/rubocop_config.git #{config_dir}`
    end
  end
end
