# Azure Storage Account SMB File Share template 

This ARM template is dedicated to implementing An Azure Storage Account with 500 GB SMB fileshare to be used as a storage for Azure Virtual Desktop users profiles. 
Please note: After the storage account creation is complete, if you are interested to Join it to the on-primeses Microsoft Active Directory domain, please follow the steps from here: (https://github.com/phonto1/Moe-Storage/tree/master/Domain%20Join%20AzureStorage)

# Template description

This template is dedicated to implementing Azure Storage Account following the necessary best practices to insure a proper implementationm of the solution, with the proper procedure to customize the code and fit it to a specific requirement.

## Target audience

- Deployment Engineers
- Solution Architects

# Product/LZ architecture

The [Template.json](https://github.com/phonto1/Moe-Storage/blob/master/Deployment%20Scripts/Azure%20Storage/AzureStorageDeploy.json) Azure Resource Manager template will help you automatically deploy the diagram below, which includes:


![alt image](https://github.com/phonto1/Moe-Storage/blob/master/Images/azure-file-share.png)

[Template.json](https://github.com/phonto1/Moe-Storage/blob/master/Deployment%20Scripts/Azure%20Storage/AzureStorageDeploy.json) can be modified to match your current infrastructure needs.

## One Click Deploying Teamplate
<!-- Powershell command for Translating Git URL for template.json
    $url = "https://raw.githubusercontent.com/git-pranayshah/template/master/template.json"
    [uri]::EscapeDataString($url)
    >> uri = https%3A%2F%2Fraw.githubusercontent.com%2Fgit-pranayshah%2Ftemplate%2Fmaster%2Ftemplate.json

Base URL: https://portal.azure.com/#create/Microsoft.Template/uri
Final URL: <Base URL>/<uri>
-->
[![Deploy to Azure](https://aka.ms/deploytoazurebutton)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fgit-pranayshah%2Ftemplate%2Fmaster%2Ftemplate.json)


## Deploying an ARM Template using the Azure portal

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
- Please note: After the storage account creation is complete, if you are interested to Join it to the on-primeses Microsoft Active directory domain, please follow the steps from here: (https://github.com/phonto1/Moe-Storage/tree/master/Domain%20Join%

## Azure services and related products

- Azure Storage
- Azure Virtual Desktop
- FSLogix Profiles

## Related references
example!!
- https://docs.microsoft.com/en-us/azure/virtual-desktop/overview
- https://docs.microsoft.com/en-us/azure/storage/files/storage-how-to-create-file-share?tabs=azure-portal
- https://docs.microsoft.com/en-us/azure/virtual-desktop/create-file-share
- https://docs.microsoft.com/en-us/azure/storage/files/storage-files-identity-ad-ds-enable



## License & Contribute

You are responsible for the performance, the necessary testing, and if needed any regulatory clearance for any of the models produced by this toolbox.
Please refer [LICENSE](LICENSE) &  [Contribute](https://github.com/git-pranayshah/AnalysisService/blob/master/Contribute.md) for more details


