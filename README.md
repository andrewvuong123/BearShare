# Bear Share (Rails Decal Project Fall 2018)
##### for Berkeley Bears Anywhere

**Team Members:** Ryan Chan, Andrew Vuong, Edward Yam, Wen Qi Toh <br>
**Date:** 29 November 2019 <br>
**Prompt:** Social Network <br>


## Abstract
Social Media plays an important role in the way we communicate today. But information is often cluttered around, along with annoying advertisements and complicated User Interfaces. Serious, work-related topics and posts that we want to know often got mixed with funny, unimportant jokes and memes that we laugh at during break-time. Here, we are providing a new social network platform for better segregation and organization of information, along with additional features that help people connect with each other. We have thoroughly thought through the features we need from other common social networks such as Facebook, Reddit, Twitter, etc. and combined the best of them into one single website. We hope to create a better communication channels and form more meaningful relationships with people who use our platform. 

## Models

**USER** <br>
_Attributes:_ Username, Email, Tag (class of .), Recent posts, Group list

**POSTS**
_Attributes:_ Post history, DateTime, User IDs

**Likes**
Has_many: posts, users

**GROUP**
_Attributes:_ is_private, DateTime, Name, Description <br>
Has_many: posts, users

**GROUP ROSTER**
_Attributes:_ Group, Member Type (Admin, Member), Member


## Features
#### Complete
1. Create/edit/destroy posts
2. Creating Groups with many users
3. Creating user profiles
4. Liking posts

#### Ambition
1. Using devise
2. Have some styling to make the app prettier 
3. Deploy website on Heroku
4. Make UI Prettier

## Division of Labor
Ryan: writing README.md, deploy app on Heroku
Edward: Groups and Roster Models
Andrew: User Login and Post Models
Wen: Web Dev
