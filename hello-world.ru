require 'rack'
require 'rack/server'
require 'socket'

class HelloWorldApp
  def self.call(env)
    [200, {}, [
      <<-EOF
Hello World! Version: 1

Hostname: #{Socket.gethostname}
EOF
    ]]
  end
end

run HelloWorldApp
