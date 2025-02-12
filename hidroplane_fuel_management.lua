function hidroplane.contains(table, val)
    for k,v in pairs(table) do
        if k == val then
            return v
        end
    end
    return false
end

function hidroplane.loadFuel(self, player_name)
    local player = minetest.get_player_by_name(player_name)
    local inv = player:get_inventory()

    local itmstck=player:get_wielded_item()
    local item_name = ""
    if itmstck then item_name = itmstck:get_name() end

    local stack = nil
    local fuel = hidroplane.contains(hidroplane.fuel, item_name)
    if fuel then
        stack = ItemStack(item_name .. " 1")

        if self._energy < 10 then
            local taken = inv:remove_item("main", stack)
            self._energy = self._energy + fuel
            if self._energy > 10 then self._energy = 10 end

            local energy_indicator_angle = hidroplane.get_gauge_angle(self._energy)
            self.fuel_gauge:set_attach(self.object,'',HIDROPLANE_GAUGE_FUEL_POSITION,{x=0,y=0,z=energy_indicator_angle})
        end
        
        return true
    end

    return false
end

function hidroplane.consumptionCalc(self, accel)
    if accel == nil then return end
    if self._energy > 0 and self._engine_running and accel ~= nil then
        local zero_reference = vector.new()
        local acceleration = hidroplane.get_hipotenuse_value(accel, zero_reference)
        local consumed_power = self._power_lever/500000
        --minetest.chat_send_all('consumed: '.. consumed_power)
        self._energy = self._energy - consumed_power;

        local energy_indicator_angle = hidroplane.get_gauge_angle(self._energy)
        if self.fuel_gauge:get_luaentity() then
            self.fuel_gauge:set_attach(self.object,'',HIDROPLANE_GAUGE_FUEL_POSITION,{x=0,y=0,z=energy_indicator_angle})
        else
            --in case it have lost the entity by some conflict
            --self.fuel_gauge=minetest.add_entity(HIDROPLANE_GAUGE_POINTER_POSITION,'hidroplane:pointer')
            --self.fuel_gauge:set_attach(self.object,'',HIDROPLANE_GAUGE_FUEL_POSITION,{x=0,y=0,z=energy_indicator_angle})
        end
    end
    if self._energy <= 0 and self._engine_running and accel ~= nil then
        self._engine_running = false
        if self.sound_handle then minetest.sound_stop(self.sound_handle) end
	    self.engine:set_animation_frame_speed(0)
    end
end
