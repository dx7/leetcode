def simplify_path(path)
  split = path.split('/')
  out = []

  split.each do |s|
    if s == '..'
      out.pop
    elsif s != '.' && s != ''
      out << s
    end
  end

  '/' << out.join('/')
end
