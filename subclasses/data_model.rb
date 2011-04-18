class DataModel

  def self.subclasses
    Object.constants.select do |class_name|
      clazz = Module.const_get(class_name)
      clazz.respond_to?(:superclass) and clazz.superclass == self
    end
  end

end

class Blah < DataModel
end

class Bleh
end
