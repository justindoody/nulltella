class Nulltella
  def initialize(nullable, attribute)
    self.nullable = nullable
    self.attribute = attribute
  end

  def strftime(string, **kargs)
    I18n.t "model.#{nullable.model_name.i18n_key}.#{attribute}.nulls"
  end

  private

    attr_accessor :nullable, :attribute
end
