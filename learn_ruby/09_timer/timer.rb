class Timer
    attr_reader :seconds
    def seconds
        @seconds = 0 
    end
    def seconds=(new_seconds)
        @seconds=new_seconds
    end
    def time_string
        hours = @seconds/3600
	minutes = (@seconds%3600)/60
	seconds = (@seconds%3600)%60
        sprintf("%02d:%02d:%02d", hours, minutes, seconds)
    end
end
