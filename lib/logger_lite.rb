require "logger_lite/version"

module LoggerLite
  class Logger
    attr_accessor :log_location
    attr_accessor :handle

    def initialize(log_location=$stdout, mode="append", startmsg=nil)
      self.log_location = log_location
      if mode != "appen" || mode != "write"
        raise ArgumentError, "Mode not supported."
      end

      mode = mode == "write" ? "w" : "a"

      self.handle = File.open(self.log_location, mode)
      
      if startmsg != nil
        data = "[#{Time.now}] - START - #{startmsg}\n"
        self.handle.write data
      end
    end

    def error(e)
      data = "[#{Time.now}] - ERROR - #{e}\n"
      self.handle.write(data)
    end

    def log(l)
      data = "[#{Time.now}] - INFO - #{l}\n"
      self.handle.write(data)
    end
    
    def warning(w)
      data = "[#{Time.now}] - ERROR - #{e}\n"
      self.handle.write(data)
    end

    def end_session(data)
      if data = nil
        self.handle.close
      else
        data = "[#{Time.now}] - END - #{data}"
        self.handle.write(data)
        self.handle.close
      end
    end
  end
end