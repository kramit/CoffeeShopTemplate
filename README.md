# CoffeeShopTemplate

Make two websites in New York and London. 
contosocoffeelondon
contosocoffeenewyork



1. Create two Azure container instances that runs the website in different regions.

2. Then loadbalance those two with geo-redundancy. (Mike said, use TM, but Front door?

## Users

Bob: Global admin and owner

Dave: contributor scoped to RG.

Mark: Will have read-only access scoped to RG. 



## Storage

- Storage account V2
- Needs blob container 

## Template

Create a bicep template. Params.



## Commands

//builds the image (have to be in the CoffeeShopTemplate).
docker build . -t coffee-app

//runs container, called .
docker run -d --name contosocontainer -p 49153:80 coffee-app

//tags the image to azurecr.io
docker tag coffee-app contosocoffee.azurecr.io/coffee-app



Make a new container registry in Azure. I called it contosocoffeeregistry.



//make sure youre logged into azure (docker login <insert name>.azurecr.io). Pushes image to azurecr.io
docker push fridtjofcoffee.azurecr.io/coffee-app






