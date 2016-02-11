#=======================
# Conventions
#=======================
# every table has a default id:0 element that we can fall back to in the interface if something is unknown, a soft nil
# code is a small string key for an icon, when an icon doesn't exist, we use the characters as a fallback as a label
# try to make codes 4 characters or less so that they don't take much width if they have to be used instead of the icon

#----------------------
# Games
#----------------------
# status:2 is playing as I want to first flesh out the minimum start of a game after all the setup and invitations
games = Game.create([{id:0, name:"SpaceOpera", :next_tick => DateTime.new(2016,12,3,0), map_id:0, current_turn_id:0}])

#----------------------
# Turns
#----------------------
# status:2 is received as the first state we are testing is that players see different maps based on authorization
turns = Turn.create([{id:0, number:0, introduction:"Your race has begun to explore the universe", results:""}])

#----------------------
# Maps
#----------------------
maps = Map.create([{id:0, name:"Earth", code:"Eth", rows:20, cols:20, game_id:0}])

#----------------------
# Positions
#----------------------
positions = Position.create([
  {id:0, name: "Unknown",     code:"?",   game_id:0,  color: 0,        first_turn:0, last_turn:0, is_secret:false},
  {id:1, name: "Attuburrk",   code:"Att", game_id:0,  color: 10202,    first_turn:0, last_turn:0, is_secret:false},
  {id:2, name: "Kommolek",    code:"Kom", game_id:0,  color: 1939111,  first_turn:0, last_turn:0, is_secret:false},
  {id:3, name: "Dread Empire",code:"DrE", game_id:0,  color: 43194444, first_turn:0, last_turn:0, is_secret:false}])

#----------------------
# PositionStates
#----------------------
positionStates = PositionState.create([
  {id:0, name: "Unknown:0",
   position_id:0, turn_id:0,
   score:0, trade_value:0,
   money_income:0, materials_income:0, research_income:0,
   saved_money:0, saved_materials:0, saved_research:0
  },
  {id:1, name: "Attuburrk:0",
   position_id:1, turn_id:0,
   score:0, trade_value:0,
   money_income:0, materials_income:0, research_income:0,
   saved_money:0, saved_materials:0, saved_research:0
  },
  {id:2, name: "Kommolek:0",
   position_id:2, turn_id:0,
   score:0, trade_value:0,
   money_income:0, materials_income:0, research_income:0,
   saved_money:0, saved_materials:0, saved_research:0
  },
  {id:3, name: "Dread Empire:0",
   position_id:3, turn_id:0,
   score:0, trade_value:0,
   money_income:0, materials_income:0, research_income:0,
   saved_money:0, saved_materials:0, saved_research:0
  }])

#----------------------
# Regions
#----------------------
regions = Region.create([
  {id:0, name: "Unknown", code:'?',
   map_id: 0, row: 0, col: 0, money:0, materials:1, research:0,
   environment_id:0, position_state_id:0, is_secret:'false'},
  {id:1, name: "Forests of Venkati", code: 'Venk',
   map_id: 0, row: 0, col: 0, money:0, materials:0, research:1,
   environment_id:3, position_state_id:1, is_secret:'false'},
  {id:2, name: "Plateau of Leng", code: 'Leng',
   map_id: 0, row: 1, col: 0, money:0, materials:1, research:1,
   environment_id:1, position_state_id:2, is_secret:'false'},
  {id:3, name: "Hills of Fontaine", code: 'Font',
   map_id: 0, row: 0, col: 2, money:1, materials:0, research:1,
   environment_id:2, position_state_id:3, is_secret:'false'}])

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
environments = Environment.create([
  {id:0, name: 'Unknown',   code: '?', environment_type_id:1, description: 'A mystery'},
  {id:1, name: 'Clear',     code: 'c', environment_type_id:1, description: 'Plain terrain with no modifiers'},
  {id:2, name: 'Hills',     code: 'h', environment_type_id:1, description: '+1 mv land qr <= 2, no mv naval, +1 def vs land'},
  {id:3, name: 'Forest',    code: 'f', environment_type_id:1, description: '+1 mv land, no mv naval, +1 def vs land, +2 def vs air'},
  {id:4, name: 'Mountains', code: 'm', environment_type_id:1, description: '+2 mv land qr <= 2, no mv naval, +2 def vs land'},
  {id:5, name: 'Swamp',     code: 's', environment_type_id:1, description: '+2 mv land qr <= 2, +1 mv land qr <= 4, no mv naval, +1 def vs land, +1 def vs air'},
  {id:6, name: 'Water',     code: 'w', environment_type_id:1, description: 'no mv land'}])

#----------------------
# EnvironmentTypes
#----------------------
environmentTypes = EnvironmentType.create([
  {id:0, name: "Unknown",     code:"?", description: 'A mystery'},
  {id:1, name: "Terrain",   code:"Ter", description: 'Default Earth Terrain Types'},
  {id:2, name: "Space",   code:"Spc", description: 'Default Space Map'}])

#----------------------
# Areas
#----------------------

#----------------------
# RegionsBorders
#----------------------

#----------------------
# BorderTypes
#----------------------
