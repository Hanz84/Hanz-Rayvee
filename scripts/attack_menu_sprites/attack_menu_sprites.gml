enum enum_attack_items
{
	none,lightning_cone,total
	
	
}
enum enum_attack_items_type
{
	description,total
	
}
attack_items = ds_grid_create(enum_attack_items.total,2);
ds_grid_clear(attack_items,0);