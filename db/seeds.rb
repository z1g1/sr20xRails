# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# Environment variables (ENV['...']) can be set in the file config/application.yml.
# See http://railsapps.github.io/rails-environment-variables.html
packet_list = ["Standard","Hardcore","Masters"]

packet_list.each do |packet|
	Packet.create(:title => packet)
end

mission_list = [
	[1,'Destruction','<p>The first player to earn at least 5 control points and have more control points than the opponent immediately wins the game.<p>If time runs out before a player has won the game via scenario or assassination victory, break the tie as outlined on the Scenario Reference Sheet. For the 3rd tiebreaker, double the army points within the zone.','Mark a zone (12 inch × 6 inch rectangle) and place two Critical Asset objectives in accordance with the diagram below. The objective on Player 1''s side of the table is a friendly Faction model to Player 1 and vice versa. Starting on the second player''s second turn, at the end of each player''s turn a player earns control points (CP) as follows.<ul><li><strong>Artifice</strong>: Kill Box</li><li><strong>Enemy Objective: Destroyed/Removed from Play = 1 CP (once per objective)</strong></li><li><strong> Zone: Control = 1 CP, Dominate = 2 CP</strong></li></ul>','Only the active player scores when multiple players dominate the same zone or flag.','maps-2014-standard-destruction.jpg','objective-2014-standard-Critical-Asset.jpg'],
	[1,'Supply and Demand','<p>The first player to earn at least 5 control points and have more control points than the opponent immediately wins the game.<p>If time runs out before a player has won the game via scenario or assassination victory, break the tie as outlined on the Scenario Reference Sheet. For the 3rd tiebreaker, double the army points within the zone','Mark a zone (12 inch-diameter circle) and place two Supply Cache objectives in accordance with the diagram below. The objective on Player 1''s side of the table is a friendly Faction model to Player 1 and vice versa. Starting on the second player''s second turn, at the end of each player''s turn a player earns control points (CP) as follows:<ul><li><strong>Artifice</strong>: Kill Box</li><li><strong>Zone: Control = 1 CP, Dominate = 2 CP </strong></li><li><strong>Enemy Objective: Destroyed/Removed from Play = 1 CP (once per objective)</strong></li></ul>','Only the active player scores when multiple players dominate the same zone or flag.','maps-2014-standard-Supply-and-Demand.png','objective-2014-standard-supply-cache.png'],
	[1,'Balance of Power','<p>The first player to earn at least 5 control points and have more control points than the opponent immediately wins the game.<p>If time runs out before a player has won the game via scenario or assassination victory, break the tie as outlined on the Scenario Reference Sheet. For the 3rd tiebreaker, double the army points within the zone.','Mark a zone (12 inch × 6 inch rectangle) and place two flags in accordance with the diagram below. Starting on the second player''s second turn, at the end of each player''s turn a player earns control points (CP) as follows:<ul><li>Friendly Flag: Dominate = Opponent loses 1 CP before players score CPs this turn (minimum = 0) </li><li>Zone: Control = 1 CP, Dominate = 2 CP </li><li>Enemy Flag: Control = 1 CP, Dominate = 2 CP </li></ul>','Only the active player scores when multiple players dominate the same zone or flag.','maps-2014-standard-Balance-of-Power.png',''],
	[1,'Process of Elimination','<p>The first player to earn at least 5 control points and have more control points than the opponent immediately wins the game.<p>If time runs out before a player has won the game via scenario or assassination victory, break the tie as outlined on the Scenario Reference Sheet. For the 3rd tiebreaker, double the army points within each zone','Mark two zones (12 inch × 6 inch rectangles) and place two Monolith objectives in accordance with the diagram below. The Monolith objectives are enemy models to all other models. Only the player who destroys/removes from play a Monolith earns 1 control point. Starting on the second player''s second turn, at the end of each player''s turn a player earns control points (CP) as follows:<ul><li><strong>Artifice</strong>: Kill Box</li><li>Objective: Destroyed/Removed from Play = 1 CP (once per objective) </li><li>Zone: Control = 1 CP, Dominate = 2 CP </li></ul>','Only the active player scores when multiple players dominate the same zone or flag. ','maps-2014-standard-Process-of-Elimination.png','objective-2014-standard-monolith.png'],
	[1,'Close Quarters ','<p>The first player to earn at least 5 control points and have more control points than the opponent immediately wins the game.<p>If time runs out before a player has won the game via scenario or assassination victory, break the tie as outlined on the Scenario Reference Sheet. For the 3rd tiebreaker, double the army points within 4 inches of the enemy flag.','Place two flags in accordance with the diagram below. Starting on the second player''s second turn, at the end of each player''s turn a player earns control points (CP) as follows: <ul><li><strong>Artifice</strong>: Kill Box</li><li>Friendly Flag: Dominate = 1 CP </li><li>Enemy Flag: Control = 1 CP, Dominate = 2 CP </li></ul>','Only the active player scores when multiple players dominate the same zone or flag.','maps-2014-standard-close-quarters.png',''],
	[1,'Two Fronts','<p>The first player to earn at least 5 control points and have more control points than the opponent immediately wins the game.<p>If time runs out before a player has won the game via scenario or assassination victory, break the tie as outlined on the Scenario Reference Sheet. For the 3rd tiebreaker, double the army points within the enemy zone','Mark two zones (12 inch × 6 inch rectangles) and place two Supply Cache objectives in accordance with the diagram below. The objective on Player 1''s side of the table is a friendly Faction model to Player 1 and vice versa. Starting on the second player''s second turn, at the end of each player''s turn a player earns control points (CP) as follows:<ul><li>Friendly Zone: Dominate = 1 CP </li><li>Enemy Zone: Control = 1 CP, Dominate = 2 CP </li><li>Enemy Objective: Destroyed/Removed from Play = 1 CP (once per objective) </li></ul>','Only the active player scores when multiple players dominate the same zone or flag','maps-2014-standard-two-fronts.png','objective-2014-standard-supply-cache.png'],
	[1,'Incoming','<p>The first player to earn at least 5 control points and have more control points than the opponent immediately wins the game.<p>If time runs out before a player has won the game via scenario or assassination victory, break the tie as outlined on the Scenario Reference Sheet. For the 3rd tiebreaker, double the army points within the enemy zone.','Mark two zones (12 inch × 6 inch rectangles) and place two Ammunition Cache objectives in accordance with the diagram below. The objective on Player 1''s side of the table is a friendly Faction model to Player 1 and vice versa. Starting on the second player''s second turn, at the end of each player''s turn a player earns control points (CP) as follows<ul><li>Friendly Zone: Dominate = 1 CP </li><li>Enemy Zone: Control = 1 CP, Dominate = 2 CP </li><li>Enemy Objective: Destroyed/Removed from Play = 1 CP (once per objective) </li></ul>',': Only the active player scores when multiple players dominate the same zone or flag.','maps-2014-standard-incoming.png','objective-2014-standard-Ammunition-Cache.png'],
	[1,'Rally Point','<p>The first player to earn at least 5 control points and have more control points than the opponent immediately wins the game.<p>If time runs out before a player has won the game via scenario or assassination victory, break the tie as outlined on the Scenario Reference Sheet. For the 3rd tiebreaker, double the army points within the enemy zone','Mark two zones (12 inch-diameter circle) and place two Effigy objectives in accordance with the diagram below. The objective on Player 1''s side of the table is a friendly Faction model to Player 1 and vice versa. Starting on the second player''s second turn, at the end of each player''s turn a player earns control points (CP) as follows:<ul><li>Friendly Zone: Dominate = 1 CP </li><li>Enemy Zone: Control = 1 CP, Dominate = 2 CP </li><li>Enemy Objective: Destroyed/Removed from Play = 1 CP (once per objective) </li></ul>','Only the active player scores when multiple players dominate the same zone or flag. ','maps-2014-standard-rally-point.png','objective-2014-standard-Effigy.png'],
	[1,'Incursion','<p>The first player to earn at least 5 control points and have more control points than the opponent immediately wins the game<p>If time runs out before a player has won the game via scenario or assassination victory, break the tie as outlined on the Scenario Reference Sheet. For the 3rd tiebreaker, double the army points within 4 inches of each flag','Place three flags in accordance with the diagram below. At the end of the second player''s first turn, randomly remove a non-center flag from the table. Starting on the second player''s second turn, at the end of each player''s turn a player earns control points (CP) as follows:<ul><li>Outer Flag: Control = 1 CP, Dominate = 2 CP </li><li>Center Flag: Control = 1 CP, Dominate = 1 CP </li></ul>','Only the active player scores when multiple players dominate the same zone or flag.','maps-2014-standard-incursion.png',''],
	[1,'Outflank','<p>The first player to earn at least 5 control points and have more control points than the opponent immediately wins the game.<p>If time runs out before a player has won the game via scenario or assassination victory, break the tie as outlined on the Scenario Reference Sheet. For the 3rd tiebreaker, double the army points within each zone.','Mark two zones (12 inch-diameter circle) in accordance with the diagram below. Starting on the second player''s second turn, at the end of each player''s turn a player earns control points (CP) as follows:<ul><li>Zone: Control = 1 CP, Dominate = 2 CP </li></ul>','Only the active player scores when multiple players dominate the same zone or flag','maps-2014-standard-outflank.png',''],
	[1,'Into the Breach','<p>The first player to earn at least 5 control points and have more control points than the opponent immediately wins the game.<p>If time runs out before a player has won the game via scenario or assassination victory, break the tie as outlined on the Scenario Reference Sheet. For the 3rd tiebreaker, double the army points within the zone and within 4 inches of the flag.','Mark a zone (12 inch-diameter circle) and place a flag and two Effigy objectives in accordance with the diagram below. The objective on Player 1''s side of the table is a friendly Faction model to Player 1 and vice versa. Starting on the second player''s second turn, at the end of each player''s turn a player earns control points (CP) as follows:<ul><li>Zone: Control = 1 CP, Dominate = 2 CP </li><li>Flag: Dominate = 1 CP </li><li>Enemy Objective: Destroyed/Removed from Play = 1 CP (once per objective) </li></ul>','Only the active player scores when multiple players dominate the same zone or flag.','maps-2014-standard-into-the-breach.png','objective-2014-standard-Effigy.png'],
	[1,'Fire Support','<p>The first player to earn at least 5 control points and have more control points than the opponent immediately wins the game.<p>If time runs out before a player has won the game via scenario or assassination victory, break the tie as outlined on the Scenario Reference Sheet. For the 3rd tiebreaker, double the army points within 4 inches of each flag.','Place two flags and two Ammunition Cache objectives in accordance with the diagram below. The objective on Player 1''s side of the table is a friendly Faction model to Player 1 and vice versa. Starting on the second player''s second turn, at the end of each player''s turn a player earns control points (CP) as follows:<ul><li><strong>Artifice</strong>: Kill Box</li><li>Flag: Control = 1 CP, Dominate = 2 CP </li><li>Enemy Objective: Destroyed/Removed from Play = 1 CP (once per objective) </li></ul>','Enemy objectives contest flags within 4 inches.<p>Only the active player scores when multiple players dominate the same zone or flag','maps-2014-standard-fire-support.png','objective-2014-standard-Ammunition-Cache.png'],
	[3,'Destruction','<p>The first player to earn at least 5 control points and have more control points than the opponent immediately wins the game.<p>If time runs out before a player has won the game via scenario or assassination victory, break the tie as outlined on the Scenario Reference Sheet. For the 3rd tiebreaker, double the army points within the zone.','Mark a zone (12 inch × 6 inch rectangle) and place two Critical Asset objectives in accordance with the diagram below. The objective on Player 1''s side of the table is a friendly Faction model to Player 1 and vice versa. Starting on the second player''s second turn, at the end of each player''s turn a player earns control points (CP) as follows.<ul><li><strong>Artifice</strong>: Kill Box</li><li><strong>Enemy Objective: Destroyed/Removed from Play = 1 CP (once per objective)</strong></li><li><strong> Zone: Control = 1 CP, Dominate = 2 CP</strong></li></ul>','Only the active player scores when multiple players dominate the same zone or flag.','maps-2014-standard-destruction.jpg','objective-2014-standard-Critical-Asset.jpg'],
	[3,'Balance of Power','<p>The first player to earn at least 5 control points and have more control points than the opponent immediately wins the game.<p>If time runs out before a player has won the game via scenario or assassination victory, break the tie as outlined on the Scenario Reference Sheet. For the 3rd tiebreaker, double the army points within the zone.','Mark a zone (12 inch × 6 inch rectangle) and place two flags in accordance with the diagram below. Starting on the second player''s second turn, at the end of each player''s turn a player earns control points (CP) as follows:<ul><li>Friendly Flag: Dominate = Opponent loses 1 CP before players score CPs this turn (minimum = 0) </li><li>Zone: Control = 1 CP, Dominate = 2 CP </li><li>Enemy Flag: Control = 1 CP, Dominate = 2 CP </li></ul>','Only the active player scores when multiple players dominate the same zone or flag.','maps-2014-standard-Balance-of-Power.png',''],
	[3,'Close Quarters ','<p>The first player to earn at least 5 control points and have more control points than the opponent immediately wins the game.<p>If time runs out before a player has won the game via scenario or assassination victory, break the tie as outlined on the Scenario Reference Sheet. For the 3rd tiebreaker, double the army points within 4 inches of the enemy flag.','Place two flags in accordance with the diagram below. Starting on the second player''s second turn, at the end of each player''s turn a player earns control points (CP) as follows: <ul><li><strong>Artifice</strong>: Kill Box</li><li>Friendly Flag: Dominate = 1 CP </li><li>Enemy Flag: Control = 1 CP, Dominate = 2 CP </li></ul>','Only the active player scores when multiple players dominate the same zone or flag.','maps-2014-standard-close-quarters.png',''],
	[3,'Incursion','<p>The first player to earn at least 5 control points and have more control points than the opponent immediately wins the game<p>If time runs out before a player has won the game via scenario or assassination victory, break the tie as outlined on the Scenario Reference Sheet. For the 3rd tiebreaker, double the army points within 4 inches of each flag','Place three flags in accordance with the diagram below. At the end of the second player''s first turn, randomly remove a non-center flag from the table. Starting on the second player''s second turn, at the end of each player''s turn a player earns control points (CP) as follows:<ul><li>Outer Flag: Control = 1 CP, Dominate = 2 CP </li><li>Center Flag: Control = 1 CP, Dominate = 1 CP </li></ul>','Only the active player scores when multiple players dominate the same zone or flag.','maps-2014-standard-incursion.png',''],
	[3,'Outflank','<p>The first player to earn at least 5 control points and have more control points than the opponent immediately wins the game.<p>If time runs out before a player has won the game via scenario or assassination victory, break the tie as outlined on the Scenario Reference Sheet. For the 3rd tiebreaker, double the army points within each zone.','Mark two zones (12 inch-diameter circle) in accordance with the diagram below. Starting on the second player''s second turn, at the end of each player''s turn a player earns control points (CP) as follows:<ul><li>Zone: Control = 1 CP, Dominate = 2 CP </li></ul>','Only the active player scores when multiple players dominate the same zone or flag','maps-2014-standard-outflank.png',''],
	[3,'Fire Support','<p>The first player to earn at least 5 control points and have more control points than the opponent immediately wins the game.<p>If time runs out before a player has won the game via scenario or assassination victory, break the tie as outlined on the Scenario Reference Sheet. For the 3rd tiebreaker, double the army points within 4 inches of each flag.','Place two flags and two Ammunition Cache objectives in accordance with the diagram below. The objective on Player 1''s side of the table is a friendly Faction model to Player 1 and vice versa. Starting on the second player''s second turn, at the end of each player''s turn a player earns control points (CP) as follows:<ul><li><strong>Artifice</strong>: Kill Box</li><li>Flag: Control = 1 CP, Dominate = 2 CP </li><li>Enemy Objective: Destroyed/Removed from Play = 1 CP (once per objective) </li></ul>','Enemy objectives contest flags within 4 inches.<p>Only the active player scores when multiple players dominate the same zone or flag','maps-2014-standard-fire-support.png','objective-2014-standard-Ammunition-Cache.png'],
	#[2,'Deathmatch','<p>The player with the last remaining warcaster or warlock wins the game.<p>If time runs out before a player has won the game via assassination victory, the player with the most Pressure Points wins the game.<p>If Pressure Points are tied, tally the point cost of the remaining models and units owned by each player, using the guidelines below. The player with more army points worth of models remaining wins the game.<ul><li>When calculating model value, use the values printed on the model/unit’s card even if that model/unit was created during the game (e.g., Prime Axiom Servitors) or received a discount during army building (e.g., Call of the Wild Tier 4 Theme Force benefit).</li><li>Double the value of non-warcaster/warlock models and units (rounded up) within the zone. </li><li>Ignore models without a PC, inert warjacks, wild warbeasts, and fleeing models. </li><li>Warcasters and warlocks are worth 5 points regardless of warjack/warbeast points. Warcasters and warlocks consisting of multiple models with the warcaster/warlock type are worth only 5 points regardless of the number remaining.When calculating model value, use the values printed on the model/unit’s card even if that model/unit was created during the game (e.g., Prime Axiom Servitors) or received a discount during army building (e.g., Call of the Wild Tier 4 Theme Force benefit).</li><li>Double the value of non-warcaster/warlock models and units (rounded up) within the zone. </li><li>Ignore models without a PC, inert warjacks, wild warbeasts, and fleeing models. </li><li>Warcasters and warlocks are worth 5 points regardless of warjack/warbeast points. Warcasters and warlocks consisting of multiple models with the warcaster/warlock type are worth only 5 points regardless of the number remaining.</li></ul>', '<p>Mark a zone (12 inch-diameter circle) in accordance with the diagram below. A player can measure 14 inch from any board edge during his warcaster/warlock’s activation.</p><ul><li>At the end of each player''s turn, starting on the first player''s second turn, if a player ends his own turn with a friendly warcaster or warlock that is completely within 14 inch of a board edge, his opponent gains one Pressure Point.</li><li>At the end of each player’s turn, starting on the second player’s second turn, if the player controls or dominates the zone he gains one Pressure Point.</li><li>A player controls the zone if he owns one or more models that are not immobile, fleeing, wild, or inert within it and no opponent contests it. A player owns the models in his fielded army list and any models created by abilities of those models. There are no additional requirements for solos, warjacks, or warbeasts. For a non-warcaster/warlock unit to control a zone, the unit must contain 50% or more of its starting number (rounding up) and all those remaining models must be within the zone.</li><li>A player dominates the zone if he owns one or more warcaster/warlock models within it and no opponent contests it. When two or more warcasters/warlocks dominate the zone, only the active player’s warcaster/warlock dominates. A player cannot control and dominate the zone in the same turn.</li><li>A player must control at least one model within the zone to contest that zone. Warcasters, warlocks, inert warjacks, wild warbeasts, models that are fleeing, and models that are out of formation cannot contest. </li><li>When a player gains a Pressure Point his opponent’s warcaster(s)/warlock(s) suffer 5 points of magical damage  that cannot be transferred. Additionally, the warcaster(s)/warlock(s) lose Tough, cannot be healed, and cannot have damage removed for one round. If the Pressure Point is gained by dominating the zone, increase the damage suffered by 2 points.</li></ul>','Only the active player dominates when multiple players dominate a zone','maps-2014-hardcore-Deathmatch.png',''], 
]

mission_list.each do |mission|
	Mission.create(:id => mission[0],:name => mission[1],:packet_id => mission[2],:victory => mission[3],:specialRules => mission[4],:tacticalTips => mission[5],:map => mission[6],:objective => mission[7])
end


puts 'ROLES'
YAML.load(ENV['ROLES']).each do |role|
  Role.find_or_create_by_name({ :name => role }, :without_protection => true)
  puts 'role: ' << role
end
puts 'DEFAULT USERS'
user = User.find_or_create_by_email :name => ENV['ADMIN_NAME'].dup, :email => ENV['ADMIN_EMAIL'].dup, :password => ENV['ADMIN_PASSWORD'].dup, :password_confirmation => ENV['ADMIN_PASSWORD'].dup
puts 'user: ' << user.name
user.add_role :admin

