class PassedOrFailed
  attr_accessor :hash, :pass	
 
	def initialize(hash, passing_value)
		@hash = hash
		@pass = passing_value.to_i
	end
	
	def result
	# iterate over hash
	# create 2 hashes to write those sho passesor not 
	# return hash with 2 hashes hash = {passesd: , failed: }(print?)
    passed_and_failed = {:passed => {}, :failed => {}} # cy to dobrze?
    passed = {}
    failed = {}
    @hash.each do |key, val|
      val = val.to_i
      if val >= @pass
        passed[key] = val
      else
        failed[key] = val      
      end
    end
    passed_and_failed[:passed] = passed
    passed_and_failed[:failed] = failed
    return passed_and_failed
	end
end