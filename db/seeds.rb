#=======================
# Conventions
#=======================
# every table has a default id:1 element that we can fall back to in the interface if something is unknown,
# 'code' is a small string key for an icon,
# when an icon doesn't exist, we use the code characters as a fallback for a short label in the interface
# try to make codes 4 characters or less so that they don't take much width if they have to be used instead of the icon

Game.delete_all
Turn.delete_all
Map.delete_all
Position.delete_all
PositionState.delete_all
Region.delete_all
Environment.delete_all
EnvironmentType.delete_all
Area.delete_all
RegionsBorder.delete_all
BorderType.delete_all

#----------------------
# Games
#----------------------
# status:2 is playing as I want to first flesh out the minimum start of a game after all the setup and invitations
games = Game.create!([{id:1, name:"SpaceOpera", :next_tick => DateTime.new(2016,12,3,0), map_id:1, current_turn_id:1}])

#----------------------
# Turns
#----------------------
# status:2 is received as the first state we are testing is that players see different maps based on authorization
turns = Turn.create!([{ id:1, number:1, game_id:1,
                       introduction:"Your race has begun to explore the universe. good luck.",
                       results:""}])

#----------------------
# Maps
#----------------------
maps = Map.create!([{id:1, name:"Earth", code:"Eth", rows:20, cols:20, game_id:1}])

#----------------------
# Positions
#----------------------
positions = Position.create!([
  {id:1, name: "Unknown",     code:"?",   game_id:1,  color: 0,        first_turn:1, last_turn:1, is_secret:false},
  {id:2, name: "Terrans", code:"Ant", game_id:1,  color: 10202,    first_turn:1, last_turn:1, is_secret:false},
  {id:3, name: "Arachnids",    code:"Kom", game_id:1,  color: 1939111,  first_turn:1, last_turn:1, is_secret:false},
  {id:4, name: "Robotoids",code:"DrE", game_id:1,  color: 43194444, first_turn:1, last_turn:1, is_secret:false}])

#----------------------
# PositionStates
#----------------------
positionStates = positions.each do |p|
  PositionState.create!({  name: p.name + ':1',
                     position_id:p.id, turn_id:1,
                     score:0, trade_value:0,
                     money_income:0, materials_income:0, research_income:0,
                     saved_money:0, saved_materials:0, saved_research:0
  })
end

#----------------------
# Regions
#----------------------
(1..maps[0].rows).each do |r|
  (1..maps[0].cols).each do |c|
    # in the future get a list of names and randomize them
    # and init the position_state_id to a colection of regions per position
    Region.create!(
         name: r.to_s + ":" + c.to_s, code:r.to_s + ":" + c.to_s,
         map_id: 1, row: r, col: c,
         money:0, materials:1, research:0,
         environment_id:1, position_state_id:1, is_secret:'false')
  end
end
regions = Region.all

#----------------------
# Environments
#----------------------
# Elements in the "description" of environment will eventually become a set of constraints
# a constraint can be of type mv (type: land|sea|air), qr, or a function
# qr is a quality rating, for example an air qr of 2 might be able to fly,
# but 4 might mean fly in the atmosphere and >10 might mean space travel
# typical value ammounts are +1, -1, *2 *.5, or a function
# when these descriptions are made into a set of constraints
# we can compute these automatically and or use a long description field for game manual descriptions
# then that field will be xml or markdown for rich text
environments = Environment.create!([
  {id:1, name: 'Unknown',   code: '?', environment_type_id:2, description: 'A mystery'},
  {id:2, name: 'Clear',     code: 'c', environment_type_id:2, description: 'Plain terrain with no modifiers'},
  {id:3, name: 'Hills',     code: 'h', environment_type_id:2, description: '+1 mv land qr <= 2, no mv naval, +1 def vs land'},
  {id:4, name: 'Forest',    code: 'f', environment_type_id:2, description: '+1 mv land, no mv naval, +1 def vs land, +2 def vs air'},
  {id:5, name: 'Mountains', code: 'm', environment_type_id:2, description: '+2 mv land qr <= 2, no mv naval, +2 def vs land'},
  {id:6, name: 'Swamp',     code: 's', environment_type_id:2, description: '+2 mv land qr <= 2, +1 mv land qr <= 4, no mv naval, +1 def vs land, +1 def vs air'},
  {id:7, name: 'Water',     code: 'w', environment_type_id:2, description: 'no mv land'}])

#----------------------
# EnvironmentTypes
#----------------------
environmentTypes = EnvironmentType.create!([
  {id:1, name: "Unknown",     code:"?", description: 'A mystery'},
  {id:2, name: "Terrain",   code:"Ter", description: 'Default Earth Terrain Types'},
  {id:3, name: "Space",   code:"Spc", description: 'Default Space Map'}])

#----------------------
# Areas
#----------------------
areas = Area.create!([
  {id:1, name: "Unknown", code:"?", description: 'A mysterious area'}])

#----------------------
# RegionsBorders
#----------------------
regionsBorders = RegionsBorder.create!([
  {id:1, name: "Unknown", source_id:1, sink_id:1, border_type_id:1, is_secret:false}])

#----------------------
# BorderTypes
#----------------------
borderType = BorderType.create!([
  {id:1, name: "Unknown", code:"?", description:"who knows", is_directional:false}])
