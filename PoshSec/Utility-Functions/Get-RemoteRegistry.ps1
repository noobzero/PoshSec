function Get-RemoteRegistry {
  	<#    
		.SYNOPSIS
	  		Gets the registry WMI object for a remote system.
		.DESCRIPTION
  			This function will return a WMI object of the StdRegProv for a remote system.  
		.PARAMETER computer
	  		The remote system on which to run the command.
		.EXAMPLE
  			PS> $reg = Get-RemoteRegistry -computer REMOTEPC
		.LINK
	   		www.poshsec.com
		.NOTES
			AUTHOR: Ben0xA
  			This function is a utility function for the PoshSec module.
	#>
	Param(
    	[Parameter(Mandatory=$true,Position=1)]
    	[string]$computer
  	)
  
  	return Get-WmiObject -Class StdRegProv -List -Namespace root\default -ComputerName $computer
}