module WiggleClient
  module WiggleMixin
    def load_remote_wiggle_data
      @remote_wiggle_data ||= WiggleClient::Wiggle.find(universal_id)
    end

    def remote_wiggle_data
      raise("You must call load_remote_wiggle_data before accessing remote data!") unless @remote_wiggle_data
    end

    def owner
      remote_wiggle_data.owner
    end
  end
end
