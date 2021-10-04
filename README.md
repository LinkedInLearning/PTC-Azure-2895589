# Permit to Cloud: Landing with Confidence in Azure
This is the repository for the LinkedIn Learning course Permit to Cloud: Landing with Confidence in Azure. The full course is available from [LinkedIn Learning][lil-course-url].

![Permit to Cloud: Landing with Confidence in Azure][lil-thumbnail-url] 

The cloud provides a lot of great benefits for running your applications, but understanding and avoiding pitfalls will make the journey a lot more predictable and be more likely to provide the return on investment of time and energy put into the migration. In this course, Mike Benkovich takes you through the cloud journey, starting with how to build cloud-aware apps, to adding practices and processes to ensure you’re working in a way that can support the lifespan of your applications. Mike also shows how to use continuous delivery with GitHub Actions and DevOps pipelines, how to get started with Infrastructure as code, and discusses governance and policy. If you’re looking to move your applications to the cloud, join Mike in this course as he provides you with guardrails to make the journey successfully.

## Instructions
This repository has branches for each of the videos in the course. You can use the branch pop up menu in github to switch to a specific branch and take a look at the course at that stage, or you can add `/tree/BRANCH_NAME` to the URL to go to the branch you want to access.

## Branches
The branches are structured to correspond to the videos in the course. The naming convention is `CHAPTER#_MOVIE#`. As an example, the branch named `02_03` corresponds to the second chapter and the third video in that chapter. 
Some branches will have a beginning and an end state. These are marked with the letters `b` for "beginning" and `e` for "end". The `b` branch contains the code as it is at the beginning of the movie. The `e` branch contains the code as it is at the end of the movie. The `main` branch holds the final state of the code when in the course.

When switching from one exercise files branch to the next after making changes to the files, you may get a message like this:

    error: Your local changes to the following files would be overwritten by checkout:        [files]
    Please commit your changes or stash them before you switch branches.
    Aborting

To resolve this issue:
	
    Add changes to git using this command: git add .
	Commit changes using this command: git commit -m "some message"

## Installing
1. To use these exercise files, you must have the following installed:
	- [list of requirements for course]
2. Clone this repository into your local machine using the terminal (Mac), CMD (Windows), or a GUI tool like SourceTree.
3. [Course-specific instructions]


### Instructor

Mike Benkovich 
                            
Software Architect

                            

Check out my other courses on [LinkedIn Learning](https://www.linkedin.com/learning/instructors/mike-benkovich).

[lil-course-url]: https://www.linkedin.com/learning/permit-to-cloud-landing-with-confidence-in-azure
[lil-thumbnail-url]: https://cdn.lynda.com/course/2895589/2895589-1632934376130-16x9.jpg
