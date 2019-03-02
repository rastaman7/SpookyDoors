# SpookyDoors

This is a russian roulette game where 2 or more people are given 6 doors to choose from.
5 doors are safe and one is not. When a player chooses the bad door, he or she sees an image
that saids "You Lose". You can customize the image from the settings page.

How this is done
When you press the start button on the viewController, you go to the second page. when the second page is loaded, a number form 0~5 is randomly chosen. The number represents the doors and when the door with that number is chosen, the page is directed to the third page(lose page). On that third page, there is an image. there is a default image, but users can customize this image by going to the settings page. The image you chose in the settings page will be saved on newloseimage.pdf in the documents directory. The image is fetched each time the lose page is loaded.
