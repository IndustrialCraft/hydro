register_tileset("main", {
    tiles = {
        {
            id = "stone",
            aaa = 5
        }
    }
})

register_event("start", function()
    pos1 = pos(0, 0, "lobby")
    print(pos1:is_loaded())
    pos1:load()
    print(pos1:is_loaded())
    tileset("main"):set_at(pos1, "stone")
    print(tileset("main"):get_data_at(pos1).aaa)
end)

register_event("tick", function()
    --print(ticks_passed..":"..seconds_passed)
end)