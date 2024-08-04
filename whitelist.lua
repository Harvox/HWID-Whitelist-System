
local DATABANK = {
    "insert hwid here",
    
    }
    local BLACKLISTED = {
        "insert hwid here"
    }
    local HWID = game:GetService("RbxAnalyticsService"):GetClientId()
    local PLAYER = game:GetService("Players").LocalPlayer
    print("Verifying HWID...")
    task.wait(0.1)
    -- Verifying HWID
    game:GetService("StarterGui"):SetCore("SendNotification",{
        Title = 'Authenticator',
        Text = 'Verifying User: ' ..PLAYER.name,
    
    })
    task.wait(1)
    for i,f in pairs(BLACKLISTED) do
        if HWID ~= f then
    for i,v in pairs(DATABANK) do
    if HWID == v then
    game:GetService("StarterGui"):SetCore("SendNotification", {
       Title = 'Authenticator',
       Text = 'Verification Success'
    })
    task.wait(1)
    print("Whitelisted user detected!")
    -- Whitelist Success
    else
    game:GetService("StarterGui"):SetCore("SendNotification", {
       Title = 'Authenticator',
       Text = 'Verification Failed'
    })
    task.wait(0.1)
    print("Authentication Failed!")
    -- Whitelist Failed
end
    end
    else
     game:GetService("StarterGui"):SetCore("SendNotification", {
       Title = 'Authenticator',
       Text = 'Verification Failed'
    })
    print("User blacklisted.")
    -- Blacklisted
    end
    end