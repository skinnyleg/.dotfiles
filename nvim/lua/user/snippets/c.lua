local ls = require("luasnip") --{{{
local s = ls.s
local i = ls.i
local t = ls.t

local d = ls.dynamic_node
local c = ls.choice_node
local f = ls.function_node
local sn = ls.snippet_node

local fmt = require("luasnip.extras.fmt").fmt
local rep = require("luasnip.extras").rep

local snippets, autosnippets = {}, {} --}}}

local group = vim.api.nvim_create_augroup("c Snippets", { clear = true })
local file_pattern = "*.c"


local mainsnip = s("main-", fmt([[
	int	main({})
	{{
		{}
		return (0);
	}}
]],
	{
		c(1, {t("void"), t("int ac, char **av"), t("int ac, char **av, char **env")}),
		i(2, "start")
	}
	)
)

table.insert(snippets,mainsnip)

local ifsnip = s("if-", fmt([[
	if ({})
	{{
		{}
	}}
]],
	{
		i(1, "Condition"),
		i(2, "Todo")
	}
	)
)

table.insert(snippets,ifsnip)

local whilesnip = s("while-", fmt([[
	while ({})
	{{
		{}
	}}
]],
	{
		i(1, "Condition"),
		i(2, "Todo")
	}
	)
)

table.insert(snippets,whilesnip)

local funcsnip = s("func-", fmt([[
	{}	{}({})
	{{
		{}
		{}
	}}

]],
	{
		i(1, "Datatype"),
		i(2, "funcname"),
		i(3, "ARGS"),
		i(4, "func body"),
		c(5, {t("return (0);"), t(""), t("return (NULL);")})
	}
	)
)

table.insert(snippets,funcsnip)

local retsnip = s("ret-", fmt([[
	return ({});
]],
	i(1,"value")
	)
)
table.insert(snippets, retsnip)
-- End Refactoring --
return snippets, autosnippets

