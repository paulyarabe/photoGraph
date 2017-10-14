# photoGraph

Just trying to generate my photo graph (like an interest graph) but for photos.
read about interest graphs here:  https://en.wikipedia.org/wiki/Interest_graph

On a Friday afternoon, I did some coding, running a random set of five (of > five thousand) pictures from my Google Photos through an automated image analysis tool.

It was pretty painful.  The Google Vision API is quite particular about the types of urls it can take images from, and the urls I had in my database of 5000+ image urls did not make the cut :'(
Much sadness.

I had to do some drag-and-drop'ing.  Wasn't thrilled.  Kept going anyway.

In broad strokes, had the API annotate each of the five images and output the results.  That was tricky, but fun.
I put them in some slides for you to see.  

Conclusion: Five random photos suggest my "photo graph" is of a person who spends a lot of time in academic settings, with students in Japan or at MIT.
I like my mom's tasty home-cooked food, though the AI is wrong in suggesting that it is Indian food.  
And my parents think friendship for five years comes before maybe marriage, which is comforting.

Next steps:
1. Adding more automation in photo retrieval and conversion of hosted photos into urls the API can access (hard, but important for scaling).
2. Storing the API results in another file for further manipulation.
3. Analyze and keep the information I want to build my photo graph.
4. Visualize my photo graph in a web app.
5. Let friends make fun of me while we think of use cases.

https://user-images.githubusercontent.com/16816558/31570607-85f8b854-b053-11e7-928c-bc029aa4b9f4.png

https://user-images.githubusercontent.com/16816558/31570568-142067d6-b053-11e7-9b2a-91c8344e1ce6.png

https://user-images.githubusercontent.com/16816558/31570612-989f594a-b053-11e7-83c1-4d1f692ec07c.png

