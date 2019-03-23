#include "dcConf"

void PluginInit()
{
    g_Module.ScriptInfo.SetAuthor( "Komerad" );
    g_Module.ScriptInfo.SetContactInfo( "komeradgygabite@gmail.com" );
    g_Game.AlertMessage( at_console, "*----------------------*\n" );
    g_Game.AlertMessage( at_console, "Dynamic Config Loaded\n" );
    g_Game.AlertMessage( at_console, "*----------------------*\n" );
    g_Hooks.RegisterHook( Hooks::Player::ClientPutInServer, @ClientChange );
    g_Hooks.RegisterHook( Hooks::Player::ClientDisconnect, @ClientChange );
}

void MapStart() {
	RefreshPluginConfig();
}

void ConfigByPlayerCount() {
    int player_count = g_PlayerFuncs.GetNumPlayers();
    // Loop through our commands for this many players and execute them
    for(uint i = 0; i <= dynamicConfig[player_count].length() - 1; i++)
    {
        g_EngineFuncs.ServerCommand(dynamicConfig[player_count][i] + "\n");
    }
}

void RefreshPluginConfig() {
	g_Game.AlertMessage( at_console, "*----------------------*\n" );
    g_Game.AlertMessage( at_console, "Loading Plugin Config\n" );
    g_Game.AlertMessage( at_console, "*----------------------*\n" );
    g_EngineFuncs.ServerCommand('exec "pluginexec.cfg"\n');
    g_Game.AlertMessage( at_console, "*----------------------*\n" );
    g_Game.AlertMessage( at_console, "Loading Dynamic Config\n" );
    g_Game.AlertMessage( at_console, "*----------------------*\n" );
    ConfigByPlayerCount();
    g_Game.AlertMessage( at_console, "*-------Finished-------*\n" );
}

HookReturnCode ClientChange(CBasePlayer@ pPlayer)
{
	// Handle New Players
	ConfigByPlayerCount();
	return HOOK_CONTINUE;
}
