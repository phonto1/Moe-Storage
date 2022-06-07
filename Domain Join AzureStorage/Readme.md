Azure Storage Account Domain Join to onprem Active Directory Domain Service
This PowerShell is designed to Simplify Joinging the Azure storage account to on-prem ADDS.

Template description
This PS Script is dedicated to Domain Join an Azure Storage Account to the on-prem domin following the necessary best practices to insure a proper implementationm of the solution, with the proper procedure to customize the code and fit it to a specific requirement.

Target audience
Deployment Engineers
Solution Architects
Product/LZ architecture

The JoinStorage to onprem ADDS.PS1 PowerShell Script will help you automatically deploy the diagram below, which includes:

alt image

Template.json can be modified to match your current infrastructure needs.

One Click Deploying Teamplate
Deploy to Azure

Deploying an ARM Template using the Azure portal
Visit https://portal.azure.com
Using the search bar on top type Templates

alt image

Create a new template
alt image

Give a name and a description to the template
alt image

Add for modified Template.json and save it
alt image

Select the newly added template and click deploy
alt image

Fill out the blanks with your details and click purchase
alt image

Allow 2-5 minutes for the deployment to complete
Azure services and related products
Azure Storage
Azure Virtual Desktop
Related references
example!!

https://docs.microsoft.com/en-us/azure/virtual-desktop/overview
https://docs.microsoft.com/en-us/azure/storage/files/storage-how-to-create-file-share?tabs=azure-portal
License & Contribute
You are responsible for the performance, the necessary testing, and if needed any regulatory clearance for any of the models produced by this toolbox. Please refer LICENSE & Contribute for more details
