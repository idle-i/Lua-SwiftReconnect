function main()
	repeat wait(0) until isSampAvailable()

	sampRegisterChatCommand("rec", function (arg)

		lua_thread.create(function ()
			sampDisconnectWithReason(quit)
			
			time = tonumber(arg)
			if time ~= nil then
				wait(1000 * time)
			else
				wait(1000)
			end

			sampSetGamestate(1)
		end)

	end)

	wait(-1)
end
