# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


"""
```
DatasetSimple(;
    name=nothing,
    description=nothing,
    group=nothing,
    sequence=nothing,
)
```
The fuction gives a dataset given a group, a sequence,an input and a description .

# Arguments

- `name::String`-The dataset identifier 
- `description::String`-A short description of the dataset
- `group::String`-The group of datasets to which this dataset belongs.
- `sequence::Int64`-The order in which the dataset will appear in the metadata API and extracts.

# Returns

The function returns the name,the group, the description and the sequence of the data.

# Examples

```julia-repl
julia> IPUMS.DatasetSimple(name =  "1790_cPop", description = "1790 Census: Population Data [US, States & Counties]",group = "1790 Census",sequence =  101)
{
  "name": "1790_cPop",
  "description": "1790 Census: Population Data [US, States & Counties]",
  "group": "1790 Census",
  "sequence": 101
}
```

# Reference
To find out more about the Dataset type visit the [Reference page of IPUMS API Dataset](https://developer.ipums.org/docs/v2/workflows/explore_metadata/nhgis/datasets/)
"""
Base.@kwdef mutable struct DatasetSimple <: OpenAPI.APIModel
    name::Union{Nothing, String} = nothing
    description::Union{Nothing, String} = nothing
    group::Union{Nothing, String} = nothing
    sequence::Union{Nothing, Int64} = nothing

    function DatasetSimple(name, description, group, sequence, )
        OpenAPI.validate_property(DatasetSimple, Symbol("name"), name)
        OpenAPI.validate_property(DatasetSimple, Symbol("description"), description)
        OpenAPI.validate_property(DatasetSimple, Symbol("group"), group)
        OpenAPI.validate_property(DatasetSimple, Symbol("sequence"), sequence)
        return new(name, description, group, sequence, )
    end
end # type DatasetSimple

const _property_types_DatasetSimple = Dict{Symbol,String}(Symbol("name")=>"String", Symbol("description")=>"String", Symbol("group")=>"String", Symbol("sequence")=>"Int64", )
OpenAPI.property_type(::Type{ DatasetSimple }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_DatasetSimple[name]))}

function check_required(o::DatasetSimple)
    true
end

function OpenAPI.validate_property(::Type{ DatasetSimple }, name::Symbol, val)
end
