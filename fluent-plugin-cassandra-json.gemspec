lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name    = "fluent-plugin-cassandra-json"
  spec.version = "0.1.3"
  spec.authors = ["joker1007"]
  spec.email   = ["kakyoin.hierophant@gmail.com"]

  spec.summary       = %q{Insert data to cassandra plugin for fluentd (Use INSERT JSON).}
  spec.description   = %q{Insert data to cassandra plugin for fluentd (Use INSERT JSON).}
  spec.homepage      = "https://github.com/joker1007/fluent-plugin-cassandra-json"
  spec.license       = "Apache-2.0"

  test_files, files  = `git ls-files -z`.split("\x0").partition do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.files         = files
  spec.executables   = files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = test_files
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 12.0"
  spec.add_development_dependency "test-unit", "~> 3.0"
  spec.add_runtime_dependency "fluentd", [">= 0.14.10", "< 2"]
  spec.add_runtime_dependency "cassandra-driver", ">= 3"
  spec.add_runtime_dependency "oj"
end
