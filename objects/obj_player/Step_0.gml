/// @description Insert description here
// You can write your code in this editor

// Check keys for movement
mv_Right = keyboard_check(vk_right);
mv_Right = keyboard_check(ord("D"));
mv_Left = keyboard_check(vk_left);
mv_Left = keyboard_check(ord("A"));
mv_Up = keyboard_check(vk_up);
mv_Up = keyboard_check(ord("W"));
mv_Down = keyboard_check(vk_down);
mv_Down = keyboard_check(ord("S"));

// Calculate movement
vx = ((mv_Right - mv_Left) * walkSpeed);
vy = ((mv_Down - mv_Up) * walkSpeed);

// idle state
if (vx == 0 && vy == 0){
	// Change the idle Sprite based on last direction
	switch dir{
		case 0: {
			sprite_index = spr_player_idle_right_strip04;
			break;
		}
		case 1:{
			sprite_index = spr_player_idle_up_strip04;
			break;
		}
		case 2:{
			sprite_index = spr_player_idle_left_strip04;
			break;
		}
		case 3:{
			sprite_index = spr_Player_idle_down;
			break;
		}
	}
}

// moving state
if (vx != 0 || vy != 0){
	x += vx;
	y += vy;
	
	// Change walking sprite based on direction
	if (vx > 0) {
		sprite_index = spr_player_walk_right_strip04;
		dir = 0;
	}
	if (vx < 0){
		sprite_index = spr_player_walk_left_strip04;
		dir = 2;
	}
	if (vy > 0){
		sprite_index = spr_player_walk_down_strip04;
		dir = 3;
	}
	if (vy < 0){
		sprite_index = spr_player_walk_up_strip04;
		dir = 1;
	}
}
