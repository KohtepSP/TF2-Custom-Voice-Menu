#pragma semicolon 1

#include <sourcemod>
#include <sdktools>
#include <tf2_stocks>

public Plugin plugin = 
{
	name = "[TF2] Custom Voice Menu",
	author = "2010kohtep",
	description = "Very custom voice menu for all classes.",
	version = "(indev)",
	url = "https://github.com/2010kohtep"
};

#define CHOICE1 "#choice1"
#define CHOICE2 "#choice2"
#define CHOICE3 "#choice3"
#define CHOICE4 "#choice4"
#define CHOICE5 "#choice5"
#define CHOICE6 "#choice6"
#define CHOICE7 "#choice7"
#define CHOICE8 "#choice8"
#define CHOICE9 "#choice9"
#define CHOICE0 "#choice0"

stock void SpawnScriptedScene(int client, char[] SceneFile)
{
	int scene = CreateEntityByName("instanced_scripted_scene");
	DispatchKeyValue(scene, "SceneFile", SceneFile);
	DispatchSpawn(scene);
	SetEntPropEnt(scene, Prop_Data, "m_hOwner", client);
	ActivateEntity(scene);
	AcceptEntityInput(scene, "Start", client, client);
}

stock void PlaySceneScream(int client)
{
	TFClassType iClass = TF2_GetPlayerClass(client);
	
	if(iClass == TFClass_Scout)
	{
		switch(GetRandomInt(0, 1))
		{
			case 0: SpawnScriptedScene(client, "scenes/player/scout/low/4455.vcd");
			case 1: SpawnScriptedScene(client, "scenes/player/scout/low/4704.vcd");
		}		
	}
	else if (iClass == TFClass_Sniper)
	{
		// No scenes
	}
	else if (iClass == TFClass_Soldier)
	{
		SpawnScriptedScene(client, "scenes/player/soldier/low/4540.vcd");
	}
	else if (iClass == TFClass_DemoMan)
	{
		SpawnScriptedScene(client, "scenes/player/demoman/low/4585.vcd");
	}
	else if (iClass == TFClass_Medic)
	{
		SpawnScriptedScene(client, "scenes/player/medic/low/4651.vcd");
	}
	else if (iClass == TFClass_Heavy)
	{
		SpawnScriptedScene(client, "scenes/player/heavy/low/4743.vcd");
	}
	else if (iClass == TFClass_Pyro)
	{
		// No scenes
	}
	else if (iClass == TFClass_Spy)
	{
		SpawnScriptedScene(client, "scenes/player/spy/low/4705.vcd");
		// SpawnScriptedScene(client, "scenes/player/spy/low/4709.vcd");
	}
	else if (iClass == TFClass_Engineer)
	{
		// No scenes
	}
}

