if (instance_exists(obj_dialogue)) exit;

if (instance_exists(obj_player) && distance_to_object(obj_player) < 8)
{
	can_talk = true;
	if (keyboard_check_pressed(input_key))
	{
		if (npcID == 1) {
			if (global.quest_stage == 0) {
				create_dialog(dialog);
				global.quest_stage = 1;
				quest_started = true;
			}
			else if (global.quest_stage == 1) {
				create_dialog(dialog_afterstarted)
			}
		}
	}
}
else
{
	can_talk = false;
}