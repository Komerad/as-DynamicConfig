// NOTE: This is the config file for the DynamicConfig plugin.
array<array<string>> dynamicConfig = {
	// Format: console commands to run. Index of the list is number of players. IE: The first line is if there are 0 players.
	// 0 Players
	{
		"sv_cheats 1"
	},
	// 1 Player (Hard: 70%)
	{
		"sv_cheats 2",
		"say Hello whoever is playing!"
	},
	// 2 Players (Very Hard 75%)
	{
		"as_command pregen.apregen 0"
	},
	// 3 Players (? 77.5?)
	{
		"as_command pregen.apregen 1",
		"as_command pregen.apamnt 1",
		"as_command pregen.apdelay 15",
		"as_command pregen.apmax 100",
		"as_command AmmoExt.9mm_interval 0",
		"as_command AmmoExt.9mm_regene 0"
	},
	// 4 Players (80?)
	{
		"as_command pregen.apdelay 3.0",
		"as_command AmmoExt.9mm_interval 60",
		"as_command AmmoExt.9mm_regene 17"
	},
	// 5 Players (90)
	{
		""
	},
	// 6 Players (91) -- Near impossible
	{
		""
	},
	// 7 Players
	{
		""
	},
	// 8 Players
	{
		""
	},
	// 9 Players
	{
		""
	},
	// 10 Players
	{
		""
	},
	// 11 Players
	{
		""
	},
	// 12 Players
	{
		""
	},
};