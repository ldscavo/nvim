;; extends

([(raw_string_content) 
  (string_literal_content)] @injection.content
  .
  (#match? @injection.content "(SELECT|INSERT|UPDATE|DELETE|select|insert|update|delete).+(FROM|INTO|VALUES|SET|from|into|values|set)?.*(WHERE|GROUP BY|where|group by)?")
  (#set! injection.language "sql"))

((verbatim_string_literal) @injection.content
  .
  (#match? @injection.content "(SELECT|INSERT|UPDATE|DELETE|select|insert|update|delete).+(FROM|INTO|VALUES|SET|from|into|values|set)?.*(WHERE|GROUP BY|where|group by)?")
  (#offset! @injection.content 0 2 0 -1)
  (#set! injection.language "sql"))
