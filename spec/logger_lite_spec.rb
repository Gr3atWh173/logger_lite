require "spec_helper"
require_relative "../lib/logger_lite.rb"

RSpec.describe LoggerLite do
  context "Given some info" do 
    it "logs it correctly" do 
      file = "sample.txt"
      logger = LoggerLite::Logger.new(file, mode=:write, "Start of logging")
      logger.log("Just a normal thing.")
      logger.error("We have something bad going on.")
      logger.error("Smoking is injurious to your health.")
      logger.end_session("End of logger session.")
    end
  end
end
