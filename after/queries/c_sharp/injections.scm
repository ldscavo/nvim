;; extends

([(raw_string_content) 
  (string_literal_content)] @injection.content
  .
  (#match? @injection.content "(SELECT|INSERT|UPDATE|DELETE).+(FROM|INTO|VALUES|SET)?.*(WHERE|GROUP BY)?")
  (#set! injection.language "sql"))

((verbatim_string_literal) @injection.content
  .
  (#match? @injection.content "(SELECT|INSERT|UPDATE|DELETE).+(FROM|INTO|VALUES|SET)?.*(WHERE|GROUP BY)?")
  (#offset! @injection.content 0 2 0 -1)
  (#set! injection.language "sql"))
