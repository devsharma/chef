name "webserver"
description "Systems that serve HTTP and HTTPS"
run_list(
  "recipe[apt]",
  "recipe[aliases]",
  "recipe[apache2]"
)
default_attributes(
  "apache" => {
    "default_site_enabled" => true
  }
)
