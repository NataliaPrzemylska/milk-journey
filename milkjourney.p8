pico-8 cartridge // http://www.pico-8.com
version 42
__lua__
#include dynamic_level_objects.lua
#include collision.lua
#include player.lua
#include levels.lua
#include main.lua
__gfx__
00000000003333000033330000333300000000000033330000000000000000000000000000000000000000000000000000000000000000000000000000000000
00333300003bbbb0003bbbb0003bbbb000333300003bbbb00000000000000b000000000000000000000000000000000000000000000000000000000000000000
003bbbb000bbbbb000bbbbb000bbbbb0003bbbb000bbbbb00000000000000bbb0000000000000000000000000000000000000000000000000000000000000000
00bbbbb000b3333000b3333000b3333000bbbbb000b333300000000033bbb3bb0000000000000000000000000000000000000000000000000000000000000000
00b333300b7bb7b00b7bb7b0007bb7000bb333300b7bb7b000000000bb33bb000000000000000000000000000000000000000000000000000000000000000000
0b7bb7b000777700007777000b7777b0007bb7b000777700000000003bbbbb000000000000000000000000000000000000000000000000000000000000000000
0077770000777b0000b0030000777700007777000077770000000000333333000000000000000000000000000000000000000000000000000000000000000000
00b00b0000b0000000000b000b00b000000b00b000b00b0000000000300003000000000000000000000000000000000000000000000000000000000000000000
0bbbbbb00bbbbbb00bbbbbb00bbbbbbbbbbbbbb0bbbbbbbbb033b030b3bb300b0000000000000000000000000000000000000000000000000000000000000000
b3b00b0bb3b0030bb33b0b0bb00bb3000333bb0b00330033033b033300330b330000000000000000000000000000000000000000000000000000000000000000
b030000bb000000bb0030030b00b00000000300b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
3000b00b3000300bb00b003bb00b00b00b0000030000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
30030003300300033000300bb0030003300000030000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
30000003300000033000000330000000000000030000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
30000003300000033000000330000000000000030000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
03333330033333300333333003333333333333303333333333333333333333330000000000000000000000000000000000000000000000000000000000000000
00008888888800008822882200000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00080008000080000082220000000000000000000000000008000088000000800000000000000000000000000000000000000000000000000000000000000000
00080002000080000000000000000000000000000000000088080888088000800000000000000000000000000000000000000000000000000000000000000000
88200002200008880000000000000000000000000000000088888880082808800000000000000000000000000000000000000000000000000000000000000000
20000000000000080000000000000000000000000000000008888880082888800000000000000000000000000000000000000000000000000000000000000000
20008802008800020000000000000000000000000008000088828822002288200000000000000000000000000000000000000000000000000000000000000000
02228822228822200000000000080000000700000087800022228820008288000000000000000000000000000000000000000000000000000000000000000000
00008800008800000000000000022000000770000008200000022200000222000000000000000000000000000000000000000000000000000000000000000000
03333330033333300333333003333333333333300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
30000003300000033000000330000000000000030000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
30000003300000033000000b30000000000000030000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
3003000330003003b000b00bb0000b30b00000030000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
3000b00b3003000bb003000bb000000b030000030000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
bb00030bb000000bb000003bb0300000000030030000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
b330030bb300b0bbb0b3030bb0b3330000033b0b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0bbbbbb00bbbbbb00b3bbbb00bbbbbb33bbbbbb00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
03333bb00bb333300bbbbbb00bbbbbbbbbbbbbbbbbbbbbb000000000000000000000000000000000000000000000000000000000000000000000000000000000
3000000bb0b00003b3300b03300033b0000b33b000b0000300000000000000000000000000000000000000000000000000000000000000000000000000000000
3000000bb00000033000000333b00000000000003300000300000000000000000000000000000000000000000000000000000000000000000000000000000000
3000b0bbbb0b00030333333003333333333333333333333000000000000000000000000000000000000000000000000000000000000000000000000000000000
30030030bb0030030000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
30000030b00000030000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
3000000bb03000030000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
03333bb00bbb33b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0333bbb00bb333300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
3003000bb30000030000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
300300b0b30000030000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
3000b0bbb00030030000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
3003000bb00b00030000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
3000000bb30000030000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
300000bbb03000030000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
033333b00bbb33300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
03333bb00bbb33300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
3000003bbb0000030000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
3000003bb00000030000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
300300bbb00b00030000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
3000300b3b00b0030000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
3000000b3b0000030000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
3000003bb00000030000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0333bbb00bb333300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
03333bb00bbbb3300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
3000000bb00000030000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
300000bbb00000030000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
3000003b3bb000030000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
3000003b3b0000030000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
30000003bb0000030000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
3000b003b000b0030000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
30030003b000b0030000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
300030bb300300030000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
3003003bb30030030000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
3000003bb30000030000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
3000003bb00000030000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
3000033b300000030000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
30000003300000030000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
30000003300000030000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
033bbbb00bb333300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00555000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
05000500005550000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00500050050005000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00500050005000500000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00500550005005500000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00500000005000050000005000000050000505000000000000055500000000000000000000000000000000000000000000000000000000000000000000000000
05050050050500550555050500500505055555000000000000500055000000000000000000000000000000000000000000000000000000000000000000000000
05055555550555055505550555050505550505000000000005000000500000000000000000000000000000000000000000000000000000000000000000000000
05050505050505050505050505055505050505000000005555500000050000000000000000000000000000000000000000000000000000000000000000000000
05050505050505050505050505050505050505000000550000000000555500000000005555555555550000000000000000000000000000000000000000000000
05050505050505050505050505050505050555000005000000000005000050000000550505500000005500000000000000000000000000000000000000000000
05555555555555555555555555555555555505000055000000005500000050000005050505055555555550000000000000000000000000000000000000000000
05000000000000000000000000000000500005000500500000050000000050000050000000005000000005000000000000000000000000000000000000000000
05055505555055550555505555055550500505000500000000000000000050000050000000005555555555000000555555555555555500000000505050505000
05500050000500005000050000500005505005000050000000000000005500000500000000000500000000500005050005000500050050000005050505050550
05500050000500005000050000500005505005000050000000005505550000000500500500500500000000500005050005000500050050000005050505050505
05000500005000050000500005000050505555000005000000055050550000000500550505050555555555500005050005000500050050000055555555555505
05000500005000050000500005000050505005000000555555505005000000005000000000000050000000050050005000500050005005000500000000000555
50005000555500500005000050000500505005000000000050050050000000005000000000000050000000050050005000500050005005000505505005050505
55555555000055555555555555555500500555000000000005050550000000005050505050505050000000050050005000500050005000500500000000000505
05000000000000000000000000000000500005000000000000500500000000000555555555555555555555550500000500050005000500500055555555555555
05000000005555000000000000000000500005000000000000500500000000000500000000000500000000500500000500050005000500050050000000005005
05000000050000500500050005000500500055000000000000505000000000000500000000000500000000505000000050005000500050050050505005005005
05000050050000505000505000505000550505000000000000505000000000000500500000500500000000505500500555555555555555550050505005005005
05005005050000500500500505005050505505000000000000500500000000000505150005050505555550500505050500000000000000500050005000005005
05050055055500500550055555005055555555000000000000500050000000000505050005050500000000500505050500500050005050500050055005005005
05555505050000500555550505555555500005000000000055005005500000000505550005550505555550500505050500550050055050500050500500505005
05050505050000500505050505050505500005000000000500050550050000000500000000000500000000500505050500000000000000500050500500005005
05555555555555555555555555555555555555000000005555500005555000000500000000000500000000500555555555555555555555500055555555555555
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000cccccc000000000555555555555555500ccc000
000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c77c000000000056666665566666650ccccc00
000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c77c00000000665665566556566565cc000c00
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c7777c0066666666655556656655665cc000c00
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c7777c0666666666666666656655665cccccc00
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c7777c00666660000000000565665650ccccc00
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c7777c00060060000000000566666650cc0cc00
000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000cccc0000600600000000005555555500000000
__gff__
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010300
__map__
fe0000000000000000000000000000fefe0000000000000000000000000000fefe0000000000000000000000000000fe0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
fe0000000000000000000000000000fefe0000000000000000000000000000fefe0000000000000000000000000000fe0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
fe000000000000000000fefefefe00fefe000000000000000000000000000000fe0000000000000000000000000000fe0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
fe00000000fdfdfe00000000000000fefe00000000000000000000000000fefefe0000000000000000000000000000fe0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
fe0000fe000000fe0000000000000000fe00000000000000000000fefe00fefefe00000000000000fc000000000000fe0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
fefefefefefefefefefefefefefefefefe00000000000000fefe00fefefefe00fe000000000000fefefe0000000000fe0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000fe00000000fefe00fefefefe00000000fe0000000000fefefefefe00000000fe0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000fe0000fe00fefefefe00000000000000fe00000000fefefefefefefe000000fe0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000000000000000000000000000000000fefefefe0000000000000000000000000000fefefefefefefefefe0000fe0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000fefefefe000000000000000000000000fefefefefefefefefefefefefefefefe0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
