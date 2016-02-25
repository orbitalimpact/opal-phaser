def native_accessor_alias(new, old)
  native_reader_alias(new, old)
  native_writer_alias(new, old)
end

def native_reader_alias(new, old)
  define_method new do
    Native(`#@native[old]`)
  end
end

def native_writer_alias(new, old)
  define_method "#{new}=" do |value|
    Native(`#@native[old] = value`)
  end
end
