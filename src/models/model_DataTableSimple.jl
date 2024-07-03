# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


"""
```
DataTableSimple(;
    name=nothing,
    nhgisCode=nothing,
    description=nothing,
    sequence=nothing,
)
```       
Simplified representation of a given IPUMS table given an nhgisCode.

# Arguments 

- `name::String`-The unique identifier for the data table within its dataset.
- `nhgisCode::String`-The code for this data table that will appear in extract.
- `description::String`-A short description of the data table.
- `sequence::Int64`-The order for which this data table will appear in the metadata API and extracts.

# Examples

```julia-repl
julia> IPUMS.DataTableSimple(name =  "NT1",nhgisCode = "AAA", description = "Total Population", sequence =  1 )
{
  "name": "NT1",
  "nhgisCode": "AAA",
  "description": "Total Population",
  "sequence": 1
}
```

# References

To find out more about the DataTableSimple visit:
* https://developer.ipums.org/docs/v2/workflows/explore_metadata/nhgis/datasets/
"""
Base.@kwdef mutable struct DataTableSimple <: OpenAPI.APIModel
    name::Union{Nothing, String} = nothing
    nhgisCode::Union{Nothing, String} = nothing
    description::Union{Nothing, String} = nothing
    sequence::Union{Nothing, Int64} = nothing

    function DataTableSimple(name, nhgisCode, description, sequence, )
        OpenAPI.validate_property(DataTableSimple, Symbol("name"), name)
        OpenAPI.validate_property(DataTableSimple, Symbol("nhgisCode"), nhgisCode)
        OpenAPI.validate_property(DataTableSimple, Symbol("description"), description)
        OpenAPI.validate_property(DataTableSimple, Symbol("sequence"), sequence)
        return new(name, nhgisCode, description, sequence, )
    end
end # type DataTableSimple

const _property_types_DataTableSimple = Dict{Symbol,String}(Symbol("name")=>"String", Symbol("nhgisCode")=>"String", Symbol("description")=>"String", Symbol("sequence")=>"Int64", )
OpenAPI.property_type(::Type{ DataTableSimple }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_DataTableSimple[name]))}

function check_required(o::DataTableSimple)
    true
end

function OpenAPI.validate_property(::Type{ DataTableSimple }, name::Symbol, val)
end