stock void PlaySceneBattlecryComp(int client)
{
	TFClassType iClass = TF2_GetPlayerClass(client);
	
	if(iClass == TFClass_Scout)
	{
		switch(GetRandomInt(0, 4))
		{
			/* Let's do this */
			case 0: SpawnScriptedScene(client, "scenes/Player/Scout/low/cm_scout_pregamefirst_02.vcd");
			/* Yeah, let's go! */
			case 1: SpawnScriptedScene(client, "scenes/Player/Scout/low/cm_scout_pregamefirst_09.vcd");
			/* Yeah, welcome to the winnin' team! */
			case 2: SpawnScriptedScene(client, "scenes/Player/Scout/low/cm_scout_pregamefirst_14.vcd");
			/* Everybody got dere fancy hats? Let's go! */
			case 3: SpawnScriptedScene(client, "scenes/Player/Scout/low/cm_scout_pregamefirst_15.vcd");
			/* We waitin' for permission here or what? Come on, let's do dis!. */
			case 4: SpawnScriptedScene(client, "scenes/Player/Scout/low/cm_scout_pregamefirst_17.vcd");
		}		
	}
	else if (iClass == TFClass_Sniper)
	{
		switch(GetRandomInt(0, 3))
		{
			/* Let's given 'em hell, lads! */
			case 0: SpawnScriptedScene(client, "scenes/Player/Sniper/low/cm_sniper_pregamefirst_03.vcd");
			/* Let's win this game, lads! */
			case 1: SpawnScriptedScene(client, "scenes/Player/Sniper/low/cm_sniper_pregamefirst_08.v");
			/* Who wants to win this bloody game? */
			case 2: SpawnScriptedScene(client, "scenes/Player/Sniper/low/cm_sniper_pregamefirst_16.vcd");
			/* Let's show these no-hopers how a Sniper wins a game! */
			case 3: SpawnScriptedScene(client, "scenes/Player/Sniper/low/cm_sniper_pregamefirst_14.vcd");
		}
	}
	else if (iClass == TFClass_Soldier)
	{

	}
	else if (iClass == TFClass_DemoMan)
	{
		switch(GetRandomInt(0, 3))
		{
			/* Let's push 'em back to spawn lads! */
			case 0: SpawnScriptedScene(client, "scenes/Player/Demoman/low/cm_demo_pregamefirst_comp_01.vcd");
			/* Push 'em back, lads! */
			case 1: SpawnScriptedScene(client, "scenes/Player/Demoman/low/cm_demo_pregamefirst_01.vcd");
			/* Stand back and watch how it's done, lads! */
			case 2: SpawnScriptedScene(client, "scenes/Player/Demoman/low/cm_demo_pregamefirst_02.vcd");
			/* Not a single one of 'em can lay a proper sticky! */
			case 3: SpawnScriptedScene(client, "scenes/Player/Demoman/low/cm_demo_pregamefirst_comp_02.vcd");
		}	
	}
	else if (iClass == TFClass_Medic)
	{

	}
	else if (iClass == TFClass_Heavy)
	{

	}
	else if (iClass == TFClass_Pyro)
	{

	}
	else if (iClass == TFClass_Spy)
	{
		switch(GetRandomInt(0, 3))
		{		
			/* I like my teams like I like my romances: in groups of six. */
			case 0: SpawnScriptedScene(client, "scenes/Player/Demoman/low/cm_demo_pregamefirst_comp_02.vcd");
			/* Shall I carry us to victory? I don't mind. */
			case 1: SpawnScriptedScene(client, "scenes/Player/Spy/low/cm_spy_pregamefirst_01.vcd");
			/* Let's push them back! */
			case 2: SpawnScriptedScene(client, "scenes/Player/Spy/low/cm_spy_pregamefirst_07.vcd");
			/* I think we'll win this game. */
			case 3: SpawnScriptedScene(client, "scenes/Player/Spy/low/cm_spy_pregamefirst_12.vcd");
		}
	}
	else if (iClass == TFClass_Engineer)
	{
		switch(GetRandomInt(0, 4))
		{
			/* Howdy howdy! Let's get rowdy! */
			case 0: SpawnScriptedScene(client, "scenes/Player/Engineer/low/cm_engie_pregamefirst_04.vcd");
			/* Come on boys! These Yankees are all hat and no battle! */
			case 1: SpawnScriptedScene(client, "scenes/Player/Engineer/low/cm_engie_pregamefirst_15.vcd");
			/* They won't know what hit 'em! */
			case 2: SpawnScriptedScene(client, "scenes/Player/Engineer/low/cm_engie_pregamefirst_18.vcd");
			/* This button here, builds Teleporters. This button, builds Dispensers. And this little button makes them enemy sum-bitches wish they'd never been born! */
			case 3: SpawnScriptedScene(client, "scenes/Player/Engineer/low/cm_engie_pregamefirst_rare_07.vcd");
			/* Hoo wee! They ain't gonna know what hit 'em! Though it'll likely to be bullets. Statistically speaking. */
			case 4: SpawnScriptedScene(client, "scenes/Player/Engineer/low/cm_engie_pregamefirst_rare_06.vcd");
		}
	}
}

