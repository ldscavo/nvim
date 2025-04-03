;; extends

((variable_declarator
   name: (identifier) @_name 
   (verbatim_string_literal) @injection.content)
   .
   (#contains? @_name "query")
   (#offset! @injection.content 0 2 0 -1)
   (#set! injection.language "sql"))
