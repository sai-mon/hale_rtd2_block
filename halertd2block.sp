#include <rtd2>
#include <saxtonhale>
 
public Plugin myinfo =
{
	name = "Hale RTD Block",
	author = "Saimon",
	description = "Blocks hale from using the Roll The Dice in the RTD (Revamped) sourcemod plugin",
	version = "1.0",
}
 
public void OnPluginStart()
{}

public Action RTD2_CanRollDice(int client) {
	if(client == GetClientOfUserId(VSH_GetSaxtonHaleUserId())) {
		ReplyToCommand(client, "[SM] Naughty hale, you don't get to roll the dice.");
		return Plugin_Handled;
	}
	else {
		return Plugin_Continue;
	}
}