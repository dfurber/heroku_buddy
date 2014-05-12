module Secretive
  class << self
    def for_heroku
      require 'yaml'
      file = File.join(`pwd`.chomp, '.env.production')
      vars = YAML.load_file(file)
      unless File.exists?(file)
        file = File.join(`pwd`.chomp, 'config', 'secrets.yml')
        vars = YAML.load_file(file)
        vars = vars['production']
      end
      convert_vars_to_string(vars)
    end

    private

    def convert_vars_to_string(vars)
      return unless vars.any?

      string = ""
      vars.each do |key, value|
        string.concat("#{key}=#{value} ") unless value.respond_to?(:each) || value.nil?
      end
      string
    end
  end
end
