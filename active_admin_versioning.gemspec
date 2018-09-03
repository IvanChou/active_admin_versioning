require File.join(File.dirname(__FILE__), "lib", "active_admin_versioning", "version")

Gem::Specification.new do |gem|
  gem.name          = "active_admin_versioning"
  gem.version       = ActiveAdminVersioning::VERSION
  gem.authors       = ["Yoshiyuki Hirano", "Ivan Chou"]
  gem.email         = ["yhirano@me.com", "yiichou@gmail.com"]

  gem.summary       = "Good for auditing or versioning for Active Admin"
  gem.description   = gem.summary
  gem.homepage      = "https://github.com/IvanChou/active_admin_versioning"
  gem.license       = "MIT"

  gem.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  gem.bindir        = "bin"
  gem.require_paths = ["lib"]

  gem.required_ruby_version = ">= 2.1.0"

  gem.add_dependency "activeadmin", ">= 1.0.0.pre4"
  gem.add_dependency "paper_trail", ">= 4.2.0"

  gem.add_development_dependency "bundler", "~> 1.13"
  gem.add_development_dependency "rake",    "~> 10.0"
end
