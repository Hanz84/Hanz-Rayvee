/// @description Adds an item and a quantity into the inventory in a valid slot.
/// @function scr_gain_item(item_ID, amount);
/// @param item_ID
/// @param amount

var iid = argument0;
var amount = argument1;

var slot = 0; //A temporary variable to loop through the slots
var inventory_width = ds_grid_width(global.inventory);

while (slot < inventory_width)
{
    //Searching for a matching inventory slot
    if (global.inventory[# slot, 0] == iid)
    {
        global.inventory[# slot, 1] += amount;
        return true; //Did set the slot
        exit; //Exit function, because it has set the slot
    }
    slot ++; //Increment slot to test next position
}

slot = 0;
while (slot < inventory_width)
{
    //Searching for an empty inventory slot
    if (global.inventory[# slot, 0] == item.none)
    {
        global.inventory[# slot, 0] = iid;
        global.inventory[# slot, 1] += amount;
        return true; //Did set the slot
        exit; //Exit function, because it has set the slot
    }
    slot ++; //Increment slot to test next position
}
return false; //Did not set slot