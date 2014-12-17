# http://www.sitepoint.com/design-patterns-in-ruby-observer-singleton/

require "singleton"
# https://practicingruby.com/articles/ruby-and-the-singleton-pattern-dont-get-along
class SimpleLogger
  include Singleton

  def initialize
    @output = []
  end

  attr_reader :output

  def error(message)
    output << formatted_message(message, "ERROR")
  end

  def info(message)
    output << formatted_message(message, "INFO")
  end

  def write(filename)
    File.open(filename, "a") { |f| f << output.join }
  end

  private

  def formatted_message(message, message_type)
    "#{Time.now} | #{message_type}: #{message}\n"
  end
end

# >> logger = SimpleLogger.new
# NoMethodError: private method `new' called for SimpleLogger:Class

logger = SimpleLogger.instance

logger.error("Some serious problem")
logger.info("Something you might want to know")
logger.write("log.txt")