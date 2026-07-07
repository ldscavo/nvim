return {
  'seblyng/roslyn.nvim',
  commit = 'f2ec6ee6384c3b611ddc817b9e78b20cd0334bbb',
  ft = 'cs',
  ---@module 'roslyn.config'
  ---@type RoslynNvimConfig
  opts = {
    filewatching = 'roslyn',
    config = {
      settings = {
        ['csharp|inlay_hints'] = {
          csharp_enable_inlay_hints_for_implicit_object_creation = true,
          csharp_enable_inlay_hints_for_implicit_variable_types = true,
          csharp_enable_inlay_hints_for_lambda_parameter_types = true,
          csharp_enable_inlay_hints_for_types = true,
          dotnet_enable_inlay_hints_for_indexer_parameters = true,
          dotnet_enable_inlay_hints_for_literal_parameters = true,
          dotnet_enable_inlay_hints_for_object_creation_parameters = true,
          dotnet_enable_inlay_hints_for_other_parameters = true,
          dotnet_enable_inlay_hints_for_parameters = true,
          dotnet_suppress_inlay_hints_for_parameters_that_differ_only_by_suffix = true,
          dotnet_suppress_inlay_hints_for_parameters_that_match_argument_name = true,
          dotnet_suppress_inlay_hints_for_parameters_that_match_method_intent = true,
        },
        ['csharp|code_lens'] = {
          dotnet_enable_references_code_lens = true,
        },
      },
    },
    -- your configuration comes here; leave empty for default settings
  },
  config = function()
    vim.api.nvim_create_autocmd('VimLeavePre', {
      callback = function()
        -- Force stop the roslyn server on exit
        vim.cmd 'Roslyn stop'
      end,
    })
  end,
}
