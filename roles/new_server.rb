name "new_server"
description "building a new server with old configuration"
run_list "recipe[motd]", "recipe[security]", "recipe[apache]", "recipe[linuxcommand]", "recipe[php]", "recipe[java-installation]", "recipe[ElasticSerach]"
