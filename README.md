# The coffee

In this project we created two websites both located in New York and London. 


The one called, contosocoffeelondon and the other contosocoffeenewyork. 



Here is the steps to create the project. 

1. Build a docker image 

2. Run a docker container. 

3. Create two Azure container instances (ACI) that runs the website in both London and New York. It has to be in different regions because.

4. Then loadbalance those two with geo-redundancy. (Mike said, use TM, but Front door?



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
