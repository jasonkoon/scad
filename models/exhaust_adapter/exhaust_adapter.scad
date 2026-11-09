// Exhaust hose to fan duct adapter
// Units: mm
// Hose end (male): 80.3 mm outside diameter, slides INTO hose.
// Fan end (female): 73.6 mm inside diameter, slides OVER 73 mm OD fan duct.

$fn = 180;                // Rendering smoothness

// laser cutter side
hose_end_od = 80.3;       // Outside diameter of male hose end
fan_duct_od = 72.0;       // Actual outside diameter of fan duct
fan_clearance = 0.6;     // Total diametral clearance for fan socket

// wall side
//hose_end_od = 80.3;       // Outside diameter of male hose end
//fan_duct_od = 80.3;       // Actual outside diameter of fan duct
//fan_clearance = 0.6;     // Total diametral clearance for fan socket



wall = 3;              // Radial wall thickness
hose_straight = 20.0;     // Insertion length into hose
transition_length = 5.0;
fan_straight = 20.0;      // Socket engagement length over fan

fan_end_id = fan_duct_od + fan_clearance;
fan_end_od = fan_end_id + 2 * wall;
hose_end_id = hose_end_od - 2 * wall;
total_length = hose_straight + transition_length + fan_straight;

assert(hose_end_id > 0, "Hose end OD must exceed twice wall thickness");
assert(fan_end_id > 0, "Fan socket ID must be positive");
assert(hose_straight > 0 && fan_straight > 0 && transition_length > 0,
       "All lengths must be positive");

// Single revolved closed cross-section: robust manifold STL output.
// The hose end is at z=0 and the fan end is at z=total_length.
rotate_extrude(convexity = 10)
    polygon(points = [
        [hose_end_od / 2, 0],
        [hose_end_od / 2, hose_straight],
        [fan_end_od / 2, hose_straight + transition_length],
        [fan_end_od / 2, total_length],
        [fan_end_id / 2, total_length],
        [fan_end_id / 2, hose_straight + transition_length],
        [hose_end_id / 2, hose_straight],
        [hose_end_id / 2, 0]
    ]);
