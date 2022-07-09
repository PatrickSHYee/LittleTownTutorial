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
	// do nothing rn
}

// moving state
if (vx != 0 || vy != 0){
	x += vx;
	y += vy;
}
