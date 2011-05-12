ENV['PROCESSOR_ARCHITEW6432 '] == nil ? ProgramFiles = ENV['ProgramW6432'] : ProgramFiles = ENV['ProgramFiles ']
WebPlatformDirectory = "#{ProgramFiles}\\WebPlatformInstaller"
WebPlatformExe = "#{WebPlatormDirectory}\\WebpiCmdLine.exe"

execute "WebPlatformInstaller" do
	command "\"#{WebPlatformExe}\" /AcceptEula /Products:MVC3,RequestFiltering,URLReWrite2,WDeploy"
	returns 42
	action :run
end