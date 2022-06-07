# This line is to Change the execution policy to unblock importing AzFilesHybrid.psm1 module
Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Scope CurrentUser
 
# Navigate to where AzFilesHybrid is unzipped and stored and run to copy the files into your path

#MakeSure to download the latest AZ Hybrid Module, that is required for powershell to contact the Azure Storage account

Write-Warning "AzHybrid module is required, download the latest from here https://github.com/Azure-Samples/azure-files-samples/releases" -WarningAction Inquire

$Scriptlocation = Read-Host 'Enter AzHybrid Script location'

Set-Location $Scriptlocation

.\CopyToPSPath.ps1 

# Import AzFilesHybrid module
Import-Module -Name AzFilesHybrid



# Login with an Azure AD credential that has either storage account owner or contributor Azure role assignment
# If you are logging into an Azure environment other than Public (ex. AzureUSGovernment) you will need to specify that.
# See https://docs.microsoft.com/azure/azure-government/documentation-government-get-started-connect-with-ps
# for more information.


$SubscriptionId = Read-Host 'Enter Azure Subscription id'
$ResourceGroupName = Read-Host 'Enter Azure Storage Resoruce Group Name'
$StorageAccountName = Read-Host 'Enter Azure Storage Name'
$DomainAccountType = Read-Host 'ComputerAccount or ServiceLogonAccount'
$OuDistinguishedName = Read-Host 'Enter Active Directory OU Path, Example: "CN=Computers,DC=clouddc,DC=local":'
$EncryptionType = Read-Host 'Select Encryption type, Default is RC4, RC4|AES256'



Connect-AzAccount

# Define parameters, $StorageAccountName currently has a maximum limit of 15 characters


# Select the target subscription for the current session
Select-AzSubscription -SubscriptionId $SubscriptionId 

# Register the target storage account with your active directory environment under the target OU (for example: specify the OU with Name as "UserAccounts" or DistinguishedName as "OU=UserAccounts,DC=CONTOSO,DC=COM"). 
# You can use to this PowerShell cmdlet: Get-ADOrganizationalUnit to find the Name and DistinguishedName of your target OU. If you are using the OU Name, specify it with -OrganizationalUnitName as shown below. If you are using the OU DistinguishedName, you can set it with -OrganizationalUnitDistinguishedName. You can choose to provide one of the two names to specify the target OU.
# You can choose to create the identity that represents the storage account as either a Service Logon Account or Computer Account (default parameter value), depends on the AD permission you have and preference. 
# Run Get-Help Join-AzStorageAccountForAuth for more details on this cmdlet.

Join-AzStorageAccount `
        -ResourceGroupName $ResourceGroupName `
        -StorageAccountName $StorageAccountName `
        -DomainAccountType $DomainAccountType `
        -OrganizationalUnitDistinguishedName $OuDistinguishedName `
        -EncryptionType $EncryptionType

#Run the command below to enable AES256 encryption. If you plan to use RC4, you can skip this step.
Update-AzStorageAccountAuthForAES256 -ResourceGroupName $ResourceGroupName -StorageAccountName $StorageAccountName
