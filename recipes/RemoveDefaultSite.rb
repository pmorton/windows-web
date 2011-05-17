ENV['PROCESSOR_ARCHITEW6432'] == nil ? NativePowershell = "#{ENV['WINDIR']}\sysnative\WindowsPowerShell\v1.0\powershell.exe" : NativePowershell = "#{ENV['WINDIR']}\System32\WindowsPowerShell\v1.0\powershell.exe"


cookbook_file "#{ENV['TEMP']}\\RemoveDefaultSite.ps1" do
	source 'RemoveDefaultSite.ps1'
	action :create
end

execute "RemoveSite" do
	command "\"#{NativePowershell}\" -File \"#{ENV['TEMP']}\\RemoveDefaultSite.ps1\""
	returns 0
	action :run
end
