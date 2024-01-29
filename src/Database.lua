	-- Import the Aerospike module
local aerospike = require("aerospike")
if Import success then 
	print("Aerospike has been imported successfully")
else 
	print("Failed to import the Aerospike database")
	function = close.server 
end
 
-- Function to create an Aerospike database 
-- @param namespace: The namespace for the database.
-- @param set: The set for the database.
-- @param host: The host address of the Aerospike server.
-- @param port: The port number of the Aerospike server.
-- @return: Returns true if the database is created successfully, otherwise returns false.
function createAerospikeDatabase(namespace, set, host, port)
    -- Create a client object to connect to the Aerospike server
    local client = aerospike.client({
        hosts = {{ host = host, port = port }}
    })
  
    -- Connect to the Aerospike server
    local status = client:connect()
    if status == aerospike.OK then
        -- Create a new database with the specified namespace and set
        local createStatus = client:create_index(namespace, set)
        if createStatus == aerospike.OK then
            -- Database created successfully
            client:close()
            return true
        else
            -- Failed to create database
            client:close()
            return false
        end
    else
        -- Failed to connect to the Aerospike server
        return false
    end
end 

function = passkey 
	local setkey = "aplha1812" 
	local host = "127.0.0.1" 
	local port = 3000
	local data = "allclass" 
end
 
-- Example usage of the createAerospikeDatabase function
 
-- Usage Example: Create an Aerospike database with namespace "test" and set "data"
local namespace = "test"
local set = "data"
local host = "127.0.0.1"
local port = 3000 
local data = "all"

local success = createAerospikeDatabase(namespace, set, host, port)
if success then
    print("Aerospike database has been created successfully.")
else
    print("Error: Failed to create the Aerospike database.")
	function overide:on.shutdown() 
	else false then shutdown.data = "all"
end
