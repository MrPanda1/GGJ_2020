Log generated February 20, 2056.

***/////-------------------------------------------------------------------------------------------------------------------------------

Launching external diagnostics…

Left Leg:
[SUCCESS] External hardware responsive
Warning: Significant wear detected, repairs from a trained professional recommended

Right Leg:
[SUCCESS] External hardware responsive
Warning: Significant wear detected, repairs from a trained professional recommended

Antenna:
[SUCCESS] External hardware responsive

Left Arm:
[SUCCESS] External hardware responsive
Warning: Possible model-limb incompatibility, consultation from a trained professional recommended

Right Leg:
[SUCCESS] External hardware responsive
Warning: Significant wear detected, repairs from a trained professional recommended

Thrusters:
[SUCCESS] External hardware responsive
Warning: Be careful with the fuel, improper usage may lead to premature expiration. This goes double for people who, for some unknown reason, actually have the damn thing equipped.

External Diagnostics completed…

-------------------------------------------------------------------------------------------------------------------------------\\\\\***
Perfect, we are almost ready to get out of this place. The last thing we need is to calculate the correct acceleration for me to bust through the door without accidentally detonating the fuel and everything in within a 2-mile radius with it.
Errr, no pressure, I’m sure its not as bad as you believe it to be.
In order to find the correct acceleration, we have do a little bit of rocket science. The high school kind, not the one that gets you paid unfortunately. I have my mass calculation and the thrust from the rocket in the file tree. My mass file should have the world ‘mass’ in it. Thrust should be something like FINALthrust or thrustFINAL or something.
Once, we have those, we can calculate acceleration using 10 for gravity. We can calculate acceleration with this:
Mass * (gravity * acceleration) = thrust
Make sure that you round acceleration to the nearest integer before you enter in the value, or else I might not be able to parse it.
Once we have that, I’ll smash through the door and we can get out of here.

END LOG
