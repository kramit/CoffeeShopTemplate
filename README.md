# The coffeeShop case study

# 

In this project we created two websites both located in New York and London. 

The one called, contosocoffeelondon and the other contosocoffeenewyork. 

Difficulty Level 3: Host the Docker Container solution via Azure Container Registries and pull into an Azure ACI solution.



## Company Overview

Contoso Coffee is a small coffee house that is opening soon in London and New York, they are looking for a cloud hosted solution for their website and data storage, costs must be kept to a minimum.



Here is the steps to create the project. 

1. Build a docker image 

2. Run a docker container. 

3. Create a container registry in Azure. 

4. Create two Azure container instances (ACI) that runs the website in both London and New York. It has to be in different regions because.

5. Then loadbalance those two with geo-redundancy. (Mike said, use TM, but Front door?



## User accounts

Contoso coffee requires 3 Administrators for the day to day control of the solution.

*Bob*

Bob will require full admin access as it will be his responsibility to manage and track billing for the Contoso Coffee website and is the owner of Contoso Coffee. He will therefore get global admin and owner role. 

*Dave*

Dave requires admin access to the resources hosted on Azure for the Contoso Coffee website but not overall administration of the Contoso Coffee subscription. He will get contributor role scoped to the resource group. 

*Mark*

Mark will require read-only access to the Contoso Coffee resources. He will therefore get read-only access scoped to the resource group. 



## Load Balancing and Geo-redundent access

Contoso Coffee will operate in London and New York, because of this a solution will need to be configured that allows the US users to access a more local server than London and vice versa. Load balancing can be achieved through DNS redirection or a geo-load balanced solution.

## Storage

- Storage account V2.
- Have created already.
- Needs blob container. 

Contoso coffee is planning to store a large amount of image information that will be shared with staff members and clients. These images will be scans of 35 and 120 film for hipster photography that will be displayed around the coffee shop. The storage solution should minimize costs by automatically archiving data onto slower storage when required. A SAS key solution should be created for a future image gallery solution to display images on a TV in the Coffee Shop running a small Raspberry Pi solution locally hosting a web page to display the images. Bonus points for creating an image display web app.

## Template

Create a bicep template. Params.

From resource groups. 

## Commands

//builds the image (have to be in the CoffeeShopTemplate).
docker build . -t coffee-app

//runs container. Create your own name. Opens to port 80. 
docker run -d --name contosocontainer -p 49153:80 coffee-app

//tags the image to azurecr.io
docker tag coffee-app contosocoffee.azurecr.io/coffee-app

Make a new container registry in Azure. I called it contosocoffeeregistry.

//make sure youre logged into azure (docker login <insert name>.azurecr.io). Pushes image to azurecr.io
docker push fridtjofcoffee.azurecr.io/coffee-app
