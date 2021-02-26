import pdal
import json

# Define pipeline as string
pipeline_string = '''
[
    "testdata/G111.las",
    {
        "type": "filters.sort",
        "dimension": "X"
    },
    "outputs/G111_sorted1.las"
]
'''

# Validate pipeline
pipeline_pdal = pdal.Pipeline(pipeline_string)
pipeline_pdal.validate()

# Run pipeline
count = pipeline_pdal.execute()

# Define same pipeline as list
infile="testdata/G111.las"
outfile="outputs/G111_sorted2.las"
pipeline_list = [
    infile,
    {
        "type" : "filters.sort",
        "dimension" : "X"
    },
    outfile]

# Parse to string
pipeline_string = json.dumps(pipeline_list, indent=4)
print(pipeline_string)

# Same as above
pipeline_pdal = pdal.Pipeline(pipeline_string)
pipeline_pdal.validate()
count = pipeline_pdal.execute()