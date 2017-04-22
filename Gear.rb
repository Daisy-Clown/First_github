class Gear
    attr_reader :chainring, :cog, :wheel
    def initialize(chainring, cog, rim, tire)
	@chainring = chainring
	@cog = cog
    @wheel = wheel.new(rim, tire)
   end
 def ratio
 	chainring / cog.to_f #float型へのキャスト
   end
    def gear_inches
     ratio * wheel.diameter
   end
    wheel = Struct.new(:rim, :tire)do
    def diameter
      rim * (tire * 2)
    end
   end

puts Gear.new(52, 11,26,1.5).gear_inches
puts Gear.new(52, 11,24,1.25).gear_inches

#puts Gear.new(52, 11).ratio
#puts Gear.new(38, 22).ratio
 
