# frozen_string_literal: true

module Operation
  class Success
    attr_reader :data

    def initialize(data: nil)
      @data = data
    end

    def failure?
      false
    end

    def success?
      true
    end
  end
end