stock void PlaySceneBattlecryUnicorn(int client)
{
	TFClassType iClass = TF2_GetPlayerClass(client);
	
	if(iClass == TFClass_Scout)
	{
		switch(GetRandomInt(0, 5))
		{
			case 0: SpawnScriptedScene(client, "scenes/Player/Scout/low/7018.vcd");
			case 1: SpawnScriptedScene(client, "scenes/Player/Scout/low/7019.vcd");
			case 2: SpawnScriptedScene(client, "scenes/Player/Scout/low/7020.vcd");
			case 3: SpawnScriptedScene(client, "scenes/Player/Scout/low/7021.vcd");
			case 4: SpawnScriptedScene(client, "scenes/Player/Scout/low/7025.vcd");
			case 5: SpawnScriptedScene(client, "scenes/Player/Scout/low/7022.vcd");
		}		
	}
	else if (iClass == TFClass_Sniper)
	{
		switch(GetRandomInt(0, 5))
		{		
			case 0: SpawnScriptedScene(client, "scenes/Player/Sniper/low/7288.vcd"); 
			case 1: SpawnScriptedScene(client, "scenes/Player/Sniper/low/7289.vcd"); 
			case 2: SpawnScriptedScene(client, "scenes/Player/Sniper/low/7291.vcd"); 
			case 3: SpawnScriptedScene(client, "scenes/Player/Sniper/low/7292.vcd"); 
			case 4: SpawnScriptedScene(client, "scenes/Player/Sniper/low/7293.vcd"); 
			case 5: SpawnScriptedScene(client, "scenes/Player/Sniper/low/7295.vcd"); 
		}
	}
	else if (iClass == TFClass_Soldier)
	{
		switch(GetRandomInt(0, 9))
		{			
			case 0: SpawnScriptedScene(client, "scenes/Player/Soldier/low/7457.vcd");
			case 1: SpawnScriptedScene(client, "scenes/Player/Soldier/low/7456.vcd");
			case 2: SpawnScriptedScene(client, "scenes/Player/Soldier/low/7454.vcd");
			case 3: SpawnScriptedScene(client, "scenes/Player/Soldier/low/7455.vcd");
			case 4: SpawnScriptedScene(client, "scenes/Player/Soldier/low/7453.vcd");
			case 5: SpawnScriptedScene(client, "scenes/Player/Soldier/low/7452.vcd");
			case 6: SpawnScriptedScene(client, "scenes/Player/Soldier/low/7458.vcd");
			case 7: SpawnScriptedScene(client, "scenes/Player/Soldier/low/8562.vcd");
			case 8: SpawnScriptedScene(client, "scenes/Player/Soldier/low/8563.vcd");
			case 9: SpawnScriptedScene(client, "scenes/Player/Soldier/low/8564.vcd");
		}   
	}		
	else if (iClass == TFClass_DemoMan)
	{
		switch(GetRandomInt(0, 2))
		{			
			case 0: SpawnScriptedScene(client, "scenes/Player/Demoman/low/7773.vcd");
			case 1: SpawnScriptedScene(client, "scenes/Player/Demoman/low/7776.vcd");
			case 2: SpawnScriptedScene(client, "scenes/Player/Demoman/low/7777.vcd");
		} 
	}
	else if (iClass == TFClass_Medic)
	{
		/* No! */
		SpawnScriptedScene(client, "scenes/Player/Medic/low/628.vcd");
	}
	else if (iClass == TFClass_Heavy)
	{
		switch(GetRandomInt(0, 4))
		{		
			case 0: SpawnScriptedScene(client, "scenes/Player/Heavy/low/6690.vcd");
			case 1: SpawnScriptedScene(client, "scenes/Player/Heavy/low/6691.vcd");
			case 2: SpawnScriptedScene(client, "scenes/Player/Heavy/low/6688.vcd");
			case 3: SpawnScriptedScene(client, "scenes/Player/Heavy/low/8497.vcd");
			case 4: SpawnScriptedScene(client, "scenes/Player/Heavy/low/6689.vcd");
		}
	}
	else if (iClass == TFClass_Pyro)
	{
		/* No! */
		SpawnScriptedScene(client, "scenes/Player/Pyro/low/1507.vcd");
	}
	else if (iClass == TFClass_Spy)
	{
		switch(GetRandomInt(0, 5))
		{			
			case 0: SpawnScriptedScene(client, "scenes/Player/Spy/low/7541.vcd");
			case 1: SpawnScriptedScene(client, "scenes/Player/Spy/low/7542.vcd");
			case 2: SpawnScriptedScene(client, "scenes/Player/Spy/low/7543.vcd");
			case 3: SpawnScriptedScene(client, "scenes/Player/Spy/low/7544.vcd");
			case 4: SpawnScriptedScene(client, "scenes/Player/Spy/low/8551.vcd");
			case 5: SpawnScriptedScene(client, "scenes/Player/Spy/low/8552.vcd");
		}
	}
	else if (iClass == TFClass_Engineer)
	{
		switch(GetRandomInt(0, 1))
		{				
			case 0: SpawnScriptedScene(client, "scenes/Player/Engineer/low/7951.vcd");
			case 1: SpawnScriptedScene(client, "scenes/Player/Engineer/low/7957.vcd");
		}
	}
}

