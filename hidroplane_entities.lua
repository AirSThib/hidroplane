dofile(minetest.get_modpath("hidroplane") .. DIR_DELIM .. "hidroplane_global_definitions.lua")

--
-- entity
--

hidroplane.vector_up = vector.new(0, 1, 0)

minetest.register_entity('hidroplane:engine',{
initial_properties = {
	physical = false,
	collide_with_objects=false,
	pointable=false,
	visual = "mesh",
    backface_culling = false,
	mesh = "hidroplane_propeller.b3d",
    --visual_size = {x = 3, y = 3, z = 3},
	textures = {"hidroplane_rotor.png", "hidroplane_black.png",},
	},
	
    on_activate = function(self,std)
	    self.sdata = minetest.deserialize(std) or {}
	    if self.sdata.remove then self.object:remove() end
    end,
	    
    get_staticdata=function(self)
      self.sdata.remove=true
      return minetest.serialize(self.sdata)
    end,
	
})

minetest.register_entity('hidroplane:rudder',{
    initial_properties = {
	    physical = false,
	    collide_with_objects=false,
	    pointable=false,
	    visual = "mesh",
	    mesh = "hidroplane_rudder.b3d",
	    textures = {"hidroplane_painting.png",},
	},
    _color="",
	
    on_activate = function(self, std)
	    self.sdata = minetest.deserialize(std) or {}
	    if self.sdata.remove then self.object:remove() end
    end,
	    
    get_staticdata=function(self)
      self.sdata.remove=true
      return minetest.serialize(self.sdata)
    end,
})

minetest.register_entity('hidroplane:elevator',{
    initial_properties = {
	    physical = false,
	    collide_with_objects=false,
	    pointable=false,
	    visual = "mesh",
	    mesh = "hidroplane_elevator.b3d",
	    textures = {"hidroplane_painting.png",},
	},
    _color="",
	
    on_activate = function(self, std)
	    self.sdata = minetest.deserialize(std) or {}
	    if self.sdata.remove then self.object:remove() end
    end,
	    
    get_staticdata=function(self)
      self.sdata.remove=true
      return minetest.serialize(self.sdata)
    end,
})

minetest.register_entity('hidroplane:right_aileron',{
    initial_properties = {
	    physical = false,
	    collide_with_objects=false,
	    pointable=false,
	    visual = "mesh",
	    mesh = "hidroplane_aileron_r.b3d",
	    textures = {"hidroplane_painting.png",},
	},
    _color="",
	
    on_activate = function(self, std)
	    self.sdata = minetest.deserialize(std) or {}
	    if self.sdata.remove then self.object:remove() end
    end,
	    
    get_staticdata=function(self)
      self.sdata.remove=true
      return minetest.serialize(self.sdata)
    end,

})

minetest.register_entity('hidroplane:left_aileron',{
    initial_properties = {
	    physical = false,
	    collide_with_objects=false,
	    pointable=false,
	    visual = "mesh",
	    mesh = "hidroplane_aileron_l.b3d",
	    textures = {"hidroplane_painting.png",},
	},
    _color="",
	
    on_activate = function(self, std)
	    self.sdata = minetest.deserialize(std) or {}
	    if self.sdata.remove then self.object:remove() end
    end,
	    
    get_staticdata=function(self)
      self.sdata.remove=true
      return minetest.serialize(self.sdata)
    end,

})

minetest.register_entity('hidroplane:front_wheels',{
initial_properties = {
	physical = false,
	collide_with_objects=false,
	pointable=false,
	visual = "mesh",
	mesh = "hidroplane_front_wheels.b3d",
    --visual_size = {x = 3, y = 3, z = 3},
	textures = {"hidroplane_metal.png", "hidroplane_metal.png", "hidroplane_black.png", "hidroplane_metal.png", },
	},
	
    on_activate = function(self,std)
	    self.sdata = minetest.deserialize(std) or {}
	    if self.sdata.remove then self.object:remove() end
    end,
	    
    get_staticdata=function(self)
      self.sdata.remove=true
      return minetest.serialize(self.sdata)
    end,
	
})

