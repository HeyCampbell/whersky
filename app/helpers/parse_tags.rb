def parse_tags(input)
  input.to_s.split(',').map {|t| t.lstrip}
end
