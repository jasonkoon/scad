# scad

A collection of parametric [OpenSCAD](https://openscad.org/) models for 3D printing.

## Layout

Each model lives in its own folder under `models/`, with its `.scad` source and a README describing the part and its parameters.

| Model | Description |
| --- | --- |
| [exhaust_adapter](models/exhaust_adapter) | Exhaust hose to fan duct adapter |

## Usage

Open a `.scad` file in OpenSCAD, or export from the command line:

```sh
openscad -o out.stl models/<name>/<name>.scad
```
