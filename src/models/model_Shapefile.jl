# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


"""
```
Shapefile(;
    name=nothing,
    year=nothing,
    geographicLevel=nothing,
    extent=nothing,
    basis=nothing,
    sequence=nothing,
)
```
This function creates a new file for geographic information systems (GIS).

# Attributes

- `name::String`-The unique identifier of the shapefile.
- `year::String`-The survey year in which the file's represented areas were used for tabulations.
- `geographicLevel::String`-The geographic level of the shapefile.
- `extent::String`-The geographic extent which is covered by the shapefile.
- `basis::String`-The derivation source of the shapefile.
- `sequence::Int64`- The order the shapefile in which appears in the metadata API.

# Returns

It returns a list of all the available shapefile.

# Examples

```julia-repl
julia> IPUMS.Shapefile(name = "base.tl2000.nongen.us_state_1790", year = "1790", geographicLevel = "state", extent = "united states", basis = "2000 tiger/line +", sequence =  1)
{
  "name": "base.tl2000.nongen.us_state_1790",
  "year": "1790",
  "geographicLevel": "state",
  "extent": "united states",
  "basis": "2000 tiger/line +",
  "sequence": 1
}
```
# References

To find out more about the Shapefile type visit :
* https://developer.ipums.org/docs/v2/workflows/explore_metadata/nhgis/shapefiles/
"""
Base.@kwdef mutable struct Shapefile <: OpenAPI.APIModel
    name::Union{Nothing, String} = nothing
    year::Union{Nothing, String} = nothing
    geographicLevel::Union{Nothing, String} = nothing
    extent::Union{Nothing, String} = nothing
    basis::Union{Nothing, String} = nothing
    sequence::Union{Nothing, Int64} = nothing

    function Shapefile(name, year, geographicLevel, extent, basis, sequence, )
        OpenAPI.validate_property(Shapefile, Symbol("name"), name)
        OpenAPI.validate_property(Shapefile, Symbol("year"), year)
        OpenAPI.validate_property(Shapefile, Symbol("geographicLevel"), geographicLevel)
        OpenAPI.validate_property(Shapefile, Symbol("extent"), extent)
        OpenAPI.validate_property(Shapefile, Symbol("basis"), basis)
        OpenAPI.validate_property(Shapefile, Symbol("sequence"), sequence)
        return new(name, year, geographicLevel, extent, basis, sequence, )
    end
end # type Shapefile

const _property_types_Shapefile = Dict{Symbol,String}(Symbol("name")=>"String", Symbol("year")=>"String", Symbol("geographicLevel")=>"String", Symbol("extent")=>"String", Symbol("basis")=>"String", Symbol("sequence")=>"Int64", )
OpenAPI.property_type(::Type{ Shapefile }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_Shapefile[name]))}

function check_required(o::Shapefile)
    true
end

function OpenAPI.validate_property(::Type{ Shapefile }, name::Symbol, val)
end
