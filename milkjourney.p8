pico-8 cartridge // http://www.pico-8.com
version 42
__lua__
#include dynamic_level_objects.lua
#include collision.lua
#include player.lua
#include levels.lua
#include effects_dialogue.lua
#include visual_effects.lua
#include musicman.lua
#include main.lua
__gfx__
00000000033330000333300003333000000000000333300000000000000000000000000000000000000000000000000000000000000000000000000000000000
0333300003bbbb0003bbbb0003bbbb000333300003bbbb000000000000000b000030030000000000000000000000000000000000000000000003333000000000
03bbbb000bbbbb000bbbbb000bbbbb0003bbbb000bbbbb000000000000000bbb00b00300000000000000000000000000000000000000000000bbbb3000000000
0bbbbb000b3333000b3333000b3333000bbbbb000b3333000000000033bbb3bb00b77b00000000000000000000000000000000000000000000bbbbb000000000
0b333300b7bb7b00b7bb7b0007bb7000bb333300b7bb7b0000000000bb33bb000b7777b00000000000000000000000000000000000000000003333b000000000
b7bb7b000777700007777000b7777b0007bb7b0007777000000000003bbbbb00037777b0000000000000000000000000000000000000000000b7bb7b00000000
077770000777b0000b00300007777000077770000777700000000000333333000377773000000000000000000000000000000000000000000007777000000000
0b00b0000b0000000000b000b00b000000b00b000b00b0000000000030000300003333000000000000000000000000000000000000000000000b00b000000000
00000000000000000033330000333300003333000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000033bbb30033bbb30033bbb300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
003333000000000003bbbb0003bbbb0003bbbb000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
003bbbb00000000033bbbb0033bbbb0033bbbb000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00bbbbb0003333003bcbbcb03bcbbcb03bcbbcb00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
03b33330003bbbb033cccc0033cccc0033cccc000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0777700007bbbbb033cccc0033cccb0033bccc000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
b000b000b7b3333000b00b0000b0000000000b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000888888880000cc11cc11000000000000000000000000000000000a0a0a10010000100000000001a0a0a00100001000000000000000000000000000000000
000800080000800000c11100000000000000000000000000000000000aaaaaa001cccc10010000100aaaaaa001cccc1001000010000000000000000000000000
000800020000800000000000000000000000000000000000000000000c1cc1c00c1cc1c001cccc100c1cc1c00c1cc1c001cccc10000000000000000000000000
882000022000088800000000000000000000000000000000000000000cc7cc700cc7cc700c1cc1c007cc7cc007cc7cc00c1cc1c0000000000000000000000000
200000000000000800000000000000000000000000000000000000000c1111100c1111100cc7cc70011111c0011111c007cc7cc0000000000000000000000000
2000880200880002000000000000000000000000000000000000000011ccccc111ccccc10c1111101ccccc111ccccc11011111c0000000000000000000000000
02228822228822200000000000000000000000000000000000000000011111100111111011ccccc101111110011111101ccccc11000000000000000000000000
00008800008800000000000000000000000000000000000000000000010001000100010001000100001000100010001000100010000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
03333330033333300333333003333333333333300bbbbbb00bbbbbbbbbbbbbbbbbbbbbb0000000000000000000000000055555500777b77007b7bb7005555550
3000000330000003300000033000000000000003b3300b03300033b0000b33b000b000030000000000000000000000005000000570000b07700b000750000005
30000003300000033000000b30000000000000033000000333b000000000000033000003000000000000000000000000500000057000000b700000b750000005
3003000330003003b000b00bb0000b30b00000030333333003333333333333333333333000000000000000000000000050050005b00b0007700b00bb50050005
3000b00b3003000bb003000bb000000b0300000300000000000000000000000000000000000000000000000000000000500050057b00b007b000700750005005
bb00030bb000000bb000003bb03000000000300300000000000000000000000000000000000000000000000000000000500000057b0000077b00000750000005
b330030bb300b0bbb0b3030bb0b3330000033b0b0000000000000000000000000000000000000000000000000000000050000005b0000b07700000b750000005
0bbbbbb00bbbbbb00b3bbbb00bbbbbb33bbbbbb0000000000000000000000000000000000000000000000000000000000555555007b777b0077bb77005555550
0bbbbbb00bbbbbb00bbbbbb00bbbbbbbbbbbbbb0bbbbbbbbb033b030b3bb300b00000000000000000000000000000000055555500777bb7007bb7b7005555550
b3b00b0bb3b0030bb33b0b0bb00bb3000333bb0b00330033033b033300330b33000000000000000000000000000000005000000570000bb77000000750000005
b030000bb000000bb0030030b00b00000000300b0000000000000000000000000000000000000000000000000000000050000005b0000b0bb000000b50000005
3000b00b3000300bb00b003bb00b00b00b0000030000000000000000000000000000000000000000000000000000000050050005b00b000b7b0b000b50050005
30030003300300033000300bb00300033000000300000000000000000000000000000000000000000000000000000000500050057b0070077b00b00750005005
30000003300000033000000330000000000000030000000000000000000000000000000000000000000000000000000050000005b0000b07b00000bb50000005
300000033000000330000003300000000000000300000000000000000000000000000000000000000000000000000000500000057000b00770000b0750000005
0333333003333330033333300333333333333330333333333333333333333333000000000000000000000000000000000555555007b7777007777bb005555550
0333bbb003333bb003333bb003333bb00bbbb33000000000000000000000000000000000000000000000000000000000055555500b777b700bbb7b7005555550
3003000b3000003b3000000b3000000bb0000003000000000000000000000000000000000000000000000000000000005000000570b00007bb00000b50000005
300300b03000003b3000000b300000bbb000000300000000000000000000000000000000000000000000000000000000500000057b0000bbbb0000bb50000005
3000b0bb300300bb3000b0bb3000003b3bb0000300000000000000000000000000000000000000000000000000000000500050057b00b007b0b7000750050005
3003000b3000300b300300303000003b3b0000030000000000000000000000000000000000000000000000000000000050050005b007000b7000b00b50005005
3000000b3000000b3000003030000003bb0000030000000000000000000000000000000000000000000000000000000050000005b0000007b000000750000005
300000bb3000003b3000000b3000b003b000b0030000000000000000000000000000000000000000000000000000000050000005700bb0077000b00b50000005
033333b00333bbb003333bb030030003b000b0030000000000000000000000000000000000000000000000000000000005555550077b7b700b7bb7b005555550
0bb333300bbb33300bb33330300030bb3003000300000000000000000000000000000000000000000000000000000000055555500bbb7b7007bb7b7005555550
b3000003bb000003b0b000033003003bb300300300000000000000000000000000000000000000000000000000000000500000057000000bb000000b50000005
b3000003b0000003b00000033000003bb30000030000000000000000000000000000000000000000000000000000000050000005700000bbbb00000b50000005
b0003003b00b0003bb0b00033000003bb00000030000000000000000000000000000000000000000000000000000000050005005bb00b00b7b00700750005005
b00b00033b00b003bb0030033000033b30000003000000000000000000000000000000000000000000000000000000005005000570070007b007000b50050005
b30000033b000003b0000003300000033000000300000000000000000000000000000000000000000000000000000000500000057b0000bb700000b750000005
b0300003b0000003b03000033000000330000003000000000000000000000000000000000000000000000000000000005000000570000b077b00000750000005
0bbb33300bb333300bbb33b0033bbbb00bb3333000000000000000000000000000000000000000000000000000000000055555500777bbb00777b77005555550
0000007777000000000000000000000000000000000000000b0b7770000000000000000000000000000000000000000000000000000000000000000000000000
0000bb000077000000000077770000000000000000000000b077b0bb000000000000000000000000000000000000000000000000000000000000000000000000
000700000000700000007700007700000000000000000000b0b0070b000000000000000000000000000000000000000000000000000000000000000000000000
007000bbb0000700000700000000700000500000007000007b300077000000000000000000000000000000000000000000000000000000000000000000000000
0b0007000bb770700070000000000700050555500b077b7070300077000000000000000000000000000000000000000000000000000000000000000000000000
0b007000b000077000700000000007000050505000b0b070703000b7000000000000000000000000000000000000000000000000000000000000000000000000
70007007000000700b000000000000700000000000000000b0b000bb000000000000000000000000000000000000000000000000000000000000000000000000
7000b0700000000007007000000700b0000000000000000007b00070000000000000000000000000000000000000000000000000000000000000000000000000
b0000bb0000000000700000b0b00007000000000000000000b077770000000000000000000000000000000000000000000000000000000000000000000000000
b007b0b0000000000b000000b00000b00000000000000000b00000bb000000000000000000000000000000000000000000000000000000000000000000000000
0b700bb00000000000b0000000000b000000000000000000b0b3300b000000000000000000000000000000000000000000000000000000000000000000000000
0b700b070000000000b0000000000b0000700000005000007b333307000000000000000000000000000000000000000000000000000000000000000000000000
00b7b000b0000000000b00000000b0000b077b700505555070333307000000000000000000000000000000000000000000000000000000000000000000000000
000b00000bbbb0000000bb0000bb000000b0b0700050505070337307000000000000000000000000000000000000000000000000000000000000000000000000
0000bb0000bb0000000000bbbb0000000000000000000000b0b333bb000000000000000000000000000000000000000000000000000000000000000000000000
000000bbbb0000000000000000000000000000000000000007b33370000000000000000000000000000000000000000000000000000000000000000000000000
00005000000070000555555507777777000707000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00005000000070005000000578000087000707000007770000000000000000000000000000000000000000000000000000000000000000000000000000000000
00050500000787000500005007800870000777000070007000000000000000000000000000000000000000000000000000000000000000000000000000000000
00500500007807000500005007800870000777000070000700000000000000000000000000000000000000000000000000000000000000000000000000000000
05000050078008700050050000780700000777000007000700000000000000000000000000000000000000000000000000000000000000000000000000000000
05000050078008700005050000078700007007700007000700000000000000000000000000000000000000000000000000000000000000000000000000000000
50000005780000870000500000007000000707700007707000000000000000000000000000000000000000000000000000000000000000000000000000000000
05555555077777770000500000007000000000700007070000000000000000000000000000000000000000000000000000000000000000000000000000000000
00007000000050000777777705555555000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00007000000050007800008750000005000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00078700000505000780087005000050000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00780700005005000780087005000050000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
07800870050000500078070000500500000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
07800870050000500007870000050500000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
78000087500000050000700000005000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
07777777055555550000700000005000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00500000005000050000005000000050000505000000000000055500000000000000000000000000000000000000000000000000000000000000000000000000
05050050050500550555050500500505055555000000000000500055000000000000000000000000000000000000000000000000000000000000000000000000
05055555550555055505550555050505550505000000000005000000500000000000000000000000000000000000000000000000000000000000000000000000
05050505050505050505050505055505050505000000005555500000050000000000000000000000000000000055500000000000000000000000000000000000
05050505050505050505050505050505050505000000550000000000555500000000005555555555550000000500050000555000000000000000000000000000
05050505050505050505050505050505050555000005000000000005000050000000550505500000005500000050005005000500000000000000000000000000
05555555555555555555555555555555555505000055000000005500000050000005050505055555555550000050005000500050000000000000000000000000
05000000000000000000000000000000500005000500500000050000000050000050000000005000000005000050055000500550000000000000000000000000
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
05005005050000500500500505005050505505000000000000500500000000000505050005050505555550500505050500000000000000500050000000005005
05050055055500500550055555005055555555000000000000500050000000000505050005050500000000500505050500500050005050500050055005005005
05555505050000500555550505555555500005000000000055005005500000000505550005550505555550500505050500550050055050500050500500505005
05050505050000500505050505050505500005000000000500050550050000000500000000000500000000500505050500000000000000500050500500005005
05555555555555555555555555555555555555000000005555500005555000000500000000000500000000500555555555555555555555500055555555555555
__gff__
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003030303030101010100000004060604030302030302020200000000040606040303020202000000000000000406060403030202020000000000000004060604
0000000004040000000000000000000000000000040402000000000000000000040404040000000000000000000000000404040400000000000000000000000000000000000000000000000303000000000000000000000000000003030300000000000000000000000000030303000000000000000000000000000000000003
__map__
60ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff4949494949494949494949491a1a1a1a1a1a1a1a1a1a1a1a1a1a1affffff71ff63ffffffffffffffffffffffffff09090000000000000000000000000000000000000000000000000000000000000063000000000000000000000000000071
62000000000000000000000000000000000000000000000000000000000000ff000000000000000000000000000000000000000000000000000000000000007200730000000000000000000000000000090942434441004143444100000000000000000000000000000000000000000073000000000000464800000000000072
6300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006400610000000000000000000000000000434442000043444100000072000000000043444142000042404344434442000061000000000000000000000000000071
73000000000000000000000000000000000000000000000000000000000000000000000000535400000000000000515263000000000000000000000000000074006100000000000000000000000052524200000000b2b2b200000000710000006342000040414344000000410043444242000000000000000000005d5d000072
6200000000000000000000000000000000000000000000000000000000000000000000000000000000006e0000007100735200000000000000000000000000700063000000000000000000000000720096000000000000000000850070000000730000000000400000000000000000009600000000000000a100000000000064
6200000000000000000000000000000000000000000000000000000000000000004d4d00000000000000000000006400006200000000000000000000000000700073000000000000000000000000700040000000000000000000000000640000600000000000000000b0a1000000505160000000000000006300005e5e000074
6100000000000000000000000000535452510000000000000000000000000000000000000000000000000000000074000062630000000000070000000000006400610000000000000000000000007200ff000000000000000046474800740000610000000000000000505200000000007300004500000000730000000000002b
6000000000000000000000000000630000620000000000000000000000000000004647480000005d5d5d00000000710000007350c6c70041514200000000007400610000000000000000000000006400ff6e6e000000000000000000007200006200000000000000000000000000000063000000000045006300005d5d000071
6200000000000000000000000071730000610000c8c9ca000000000000c5c6c70000c0c1c2c3c400000000000000640000000063d6d74052005241c8c9ca00720061c8c9ca000000000000c5c6c77400ff000000000000000000000000004344600000a1a1a1006d6d6d000029000000739400006e0000007300000000000064
6100dbdcdd000000000000005354000000000000d8d9da000000dedf00d5d6d70000d0d1d2d3d40000dedf005052740000000073e642500000005040d9da0064007dd8d9da000000000000d5d6d77100ff00006d6d6d0000004e4e4e00000000000000516d6d00000000005354000000434400002c0000000000000000464874
6300ebeced120000000000007000000000000000e8e9ea000000eeef00e5e6e70000e0e1e2e3e40000eeef006400000000000060405200000000005241ea0074007de8e9eab0b0b0000028e5e6e77200ff00000000000000000000000000000050515200000000000000000000000000002900002b0000000000000000000000
7352525354525253545354525200000057555755555557555756555555565555525053545052505354525354740000000000005250000000000000005153545050535450505053545050505354535400222222222222222222222222222253540000002222222222222222222222222253545052535450505150535450515251
0000000000000000000000000000000062414171414140717140535440714252000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000292928282828292c2b2b2b2b2b2b00000000002929292929292929292929292a00000000000000000000000000000000
0000000000000000000000000000000051000000000000000000000000000071000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000051000000000000000000000000000052000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000052000000000000000000000000000070000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
63ffffffffffffffffffffffffffff6451000000000000000000000000000071000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
7365650000000000000000000000007452000000000000000000000000000061000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
6127650000000000000000000000000063000000000000000000000000000096000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
5354500000000000000000000000000073000000000000000000000008000072000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0062000000000000000000000000535463000000000085000010000045000071000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0063000000000000000000000050516473002900000045464748000000000052000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0073000000000000000000006400007452464748450000000000000000000072000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0061000000000000000000007400007152000000000000000000000000000064000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
006200004648000053540000710000705000dedf0000c8c9ca00c5c6c7002b74000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
434400000000000000000053540000646000eeef0000d8d9da00d5d6d7005c70000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
5e9694002b2b2b2b2b2b2b7100000074705c6c5c0000e8e9ea00e5e6e76c5c62000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
51535452555657555557555200000051726c5c6c5c6c5c6c5c6c5c6c5c6c5c72000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__sfx__
370800001c65128661346510000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
370800002365123661236510000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
370c00001c0731c0731c0730000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
360c00002307323073230730000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
081000001715419104191041810420154191041a1041b1041e1541d1041f104201041c15421104201041e104171541c1041b1041910420154131040d1040d1041e1541110419104221041c1542c1043310400104
0810000016154001040010400104201540010400104001041e1540010400104001041c15400104001040010423154001040010400104201540010400104001041e1540010400104001041c154001040010400104
0910000017154000001900018000201540010400104001041e1540010400104001041c15400104001040010419154001040010400104201540010400104001041e1540010400104001041c154001040010400104
081000001b154001040010400104201540010400104001041e1540010400104001041c15400104001040010419154001040010400104201540010400104001041e1540010400104001041c154001040010400104
081000001b154001040010400104201540010400104001041e1540010400104001041c1540010400104001042815400104001040010423154001040010400104201540010400104001041c154001040010400104
081000002015400104001040010423154001040010400104201540010400104001042315400104001040010420154001040010400104231540010400104001042015400104001040010423154001040010400104
9810000000102001021c1320010200102001021c1320010200102001021b132001020010200102191320010200102001021c1320010200102001021c1320010200102001021b1320010200102001021913200002
9810000000102001021c1320010200102001021c1320010200102001021b132001020010200102191320010200102001021e1320010200102001021c1320010200102001021b1320010200102001021913200102
9810000000102001021c1320010200102001021c1320010200102001021b132001020010200102171320010200102001021c1320010200102001021c1320010200102001021b1320010200102001021913200102
9810000000002000021c1320000200002000021c1320000200002000021b1320000200002000021b1320000200002000021c1320000200002000021c1320000200002000021b1320000200002000021913200002
9810000000102001021c1320010200102001021c1320010200102001021b1320010200102001021b132001020010200102201320010200102001021c132001020010200102171320010200102001021e13200102
98100000001020010227132030020010200102281320010200102001022713200102001020010228132001020010200102281320010200102001022a132001020010200102281320010200102001022a13200102
300400001c0001e000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
910400002877600706347760070628776007063477600706287760070634776007062870000700287000070028700347000070028700347000070028700347002877434774007032877434774007032877434774
46040000285312c551385310000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
46040000285312b551375310000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
04100000177520070200702007021c7520070200702007021e7520070200702007021f752007020070200702177520070200702007021c7520070200702007021e7520070200702007021f752007020070200702
4c100000007051f7351e7351c735007051f7351e7351c735007051f7351e7351c735007051f7351e7351c735007051f7351e7351c735007051f7351e7351c735007051f7351e7351c735007051f7351e7351c735
04100000167520070200702007021c7520070200702007021e7520070200702007021f752007020070200702167520070200702007021c7520070200702007021e7520070200702007021f752007020070200702
4c100000007051e7351c7351b735007051f7351e7351c735007051f7351e7351c735007051f7351e7351c735007051e7351c7351b735007051f7351e7351c735007051f7351e7351c735007051f7351e7351c735
04100000177720000200002000021c7620000200002000021e7620000200002000021f7620000200002000020b7720000200002000021c7620000200002000021e7620000200002000021f762000020000200002
041000001c7520070200702007021f75200702007020070222752007020070200702237520070200702007021c7520070200702007021f7520070200702007022275200702007020070223752007020070200702
0410000028762007020070200702237620070200702007021f7620070200702007021c76200702007020070228762007020070200702237620070200702007021f7620070200702007021c762007020070200702
0410000028752007020070200702237520070200702007021f7520070200702007021c75200702007020070227742007020070200702237420070200702007021e7420070200702007021b742007020070200702
0410000025732007020070200702227320070200702007021e7320070200702007021973200702007020070228722007020070200702237220070200702007021f7120070200702007021c712007020070200702
4c10000000705237351f7351c735007051f7351c73517735007051c73517735137350070517735137351073500705237351f7351c735007051f7351c73517735007051c735177351373500705177351373510735
4c100000007051e7351c7351e735007051e7351c7351e735007051e7351c7351e735007051e7351c7351e735007051c7251b7251c725007051c7251b7251c725007051c7251b7251c725007051c7251b7251c725
4c100000007051b715197151b715007051b715197151b715007051b715197151b715007051b715197151b715007051e7151c7151e715007051e7151c7151e715007051e7351c7351e735007051e7351c7351e735
000800001c0501e0502005021050230501c050000000000000000000001c072200721c062200621c052200521c042200421c032200321c022200221c012200121c01220012000000000000000000000000000000
000800001f75021750237502575027750287500000000700007000070023772257722376225762237522575223742257422373225732237222572223712257122371225712000000000000000000000000000000
000800001c0501e0501f05021050230501c050000000000000000000001c0721f0721c0621f0621c0521f0521c0421f0421c0321f0321c0221f0221c0121f0121c0121f012000000000000000000000000000000
000800001f75021750237502575027750287500000000700007000070023772257722376225762237522575223742257422373225732237222572223712257122371225712000000000000000000000000000000
511800001c0541e0521f0551e0541f05221055210541e0551c0541e0521f0551e0541f05221055210541e0551c0541e0521f0551e0541f05221055210541e0551c0541e0521f0551e0541f05221055210541e055
511800002105423052240552305424052260552605423055210542305224055230542405226055260542305521054230522405523054240522605526054230552105423052240552305424052260552605423055
5118000026054280522905528054290522b0552b0542805526054280522905528054290522b0552b0542805526054280522905528054290522b0552b0542805526054280522905528054290522b0552b0542c055
a1100000211521e1521c152201521a152191521e1521a152191521c152191521715215152191521c152191521c15220152211521c152191521515217152191521a15217152191521a15217152191521a15217152
a1100000191521a15217152191521c15217152191521c15217152191521c15217152191521c15217152191521e1521a1521c1521e1521a1521c1521e1521a1521c1521e1521a1521c1521f1521c1521e1521f152
a11000001c1521e1521f1521c1521e1521f1521c1521a1521915215152171521915215152171521915215152171521915215152171521a15215152171521a15215152171521a15215152171521a1521515217152
a11000001c15215152171521c15215152171521c15215152171521c152151521c1521a152151521c1521a152151521c1521e1521d1521c1521a1521a1521a1521a1421a1421a1421a1321a1321a1321a1221a125
011800001a1001a1001c1541c1551c1541c1551c1541c1551f1541f1551f1541f1551e1541e1551e1541e155151001c1001c1541c1551c1541c1551c1541c1551f1541f1551f1541f1551e1541e1551e1541e155
011800001054410542105421054512544125421254212545135441354213542135451254412542125421254510544105421054210545125441254212542125451354413542135421354512544125421253212525
6518000023055230542305223052210552105421052210521f0551f0541f0521f0521e0551e0541e0521e0521a1001a1001c1541c1551c1541c1551c1541c1551f1541f1551f1541f1551e1441e1451b1341b135
551800001c4541a4041c4041e4541f4521c4041e4042145223452214521f4521c404214541f4521e4551f4041c4541e4041f4041e4541f4521f4041c4042145223452214521f45519404214441f4421e44515404
4510000010155141551715514155171551c1551d1551a155171551415517155141551015514155171551a1551c15520155231552015523155281552915526155231552015523155201551c155201552315526155
__music__
00 40410003
00 40464344
00 040a4344
00 050b4344
00 060c4344
00 070d4344
00 060c4344
00 080e4344
00 090f4344
00 090f4344
00 40424344
00 12414344
00 42434344
00 13414344
00 45414344
00 14154344
00 16174344
00 18154344
00 19154344
00 1a1d4344
00 1a1d4344
00 1b1e5c5f
00 1c1f4344
00 41424344
00 20214344
00 41424344
00 22234344
00 41424344
00 11424344
00 41424344
00 24424344
00 254b4344
00 26424344
00 27424344
00 28424344
00 29424344
00 2a424344
00 41424344
00 2f534344
00 2e2d4344
00 2c424344
00 6c424344

