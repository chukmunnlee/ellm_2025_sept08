# Setup - pip install 'mcp[cli]'
# Test - mcp dev weather.py
# Install on Claude Desktop - mcp install weather.py

# Import the library
from mcp.server.fastmcp import FastMCP

# Create the MCP server
mcp = FastMCP('My weather MCP')

@mcp.tool()
def get_weather(city: str) -> str:
   """ 
   Get the weather for the given city

   Args:
      city: weather for the given city
   """
   return f'The weather for {city} is hot and sultry'

if __name__ == "__main__":
   mcp.run()