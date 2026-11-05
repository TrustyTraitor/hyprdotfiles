function Check_UWSM()
	if os.getenv("UWSM_ACTIVE") == "1" then
		return true
	end
	return false
end

function Launch(app)
	if Check_UWSM() then
		return hl.dsp.exec_cmd("uwsm app -- " .. app)
	end
	return hl.dsp.exec_cmd(app)
end
