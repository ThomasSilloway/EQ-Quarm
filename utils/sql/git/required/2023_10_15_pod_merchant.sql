UPDATE npc_types
SET class = 41, -- merchant
	merchant_id = 55158
WHERE ID = 55158; -- Priest of Discord

-- Add enchanted silver bar to their inventory for sale
-- Already set to have a cost of 500 which is the same for normal silver bar
-- Normal silver bar ID = 16500
INSERT INTO merchantlist(merchantid, slot, item) 
VALUES(55158, 0, 16504); -- enchanted silver bar

-- Below are some handy queries for testing the inserts

-- SELECT Name, price, slots FROM items WHERE Name LIKE "%silver bar%";

-- SELECT merchantlist.merchantid, npcs.name, merchantlist.item, items.Name FROM merchantlist AS merchantlist
-- JOIN npc_types AS npcs ON npcs.merchant_id = merchantlist.merchantid
-- JOIN items AS items ON items.id = merchantlist.item
-- WHERE merchantlist.item = 16504;
