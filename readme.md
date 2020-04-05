Ordering links in challenges:

This project is designed to meet the following user story:

"As a coach,
So I my students can be lazy while enjoying a constantly updated weekly challenge,
I want to be able to have my links between challenges update based on the order in the challenge_map."

Assumptions:

 - All challenge steps have a "Next Step #{link}" as the final line of the file - no trailing lines, sorry rubocop.
 - The order is in the challenge map
 - the challenge map file name is saved to the LinkSort class constant CHALLENGE_MAP
 - the challenge .md files are on the same level in the same folder as the challenge map.
 - the github address of the repo is saved to the LinkSort class constant REPO_ADDRESS
 - the challenge_map file has no indentation.
 - the names of the challenges are after the step number with a new line for each step.
 - there is no step 0

HOW TO USE: 

to add insert all the links and remove any previously inserted links:

type LinkSort.link_challenges with the linksort.rb file loaded up in the repository in question.

The format of this repository is an example of the required layout for this tool to work effectively.
