return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        clangd = {
          -- 自定义 clangd 配置
          cmd = {
            "clangd",
            "--all-scopes-completion", -- 全代码库补全
            "--completion-style=bundled", -- 补全时将重载项组合成一个
            "--header-insertion=iwyu", -- 允许补充头文件
            "--pch-storage=memory", -- pch优化的位置(memory 或 disk，选择memory会增加内存开销，但会提升性能)
            "--log=error",
            -- "--j=26", -- 后台线程数，可根据机器配置自行调整
            "--background-index",
            "--clang-tidy", -- 开启clang-tidy
            "--function-arg-placeholders=false", -- 启用这项时，补全函数时，将会给参数提供占位符，键入后按 Tab 可以切换到下一占位符，乃至函数末
            -- "--query-driver=/usr/bin/clang++",
          },
          filetypes = { "c", "cpp", "objc", "objcpp", "cuda" },
          single_file_support = true,
          capabilities = {
            offsetEncoding = "utf-8", -- 解决某些编码问题
          },
        },
      },
    },
  },
}
