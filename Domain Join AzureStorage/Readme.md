# Join an Azure Storage Account to The On-prem Microsoft Active Directory Domain Services.

This PowerShell is designed to Simplify Joinging the Azure storage account to your on-prem Microsoft ADDS.
 
# PowerShell Script description

This PS Script is used to for Joining an Azure Storage Account to the on-prem Microsoft AD Domin following the necessary best practices to insure a proper implementationm of the solution, with the proper procedure to customize the code and fit it to a specific requirement.

## Target audience

- Deployment Engineers
- Solution Architects

## Prepare your enviroment:

## 1.On-prem AD pre-requistes

Before you get started, make sure your domain controller is synchronized to Azure and resolvable from the Azure virtual network (VNET) your session hosts are connected to.

- Make Sure you have an onprem admin account syncronized to Azure AD with Domain Join privledge, for example "Adadmin@contoso.com".
- From the Azure Portal > Navigate to Subscriptions > Select your testing Subscription > Under the testing Subscription > From the Left Pane > Click on access control (IAM) > add role assignments > in the top middle click on add> add role assignments >  Add owner permissions to your user account "adadmin@contoso.com".
- Make Sure that the "adadmin" user account is a Global administrator in Azure AD.

![alt image](https://github.com/phonto1/Moe-Storage/blob/master/Domain%20Join%20AzureStorage/Images/Subscription%20permssions.png)


## 2. Storage Account pre-requistes:


- Setup a storage account from this github template: (https://github.com/phonto1/Moe-Storage)
- From the Azure Portal > Open the newly created storage > From the left pane > click on access control(IAM) > add > role assignment > then add SMB Storage File Data SMB Share Elevated Contributor to "adadmin@contoso.com" user account.
- Repeat the same steps > to assign endusers permissions for their FSLogix profiles > select the "Storage File Data SMB Share Contributor" role instead.

![alt image](https://github.com/phonto1/Moe-Storage/blob/master/Domain%20Join%20AzureStorage/Images/StoragePermmissions.png)

## Run the JoinStorage to onprem ADDS.ps1:

- Login to the domain Joined VM.
- If you don't have .netframwork 4.7.2, download it from (https://dotnet.microsoft.com/en-us/download/dotnet-framework/net472). 
- Download the latest AzFilesHybridModule from (https://github.com/phonto1/Moe-Storage) 
- Extract the ZIP "AZHybridModule".
- Download the DomainJoinScript from here (https://github.com/phonto1/Moe-Storage/blob/master/Domain%20Join%20AzureStorage/JoinStorage%20to%20onprem%20ADDS.ps1)
- Connect to the domain Joined VM machine > From the Start Menu > Open PowerShell as an administrator > Navigate to the script location "JoinStorageAccounttoonpremADDS.ps1 then Run the Script
- Please Note: it will begin Installing the AzHybrid Module, it will take time and will ask to restart the PowerShell Session (Close the session and repeat the same steps again).
![alt image](https://github.com/phonto1/Moe-Storage/blob/master/Domain%20Join%20AzureStorage/Images/PowershellScriptNavigation.PNG)

- PowerShell will display a yellow warning message verifying if you already downloaded the AzFilesHybrid Module > confirm and Enter the script location
- Another message will show up asking to install the azfilesHybrid module. Please Note: it will begin Installing the AzHybrid Module, it will take time and will ask to restart the PowerShell Session (Close the session and repeat the same steps again).
![alt image](https://github.com/phonto1/Moe-Storage/blob/master/Domain%20Join%20AzureStorage/Images/ScriptNavigation%202.PNG)

- After installing the AzFilesHybridModule > Enter the storage account information like "Subscription id, Resource Group Name, Storage Account Name ..etc)
- Please Note under the Encryption type the recommended is AES256, and the default is RC4.
![alt image](https://github.com/phonto1/Moe-Storage/blob/master/Domain%20Join%20AzureStorage/Images/ScriptParam.PNG)

- After supplying all the nessary storage account information > it will ask you to sign in with your "Adadmin@contoso.com" > Type the user name and password and click Sign in.
- Wait a few moments and the storage account should be sucessfully joined to the on-premises domain.
![alt image](https://github.com/phonto1/Moe-Storage/blob/master/Domain%20Join%20AzureStorage/Images/AzureLogin.PNG)


## Azure services and related products


- Azure Storage
- Azure Virtual Desktop
- Azure Storage Account SMB FileShare
- FSLogix Profiles

## Related references
example!!
- https://docs.microsoft.com/en-us/azure/virtual-desktop/create-file-share
- https://docs.microsoft.com/en-us/azure/storage/files/storage-files-identity-ad-ds-enable



## License & Contribute

You are responsible for the performance, the necessary testing, and if needed any regulatory clearance for any of the models produced by this toolbox.
Please refer [LICENSE](LICENSE) &  [Contribute](https://github.com/git-pranayshah/AnalysisService/blob/master/Contribute.md) for more details