minetest.register_entity('hidroplane:wheels',{
initial_properties = {
	physical = false,
	collide_with_objects=false,
	pointable=false,
	visual = "mesh",
	mesh = "hidroplane_wheels.b3d",
    --visual_size = {x = 3, y = 3, z = 3},
	textures = {"hidroplane_black.png", "hidroplane_metal.png", },
	},
	
    on_activate = function(self,std)
	    self.sdata = minetest.deserialize(std) or {}
	    if self.sdata.remove then self.object:remove() end
    end,
	    
    get_staticdata=function(self)
      self.sdata.remove=true
      return minetest.serialize(self.sdata)
    end,
	
})

minetest.register_entity('hidroplane:stick',{
initial_properties = {
	physical = false,
	collide_with_objects=false,
	pointable=false,
	visual = "mesh",
	mesh = "hidroplane_stick.b3d",
	textures = {"hidroplane_metal.png", "hidroplane_black.png", "hidroplane_red.png", },
	},
	
    on_activate = function(self,std)
	    self.sdata = minetest.deserialize(std) or {}
	    if self.sdata.remove then self.object:remove() end
    end,
	    
    get_staticdata=function(self)
      self.sdata.remove=true
      return minetest.serialize(self.sdata)
    end,
	
})

--
-- fuel
--
minetest.register_entity('hidroplane:pointer',{
initial_properties = {
	physical = false,
	collide_with_objects=false,
	pointable=false,
	visual = "mesh",
	mesh = "pointer.b3d",
    visual_size = {x = 0.4, y = 0.4, z = 0.4},
	textures = {"hidroplane_grey.png"},
	},
	
    on_activate = function(self,std)
	    self.sdata = minetest.deserialize(std) or {}
	    if self.sdata.remove then self.object:remove() end
    end,
	    
    get_staticdata=function(self)
      self.sdata.remove=true
      return minetest.serialize(self.sdata)
    end,
})

--
-- seat pivot
--
minetest.register_entity('hidroplane:seat_base',{
initial_properties = {
	physical = false,
	collide_with_objects=false,
	pointable=false,
	visual = "mesh",
	mesh = "hidroplane_seat_base.b3d",
    textures = {"hidroplane_black.png",},
	},
	
    on_activate = function(self,std)
	    self.sdata = minetest.deserialize(std) or {}
	    if self.sdata.remove then self.object:remove() end
    end,
	    
    get_staticdata=function(self)
      self.sdata.remove=true
      return minetest.serialize(self.sdata)
    end,
	
})

