# shot_info_t - csgo

Type | Name | Description
------------ | ------------- | -------------
bool | manual | Is manual shot
[entity_t](../entity_t) | target | Target player
number | backtrack | How many ticks have been backtracked
number | hitchance | Shot hitchance
number | hitbox | Target hitbox
number  | server_hitgroup | Server hitgroup (on hit)
string | result | Result of current shot (hit/spread/desync/unk)
number | tick | Shot tick
bool | safe_point | Did shoot into safe point
[vec3_t](../../../types/vec3_t) | aim_point | Aimpoint position