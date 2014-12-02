require 'simple_token_authentication/entity'

module SimpleTokenAuthentication
  class EntitiesManager
    def find_or_create_entity(model, name)
      @entities ||= {}
      @entities[name] ||= Entity.new(model, name)
    end
  end
end
