default[:node_app][:name] = "node_app"
default[:node_app][:path] = "/var/apps/node_app"
default[:node_app][:user] = "ubuntu"

default[:node_app][:http] = true

default[:node_app][:https] = false

default[:node_app][:proxy_pass] = "http://localhost:3000"

default[:node_app][:pm2_start] = true
default[:node_app][:pm2_process_file] = "process.json"

default[:node_app][:env][:NODE_PATH] = default[:node_app][:path] + "/current"
default[:node_app][:env][:NODE_CONFIG_DIR] = default[:node_app][:path] + "/current/config"
default[:node_app][:env][:NODE_ENV] = 'development'
default[:node_app][:env][:NODE_BCRYPT_SALT] = 'salt'
default[:node_app][:env][:NODE_JWT_KEY] = 'jwtkey'