minetest.register_entity("hidroplane:hidro", {
	initial_properties = {
	    physical = true,
        collide_with_objects = true,
	    collisionbox = {-1.2, -2.31, -1.2, 1.2, 1, 1.2}, --{-1,0,-1, 1,0.3,1},
	    selectionbox = {-2, -2.31, -2, 2, -1, 2},
	    visual = "mesh",
	    mesh = "hidroplane_fuselage.b3d",
        stepheight = 0.5,
        textures = {"hidroplane_black.png", "hidroplane_black.png", "hidroplane_metal.png", "hidroplane_painting.png", 
                    "hidroplane_grey.png", "hidroplane_painting.png", "hidroplane_painting.png", "hidroplane_panel.png", 
                    "hidroplane_painting.png", "hidroplane_glass.png", "hidroplane_glass.png", "hidroplane_black.png", 
                    "hidroplane_grey.png", "hidroplane_black.png", "hidroplane_black2.png",
                    "hidroplane_black.png", "hidroplane_glass.png", "hidroplane_black.png", 
                    "hidroplane_painting.png"},
    },
    textures = {},
	driver_name = nil,
	sound_handle = nil,
    owner = "",
    static_save = true,
    infotext = "A nice hidroplane",
    hp_max = 50,
    buoyancy = 0.25,
    physics = hidroplane.physics,
    _passenger = nil,
    _color = "#ffe400",
    _rudder_angle = 0,
    _acceleration = 0,
    _engine_running = false,
    _angle_of_attack = 2,
    _elevator_angle = 0,
    _power_lever = 0,
    _energy = 0.001,
    _last_vel = {x=0,y=0,z=0},
    _longit_speed = 0,
    _land_retracted = true,
    _show_hud = false,
    _instruction_mode = false, --flag to intruction mode
    _command_is_given = false, --flag to mark the "owner" of the commands now

    get_staticdata = function(self) -- unloaded/unloads ... is now saved
        return minetest.serialize({
            stored_energy = self._energy,
            stored_owner = self.owner,
            stored_hp = self.hp_max,
            stored_color = self._color,
            stored_power_lever = self._power_lever,
            stored_driver_name = self.driver_name,
        })
    end,

	on_activate = function(self, staticdata, dtime_s)
        mobkit.actfunc(self, staticdata, dtime_s)
        if staticdata ~= "" and staticdata ~= nil then
            local data = minetest.deserialize(staticdata) or {}
            self._energy = data.stored_energy
            self.owner = data.stored_owner
            self.hp_max = data.stored_hp
            self._color = data.stored_color
            self._power_lever = data.stored_power_lever
            self.driver_name = data.stored_driver_name
            --minetest.debug("loaded: ", self._energy)
        end
        hidroplane.setText(self)
        self.object:set_animation({x = 1, y = 12}, 0, 0, true)

        local pos = self.object:get_pos()

	    local engine=minetest.add_entity(pos,'hidroplane:engine')
	    engine:set_attach(self.object,'',{x=0,y=0,z=0},{x=0,y=0,z=0})
		-- set the animation once and later only change the speed
        engine:set_animation({x = 1, y = 12}, 0, 0, true)
	    self.engine = engine

	    local rudder=minetest.add_entity(pos,'hidroplane:rudder')
	    rudder:set_attach(self.object,'',{x=0,y=0.12,z=-36.85},{x=0,y=0,z=0})
	    self.rudder = rudder

	    local right_aileron=minetest.add_entity(pos,'hidroplane:right_aileron')
	    right_aileron:set_attach(self.object,'',{x=0,y=8.08,z=-7},{x=0,y=0,z=0})
	    self.right_aileron = right_aileron

	    local left_aileron=minetest.add_entity(pos,'hidroplane:left_aileron')
	    left_aileron:set_attach(self.object,'',{x=0,y=8.08,z=-7},{x=0,y=0,z=0})
	    self.left_aileron = left_aileron

	    local elevator=minetest.add_entity(pos,'hidroplane:elevator')
	    elevator:set_attach(self.object,'',{x=0,y=4,z=-35.5},{x=0,y=0,z=0})
	    self.elevator = elevator

	    local wheels=minetest.add_entity(pos,'hidroplane:wheels')
	    wheels:set_attach(self.object,'',{x=0,y=0,z=0},{x=0,y=0,z=0})
		-- set the animation once and later only change the speed
        wheels:set_animation({x = 1, y = 12}, 0, 0, true)
	    self.wheels = wheels

	    local f_wheels=minetest.add_entity(pos,'hidroplane:front_wheels')
	    f_wheels:set_attach(self.object,'',{x=0,y=-14.2,z=13.5},{x=29.4,y=0,z=0})
		-- set the animation once and later only change the speed
        f_wheels:set_animation({x = 1, y = 12}, 0, 0, true)
	    self.f_wheels = f_wheels

	    local fuel_gauge=minetest.add_entity(pos,'hidroplane:pointer')
        local energy_indicator_angle = hidroplane.get_gauge_angle(self._energy)
	    fuel_gauge:set_attach(self.object,'',HIDROPLANE_GAUGE_FUEL_POSITION,{x=0,y=0,z=energy_indicator_angle})
	    self.fuel_gauge = fuel_gauge

	    local power_gauge=minetest.add_entity(pos,'hidroplane:pointer')
        local power_indicator_angle = hidroplane.get_gauge_angle(self._power_lever)
	    power_gauge:set_attach(self.object,'',HIDROPLANE_GAUGE_POWER_POSITION,{x=0,y=0,z=power_indicator_angle})
	    self.power_gauge = power_gauge

	    local climb_gauge=minetest.add_entity(pos,'hidroplane:pointer')
        local climb_angle = hidroplane.get_gauge_angle(0)
	    climb_gauge:set_attach(self.object,'',HIDROPLANE_GAUGE_CLIMBER_POSITION,{x=0,y=0,z=climb_angle})
	    self.climb_gauge = climb_gauge

	    local speed_gauge=minetest.add_entity(pos,'hidroplane:pointer')
        local speed_angle = hidroplane.get_gauge_angle(100)
	    speed_gauge:set_attach(self.object,'',HIDROPLANE_GAUGE_SPEED_POSITION,{x=0,y=0,z=speed_angle})
	    self.speed_gauge = speed_gauge

        local pilot_seat_base=minetest.add_entity(pos,'hidroplane:seat_base')
        pilot_seat_base:set_attach(self.object,'',{x=0,y=-4,z=2},{x=0,y=0,z=0})
	    self.pilot_seat_base = pilot_seat_base

        local passenger_seat_base=minetest.add_entity(pos,'hidroplane:seat_base')
        passenger_seat_base:set_attach(self.object,'',{x=0,y=-5,z=-6},{x=0,y=0,z=0})
	    self.passenger_seat_base = passenger_seat_base

	    local stick=minetest.add_entity(pos,'hidroplane:stick')
	    stick:set_attach(self.object,'',{x=0,y=-6.85,z=8},{x=0,y=0,z=0})
	    self.stick = stick

        hidroplane.paint(self, self.object, self._color, "hidroplane_painting.png")
        hidroplane.paint(self, self.elevator, self._color, "hidroplane_painting.png")
        hidroplane.paint(self, self.rudder, self._color, "hidroplane_painting.png")
        hidroplane.paint(self, self.right_aileron, self._color, "hidroplane_painting.png")
        hidroplane.paint(self, self.left_aileron, self._color, "hidroplane_painting.png")

		self.object:set_armor_groups({immortal=1})
	end,

    on_step = mobkit.stepfunc,
    logic = hidroplane.flightstep,

	on_punch = function(self, puncher, ttime, toolcaps, dir, damage)
		if not puncher or not puncher:is_player() then
			return
		end
		local name = puncher:get_player_name()
        if self.owner and self.owner ~= name and self.owner ~= "" then return end
        if self.owner == nil then
            self.owner = name
        end
        	
        if self.driver_name and self.driver_name ~= name then
			-- do not allow other players to remove the object while there is a driver
			return
		end

        local touching_ground, liquid_below = hidroplane.check_node_below(self.object)
        
        local is_attached = false
        if puncher:get_attach() == self.object then is_attached = true end

        local itmstck=puncher:get_wielded_item()
        local item_name = ""
        if itmstck then item_name = itmstck:get_name() end

        if is_attached == false then
            if hidroplane.loadFuel(self, puncher:get_player_name()) then
                return
            end

            --repair
            if (item_name == "hidroplane:repair_tool" or item_name == "trike:repair_tool") and self._engine_running == false  then
                if self.hp_max < 50 then
                    local inventory_item = "default:steel_ingot"
                    local inv = puncher:get_inventory()
                    if inv:contains_item("main", inventory_item) then
                        local stack = ItemStack(inventory_item .. " 1")
                        local taken = inv:remove_item("main", stack)
                        self.hp_max = self.hp_max + 10
                        if self.hp_max > 50 then self.hp_max = 50 end
                        hidroplane.setText(self)
                    end
                end
                return
            end

            -- deal with painting or destroying
		    if itmstck then
			    local _,indx = item_name:find('dye:')
			    if indx then

                    --lets paint!!!!
				    local color = item_name:sub(indx+1)
				    local colstr = hidroplane.colors[color]
                    --minetest.chat_send_all(color ..' '.. dump(colstr))
				    if colstr then
                        hidroplane.paint(self, self.object, colstr, "hidroplane_painting.png")
                        hidroplane.paint(self, self.elevator, colstr, "hidroplane_painting.png")
                        hidroplane.paint(self, self.rudder, colstr, "hidroplane_painting.png")
                        hidroplane.paint(self, self.right_aileron, colstr, "hidroplane_painting.png")
                        hidroplane.paint(self, self.left_aileron, colstr, "hidroplane_painting.png")
					    itmstck:set_count(itmstck:get_count()-1)
					    puncher:set_wielded_item(itmstck)
				    end
                    -- end painting

			    else -- deal damage
				    if not self.driver and toolcaps and toolcaps.damage_groups and toolcaps.damage_groups.fleshy and item_name ~= hidroplane.fuel then
					    --mobkit.hurt(self,toolcaps.damage_groups.fleshy - 1)
					    --mobkit.make_sound(self,'hit')
                        self.hp_max = self.hp_max - 10
                        minetest.sound_play("collision", {
	                        object = self.object,
	                        max_hear_distance = 5,
	                        gain = 1.0,
                            fade = 0.0,
                            pitch = 1.0,
                        })
                        hidroplane.setText(self)
				    end
			    end
            end

            if self.hp_max <= 0 then
                hidroplane.destroy(self)
            end

        end
        
	end,

	on_rightclick = function(self, clicker)
		if not clicker or not clicker:is_player() then
			return
		end

        local name = clicker:get_player_name()

        if self.owner == "" then
            self.owner = name
        end

        --check if is the owner
        if self.owner == name then
            -- pilot section
            local can_access = true
            if hidroplane.restricted == "true" then
                can_access = minetest.check_player_privs(clicker, {flight_licence=true})
            end
            if can_access then
	            if name == self.driver_name then
                    --=========================
                    --  dettach player
                    --=========================
                    -- eject passenger if the plane is on ground
                    local touching_ground, liquid_below = hidroplane.check_node_below(self.object)
                    if self.isinliquid or touching_ground then --isn't flying?
                        --ok, remove pax
                        if self._passenger then
                            local passenger = minetest.get_player_by_name(self._passenger)
                            if passenger then hidroplane.dettach_pax(self, passenger) end
                        end
                    else
                        --give the control to the pax
                        if self._passenger then
                            hidroplane.transfer_control(self, true)
                        end
                    end
                    self._instruction_mode = false
                    hidroplane.dettachPlayer(self, clicker)
                    --[[ sound and animation
                    if self.sound_handle then
                        minetest.sound_stop(self.sound_handle)
                        self.sound_handle = nil
                    end
                    self.engine:set_animation_frame_speed(0)]]--
	            elseif not self.driver_name then
                    --=========================
                    --  attach player
                    --=========================
                    --attach player
                    local is_under_water = hidroplane.check_is_under_water(self.object)
                    if is_under_water then return end

                    --remove pax to prevent bug
                    if self._passenger then
                        local passenger = minetest.get_player_by_name(self._passenger)
                        if passenger then hidroplane.dettach_pax(self, passenger) end
                    end

		            if clicker:get_player_control().sneak == true then
                        -- flight instructor mode
                        self._instruction_mode = true
                        hidroplane.attach(self, clicker, true)
                    else
                        -- no driver => clicker is new driver
                        self._instruction_mode = false
                        hidroplane.attach(self, clicker)
                    end
                    self._command_is_given = false
	            end
            else
                minetest.show_formspec(name, "hidroplane:flightlicence",
                    "size[4,2]" ..
                    "label[0.0,0.0;Sorry ...]"..
                    "label[0.0,0.7;You need a flight licence to fly it.]" ..
                    "label[0.0,1.0;You must obtain it from server admin.]" ..
                    "button_exit[1.5,1.9;0.9,0.1;e;Exit]")
            end
            -- end pilot section
        else
            --passenger section
            --only can enter when the pilot is inside
            local message = core.colorize('#ff0000', " >>> You aren't the owner of this airplane.")
            if self.driver_name ~= nil then
                local player = minetest.get_player_by_name(self.driver_name)
                if player then
                    if self._passenger == nil then
                        hidroplane.attach_pax(self, clicker)
                    else
                        hidroplane.dettach_pax(self, clicker)
                    end
                else
                    minetest.chat_send_player(clicker:get_player_name(), message)
                end
            else
                minetest.chat_send_player(clicker:get_player_name(), message)
            end
        end
	end,
})
