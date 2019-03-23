## Welcome

DynamicConfig is an angelscript plugin for sven-coop to execute different config commands based on player-count:
  - When joining/disconnecting
  - On map start (Due to some plugins not holding their ConVar values accross map in my testing)

### Installation

- Download the repository
- Place `DynamicConfig.as` and `dcConf.as` in `<sven-coop/svends installdir>/svencoop_addon/scripts/plguins/` where sven-coop/svends installdir is your installation directory for SvenCoop or your SvenCoop Dedicated server. For users/listenserver users this is usually under: `C:\Program Files (x86)\Steam\steamapps\common\Sven Co-op\svencoop_addon\`
- Create a new file in the same directory as server.cfg and base files (`C:\Program Files (x86)\Steam\steamapps\common\Sven Co-op`) called `pluginexec.cfg`
	* Place all of your BASE plugin configurations in here. These will be the default settings applied on map change
	* I will include mine as an example
- In dcConf.as, edit it per array for what commands you would like executed for that player count (Look at the comments):
	* I've included my base configuration which has some silly/debug options. You should see these options in console when running from server, etc, or demo it's use.
	* Make sure the last string entry does not have a comma (Designating a new item in the array)
	* All the strings should be the commands you want to run per player. I've included approximate difficulties for DynamicConfig which this is made to be used with.
- Create a new entry in `default_plugins.txt` (`C:\Program Files (x86)\Steam\steamapps\common\Sven Co-op`):
```
	"plugin"
	{
		"name" "DynamicConfig"
		"script" "DynamicConfig"
	}

```
- Either:
	a) Restart the server (Plugins will automatically be reloaded)
	b) Type `as_reloadplugins` in your dedicated/listenserver console and change maps