# scad

OpenSCAD models for 3D printing.

## Models

### `exhaust_adapter.scad`

Adapter between an exhaust hose and a fan duct. All units are mm.

- **Hose end (male):** 80.3 mm OD, inserts into the hose (20 mm straight).
- **Fan end (female):** 73.6 mm ID, slides over a 73 mm OD fan duct (20 mm engagement).
- 5 mm conical transition, 1.5 mm wall, 45 mm total length.

The part is a single revolved cross-section (`rotate_extrude`), so the STL is manifold. The hose end is at z=0 and the fan end at the top, so it prints upright with no supports needed for the hose end down.

Adjust the parameters at the top of the file (`hose_end_od`, `fan_duct_od`, `fan_clearance`, `wall`, lengths) to fit other hoses or ducts.

## Usage

Open in [OpenSCAD](https://openscad.org/), or export from the command line:

```sh
openscad -o exhaust_adapter.stl exhaust_adapter.scad
```
