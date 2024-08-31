pico-8 cartridge // http://www.pico-8.com
version 42
__lua__
#include dynamic_level_objects.lua
#include collision.lua
#include player.lua
#include levels.lua
#include main.lua
__gfx__
00000000033330000333300003333000000000000333300000000000000000000000000000000000000000000000000000000000000000000000000000000000
0333300003bbbb0003bbbb0003bbbb000333300003bbbb000000000000000b000030030000000000000000000000000000000000000000000000000000000000
03bbbb000bbbbb000bbbbb000bbbbb0003bbbb000bbbbb000000000000000bbb00b0030000000000000000000000000000000000000000000000000000000000
0bbbbb000b3333000b3333000b3333000bbbbb000b3333000000000033bbb3bb00b77b0000000000000000000000000000000000000000000000000000000000
0b333300b7bb7b00b7bb7b0007bb7000bb333300b7bb7b0000000000bb33bb000b7777b000000000000000000000000000000000000000000000000000000000
b7bb7b000777700007777000b7777b0007bb7b0007777000000000003bbbbb00037777b000000000000000000000000000000000000000000000000000000000
077770000777b0000b00300007777000077770000777700000000000333333000377773000000000000000000000000000000000000000000000000000000000
0b00b0000b0000000000b000b00b000000b00b000b00b00000000000300003000033330000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00333300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
003bbbb0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00bbbbb0003333000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
03b33330003bbbb00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0777700007bbbbb00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
b000b000b7b333300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00008888888800008822882200000000000000000000000000000000000000000200002000000000000000000000000000000000000000000000000000000000
00080008000080000082220000000000000000000000000008000088000000800288882002000020000000000000000000000000000000000000000000000000
00080002000080000000000000000000000000000000000088080888088000800828828002888820000000000000000000000000000000000000000000000000
88200002200008880000000000000000000000000000000088888880082808800887887008288280000000000000000000000000000000000000000000000000
20000000000000080000000000000000000000000000000008888880082888800822222008878870000000000000000000000000000000000000000000000000
20008802008800020000000000000000000000000008000088828822002288202288888202222220000000000000000000000000000000000000000000000000
02228822228822200000000000080000000700000087800022228820008288000222222022888882000000000000000000000000000000000000000000000000
00008800008800000000000000022000000770000008200000022200000222000200020002000200000000000000000000000000000000000000000000000000
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
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003030102010101010100000004060604030302020202020200000000040606040303020202000000000000000406060403030202020000000000000004060604
0000000004040000000000000000000000000000040402000000000000000000040404040000000000000000000000000404040400000000000000000000000000000000000000000000000303000000000000000000000000000003030300000000000000000000000000030303000000000000000000000000000000000003
__map__
61ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff000000000000000000000000000000000000000000000000000000ffffff72ff61ffffffffffffffffffffffffff72000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
61000000000000000000000000000000000000000000000000000000000000ff000000000000000000000000000000000000000000000000000000000000007262610000000000000000000000000072000000404100000041414100000000000000000000000000000000000000000000000000000000000000000000000000
6100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007262610000000000000000000000000072404040000041414100000041000000000000414100000000414141414100000000000000000000000000000000000000
61000000000000000000000000000000000000000000000000000000000000000000000000535400000000000000715251000000000000000000000000000072626100000000000000000000000052524200000000b2b2b200000000410000000041000041410041000000410041414100000000000000000000000000000000
61ff000000000000000000000000000000000000000000000000000000000000000000000000000000006e00000071004262000000000000000000000000006562610000000000000000000000004040960000000000000000008500410000006100000000004100000000000000000000000000000000000000000000000000
61ff000000000000000000000000000000000000000000000000000000000000004d4d0000000000000000000000710000620000000000000000000000000065626100000000000000000000000040404000000000000000000000000041000061000000000000000000a1000000515100000000000000000000000000000000
61ff000000000000000000000000705052510000000000000000000000000000000000000000000000000000000071000051510000000000070000000000007262610000000000000000000000004040000000000000000000464748004100006100000000000000005050000000000000000000000000000000000000000000
61ff000000000000000000000000700000620000000000000000000000000000004647480000005d5d5d0000000071000000425100000050515200000000007262610000000000000000000000004040006e6e000000000000000000004200006100000000000000000000000000000000000000000000000000000000000000
61ffcbcccd00000000000000007151000062000000000000000000000000000000000000000000000000000000007100000000600000504000405200000000726261000000000000000000000000404000000000000000000000000000004242610000a1a1a1006d6d6d00002800000000000000000000000000000000000000
61ffdbdcdd00000000000000717000000000000000000000000000000000000000000000000000000000000050515100000000600050400000004052000000727e7e00000000000000000000000040400000006d6d6d0000004e4e4e00000000000000516d6d0000000000515100000000000000000000000000000000000000
61ffebeced00000000000000700000000000000000000000000000000000000000000000000000000000000070000000000000605040000000000040520000727e7e000000b0b0b00000280000004040000000000000000000000000000000005252520000000000000000000000000000000000000000000000000000000000
6152525252525252525252525200000050505050505050505050505050505050505050505050505050505050500000000000005252000000000000005252525250505050505050505050505050505050222222222222222222222222222250500000002222222222222222222222222200000000000000000000000000000000
