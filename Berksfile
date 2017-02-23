source 'https://supermarket.chef.io'

metadata

def fixture_cookbook(name)
  cookbook(name, path: ::File.join('./test/fixtures/cookbooks/', name))
end

group :integration do
  fixture_cookbook 'pacifica_docker_test'
end