stock void PlaySceneCheers(int client)
{
	TFClassType iClass = TF2_GetPlayerClass(client);
	
	if(iClass == TFClass_Scout)
	{
		switch(GetRandomInt(0, 1))
		{
			/* Crap, we did it! */
			case 0: SpawnScriptedScene(client, "scenes/Player/Scout/low/cm_scout_matchwon_03.vcd");
			/* I love this game! */
			case 1: SpawnScriptedScene(client, "scenes/Player/Scout/low/cm_scout_pregamefirst_comp_01.vcd");
		}		
	}
	else if (iClass == TFClass_Sniper)
	{
		switch(GetRandomInt(0, 5))
		{
			 /* Done and done. */
			case 0: SpawnScriptedScene(client, "scenes/Player/Sniper/low/cm_sniper_gamewon_01.vcd");
			/* Too bloody easy! */
			case 1: SpawnScriptedScene(client, "scenes/Player/Sniper/low/cm_sniper_gamewon_03.vcd");
			/* (Happy laugh) */
			case 2: SpawnScriptedScene(client, "scenes/Player/Sniper/low/cm_sniper_gamewon_10.vcd");
			/* (Laugh) Ices! */
			case 3: SpawnScriptedScene(client, "scenes/Player/Sniper/low/cm_sniper_matchwon_15.vcd");
			/* Yea, we did it! */
			case 4: SpawnScriptedScene(client, "scenes/Player/Sniper/low/cm_sniper_matchwon_11.vcd");
			/* And that's how you win the game! */
			case 5: SpawnScriptedScene(client, "scenes/Player/Sniper/low/cm_sniper_gamewon_07.vcd");
		}
	}
	else if (iClass == TFClass_Soldier)
	{

	}
	else if (iClass == TFClass_DemoMan)
	{

	}
	else if (iClass == TFClass_Medic)
	{

	}
	else if (iClass == TFClass_Heavy)
	{

	}
	else if (iClass == TFClass_Pyro)
	{
		// No scenes
	}
	else if (iClass == TFClass_Spy)
	{

	}
	else if (iClass == TFClass_Engineer)
	{
		// No scenes
	}
}

/* param1 - client, param2 - ? */
public int MenuHandler1(Menu menu, MenuAction action, int param1, int param2)
{
	switch(action)
	{
		case MenuAction_Select:
		{
			char info[32];
			menu.GetItem(param2, info, sizeof(info));
			
			if (StrEqual(info, CHOICE1))
			{
				PlaySceneScream(param1);
			}

			if (StrEqual(info, CHOICE2))
			{
				PlaySceneBattlecryComp(param1);
			}
			
			if (StrEqual(info, CHOICE3))
			{
				PlaySceneBattlecryUnicorn(param1);
			}
			
			if (StrEqual(info, CHOICE4))
			{
				PlaySceneCheers(param1);
			}
		}
 
		case MenuAction_Cancel:
		{
			// ...
		}
 
		case MenuAction_End:
		{
			delete menu;
		}
 
		case MenuAction_DrawItem:
		{
			int style;
			char info[32];
			menu.GetItem(param2, info, sizeof(info), style);
			
			return style;
		}
	}
 
	return 0;
}

public Action Menu_Test1(int client, int args)
{
	Menu menu = new Menu(MenuHandler1, MENU_ACTIONS_ALL);
	
	SetMenuOptionFlags(menu, MENUFLAG_NO_SOUND | MENU_NO_PAGINATION);
	
	menu.SetTitle("");
	menu.AddItem(CHOICE1, "Scream!");
	menu.AddItem(CHOICE2, "Competitive battlecry");
	menu.AddItem(CHOICE3, "Unicorn battlecry");
	menu.AddItem(CHOICE4, "Cheers");
	
	/* Not done yet. */
	menu.AddItem(CHOICE5, "Voice 5");
	menu.AddItem(CHOICE6, "Voice 6");
	menu.AddItem(CHOICE7, "Voice 7");
	menu.ExitButton = true;
	menu.Display(client, 20);
 
	return Plugin_Handled;
}

public void OnPluginStart()
{	
	RegConsoleCmd("voice_menu_4", Menu_Test1);
}