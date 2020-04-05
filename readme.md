Ordering links in challenges:

This project is designed to meet the following user story:

"As a coach,
So I my students can be lazy while enjoying a frequently updated progression from challenge to challenge,
I want to be able to have my links between challenges update based on the order in the challenge_map."

Assumptions:

 - All challenge steps have a "Next Step #{link}" as the final line of the file - sorry rubocop.
 - The order is in the challenge map
 - the challenge map file name is saved to the LinkSort class constant CHALLENGE_MAP
 - the challenge .md files are on the same level in the same folder as the challenge map.
 - the github address of the repo is saved to the LinkSort class constant REPO_ADDRESS
 - the challenge_map file has no indentation.
 - the names of the challenges are after the step number with a new line for each step.
 - there is no step 0
