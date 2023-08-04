# frozen_string_literal: true

class BaseService
  def self.call(...)
    new(...).call
  end

  def self.call!(...)
    result = new(...).call

    raise StandardError, result.errors if result.failure?

    result
  end
end
