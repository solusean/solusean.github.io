# encoding: utf-8

Gem::Specification.new do |s|
  s.name          = "Sean's Dev Note"
  s.version       = "1.0.0"
  s.license       = "CC0-1.0"
  s.authors       = ["Sean Yoo"]
  s.email         = ["sean.yoo.dev@gmail.com"]
  s.homepage      = "https://solusean.github.io"
  s.summary       = "Welcome to Sean's Dev Note."

  s.files         = `git ls-files -z`.split("\x0").select do |f|
    f.match(%r{^((_includes|_layouts|_sass|assets)/|(LICENSE|README|index|about|contact|404)((\.(txt|md|markdown)|$)))}i)
  end

  s.platform      = Gem::Platform::RUBY
  s.add_runtime_dependency "jekyll", "~> 3.3"
end
