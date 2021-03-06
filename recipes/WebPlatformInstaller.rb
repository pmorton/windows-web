ENV['PROCESSOR_ARCHITEW6432'] == nil ? ProgramFiles = ENV['ProgramW6432'] : ProgramFiles = ENV['ProgramFiles']
WebPlatformDirectory = "#{ProgramFiles}\\WebPlatformInstaller"

directory "#{WebPlatformDirectory}" do
	action :create
end

remote_file "#{WebPlatformDirectory}\\7za.exe" do
	source "https://s3.amazonaws.com/cookbookfiles-windows-web/7za.exe"
	action :create
end

remote_file "#{WebPlatformDirectory}\\WPICommandLine.zip" do
	source "http://go.microsoft.com/fwlink/?LinkId=209681"
	action :create
end

execute "ExtractWPICommandLine" do
	command "\"#{WebPlatformDirectory}\\7za.exe\" x \"#{WebPlatformDirectory}\\WPICommandLine.zip\" -o\"#{WebPlatformDirectory}\""
	returns 42
	action :run
end