;; extends

((command
  name: (command_name) @_command 
  argument: (raw_string) @injection.content)
  .
  (#eq? @_command "jq")
  (#offset! @injection.content 0 1 0 -1)
  ;(#set! injection.include-children)
  (#set! injection.language "jq"))
