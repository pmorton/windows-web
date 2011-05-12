ENV['PROCESSOR_ARCHITEW6432'] == nil ? ProgramFiles = ENV['ProgramW6432'] : ProgramFiles = ENV['ProgramFiles']
WebPlatformDirectory = "#{ProgramFiles}\\WebPlatformInstaller"
WebPlatformExe = "#{WebPlatformDirectory}\\WebpiCmdLine.exe"

execute "WebPlatformInstaller" do
	command "\"#{WebPlatformExe}\" /AcceptEula /Products:SQLManagementStudio,SMO"
	returns [0,2]
	action :run
end