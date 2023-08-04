# frozen_string_literal: true

module Operation
  class Failure
    attr_reader :data, :errors

    def initialize(errors: nil, data: nil)
      @errors = errors
      @data = data
    end

    def failure?
      true
    end

    def success?
      false
    end
  end
end
