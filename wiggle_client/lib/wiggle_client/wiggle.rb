module WiggleClient
  class Wiggle
    attr_accessor :universal_id, :owner

    def self.find(uid)
      CommunityService.find(:wiggle, :wiggle, uid)  # or something, maybe just `include CommunityService::ClientModel`
    end
  end
end
