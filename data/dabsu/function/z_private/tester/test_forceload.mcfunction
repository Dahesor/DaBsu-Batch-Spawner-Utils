schedule function dabsu:z_private/tester/test_forceload 1t
execute unless loaded 992 0 992 run say Nope
execute if loaded 992 0 992 run say loaded!
execute if loaded 992 0 992 run schedule clear dabsu:z_private/tester/test_forceload
execute if loaded 992 0 992 run forceload remove 992 992