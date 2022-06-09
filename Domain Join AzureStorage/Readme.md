# Azure Storage Account Domain Join to onprem Active Directory Domain Service

This PowerShell is designed to Simplify Joinging the Azure storage account to on-prem ADDS.
 

# Template description

This PS Script is dedicated to Domain Join an Azure Storage Account to the on-prem domin following the necessary best practices to insure a proper implementationm of the solution, with the proper procedure to customize the code and fit it to a specific requirement.

## Target audience

- Deployment Engineers
- Solution Architects

# Product/LZ architecture

The [JoinStorage to onprem ADDS.ps1](https://github.com/phonto1/Moe-Storage/blob/master/Domain%20Join%20AzureStorage/JoinStorage%20to%20onprem%20ADDS.ps1) PowerShell Script will help you Domain Join the Azure Storage Account to the on-prem ADDS, which includes:


![alt image](https://github.com/phonto1/Moe-Storage/blob/master/Images/azure-file-share.png)

[JoinStorage to onprem ADDS.ps1](https://github.com/phonto1/Moe-Storage/blob/master/Domain%20Join%20AzureStorage/JoinStorage%20to%20onprem%20ADDS.ps1) can be modified to match your current infrastructure needs.

## Prepare your enviroment:

## 1.On-prem AD pre-requistes

Before you get started, make sure your domain controller is synchronized to Azure and resolvable from the Azure virtual network (VNET) your session hosts are connected to.

- Make Sure you have an onprem admin account syncronized to Azure AD with Domain Join privledge, for example "Adadmin@contoso.com".
- From the Azure Portal > Navigate to Subscriptions > Select your testing Subscription > Under the testing Subscription > From the Left Pane > Click on access control (IAM) > add role assignments > in the top middle click on add> add role assignments >  Add owner permissions to your user account "adadmin@contoso.com".

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
![alt image](https://github.com/phonto1/Moe-Storage/blob/master/Domain%20Join%20AzureStorage/Images/ScriptParam.PNG)



- Sign in to the Azure Portal > Search to the Storage account > click on the newly created Storage.

- Visit https://portal.azure.com

Using the search bar on top type Templates

![alt image](https://github.com/git-pranayshah/template/blob/master/images/Search.png)

- Create a new template

![alt image](https://github.com/phonto1/Moe-Storage/blob/master/Images/CreateTemplate.png)

- Give a name and a description to the template

![alt image](https://github.com/git-pranayshah/template/blob/master/images/Name%20and%20Description.png)

- Add for modified [Template.json](https://github.com/phonto1/Moe-Storage/blob/master/Deployment%20Scripts/Azure%20Storage/AzureStorageDeploy.json) and save it

![alt image](https://github.com/phonto1/Moe-Storage/blob/master/Images/ARM%20code.png)

- Select the newly added template and click deploy

![alt image](https://github.com/git-pranayshah/template/blob/master/images/Select%20and%20deploy%20template.png)

- Fill out the blanks with your details and click purchase

![alt image](https://github.com/phonto1/Moe-Storage/blob/master/Images/StorageAccountCreation.png)

- Allow 2-5 minutes for the deployment to complete

## Azure services and related products


- Azure Storage
- Azure Virtual Desktop

## Related references
example!!
- https://docs.microsoft.com/en-us/azure/virtual-desktop/overview
- https://docs.microsoft.com/en-us/azure/storage/files/storage-how-to-create-file-share?tabs=azure-portal



## License & Contribute

You are responsible for the performance, the necessary testing, and if needed any regulatory clearance for any of the models produced by this toolbox.
Please refer [LICENSE](LICENSE) &  [Contribute](https://github.com/git-pranayshah/AnalysisService/blob/master/Contribute.md) for more details


