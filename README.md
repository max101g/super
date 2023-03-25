# super api


### Models ###
 1. hero_model- A Hero has many Powers through HeroPowers
 2. power_model- A Power has many Heros through HeroPowers
 3. heropower_model- A HeroPower belongs to a Hero and belongs to a Power

### Tables ###
 1. heros
 2. powers
 3. heropowers

### Controllers ###
 1. heroes_controller
 2. powers_controller
 3. heropowers_controller

### Serializers ###
 1. hero_serializer
 2. hero_show_serializer
 3. power_serializer
 4. heropower_serializer


 ### Validations ###
 1. Strength must not be blank && must be one of the following values: 'Strong', 'Weak', 'Average'
 2. Description must not be blank && must be present and at least 20 characters long
 3. hero_id && power_id must be numerals && must not be blank.
 4. name must not be blank.

 ### Routes ###

 1. GET /heroes must return the below 
 2. GET /heroes/:id
 3. GET /powers
 4. GET /powers/:id
 5. PATCH /powers/:id
 6. POST /hero_powers