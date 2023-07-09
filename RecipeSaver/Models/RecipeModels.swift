//
//  RecipeModels.swift
//  RecipeSaver
//
//  Created by Yijia Jiang on 2023-07-07.
//

import Foundation

enum Category: String {
    case breakfast = "Breakfast"
    case soup = "Soup"
    case salade = "Salad"
    case apertizer = "Apertizer"
    case main = "Main"
    case side = "Side"
    case dessert = "Dessert"
    case snack = "Snack"
    case drink = "Drink"
}
     
struct Recipe: Identifiable{
    let id = UUID()
    let name: String
    let image: String
    let description: String
    let ingredients: String
    let direction: String
    let category: Category.RawValue
    let datePublished: String
    let url: String
}

extension Recipe{
    static let all: [Recipe] = [
        Recipe(
            name:"Sesame Noodles",

            image:"https://hips.hearstapps.com/hmg-prod/images/sesame-noodles-6499efc916e28.jpg?crop=0.789xw:0.790xh;0.0782xw,0.132xh&resize=980:*",
            description:"Smooth peanut butter creates a swoon-worthy, creamy sauce. Pass the chili crisp at the table if you like a little extra spice.",
            

            ingredients:"1pound noodles, frozen or (preferably) fresh sesame oil, plus a splash soy sauce Chinese rice vinegar Chinese sesame paste smooth peanut butter granulated sugar finely grated ginger",
           
            direction:"Step 1 Bring a large pot of water to a boil. Add noodles and cook until barely tender, about 5 minutes. They should retain a hint of chewiness. Drain, rinse with cold water, drain again and toss with a splash of sesame oil. Step 2 In a medium bowl, whisk together the remaining 2 tablespoons sesame oil, the soy sauce, rice vinegar, sesame paste, peanut butter, sugar, ginger, garlic and chili-garlic paste. Step 3 Pour the sauce over the noodles and toss. Transfer to a serving bowl, and garnish with cucumber and peanuts.",
            category:"Apertizer",
            datePublished:"2023-07-01",
            url:"https://cooking.nytimes.com/recipes/9558-takeout-style-sesame-noodles"
            ),
        Recipe(
            name:"Gingery Spring Soup",

            image:"https://hips.hearstapps.com/hmg-prod/images/gingery-spring-soup-6499d7ea086d6.jpg?crop=0.813xw:0.814xh;0.104xw,0.156xh&resize=980:*",
            description:"Get double the plant-based protein with shelled edamame and silken tofu (the best kind for soaking up all that savory broth).",
            

            ingredients:" vegetable bouillon base (we used Better than Bouillon) scallions, thinly sliced (dark greens separated from whites and light greens) piece ginger, peeled and thinly sliced. jalapeño, thinly sliced. asparagus, cut into 1-inch pieces. cremini mushrooms, thinly sliced.",
           
            direction:"Step 1In large pot, whisk together 1 cup water with bouillon base to combine, then stir in 6 additional cups water along with scallion whites and light greens, ginger, jalapeño and bring to a simmer. Step 2Add asparagus, mushrooms, and edamame and simmer until vegetables are barely tender, 3 to 4 minutes",
            category:"Soup",
            datePublished:"2023-07-01",
            url:"https://www.goodhousekeeping.com/food-recipes/healthy/g807/vegan-recipes/"
            ),
        Recipe(
            name:"Tomato and Charred Pepper Farro Salad",

            image:"https://hips.hearstapps.com/hmg-prod/images/tomato-and-charred-pepper-farro-salad-6499d130bde53.jpg?crop=0.735xw:0.736xh;0.145xw,0.245xh&resize=980:*",
            description:"Grilling season doesn't have to be all burgers and dogs. Throw some peppers and scallions on the fire to add smoky flavor to this potluck-ready salad.",
            

            ingredients:" pearled farro, rinsed. peppers (red, yellow, orange), quartered, seeds and stems discarded. olive oil, divided. Kosher salt and pepper. scallions. red wine vinegar. ground cumin.red pepper flakes.",
           
            direction:"Preheat oven to 425° F. Line a baking sheet with aluminum foil and spray with non-stick cooking spray. Whisk lemon juice, vinegar, garlic, 1 teaspoon salt and pepper and 3 tablespoons of the olive oil together in a small bowl and set aside. Bring 4 cups water and remaining 1 teaspoon salt to a boil in a medium saucepan. Stir in farro and return to a boil. Reduce heat to low, cover and simmer 25 minutes or until the farro is just cooked. Drain and transfer to a large mixing bowl. Stir vinaigrette into the hot farro until thoroughly combined. Meanwhile, dice the bell peppers into ½-inch pieces and toss with the Mutti® Cherry Tomatoes and the remaining 1 tablespoon olive oil. Season, if desired, with salt and pepper and arrange on prepared baking sheet. Roast for 20 minutes or until peppers are softened and have started to blacken on the edges. Remove from oven and allow to cool. To assemble salad, stir together farro, chopped artichokes, onion, parsley, roasted peppers and tomatoes and feta cheese. To serve, transfer to a large shallow bowl and garnish with additional chopped fresh parsley. SPECIAL OCCASION, VEGETERIAN, FAMILY, ITALIAN FOOD, APPETIZERS, RICE",
            category:"Salad",
            datePublished:"2023-07-01",
            url:"https://www.goodhousekeeping.com/food-recipes/healthy/g807/vegan-recipes/"
            ),
        Recipe(
            name:"Green Tahini Dip",

            image:"https://hips.hearstapps.com/hmg-prod/images/green-tahini-dip-6499d493da52b.jpg?crop=0.830xw:0.831xh;0.138xw,0.121xh&resize=980:*",
            description:"Full of bright, punchy herbs like basil and parsley, this makes a mean dip for veggies or sliced baguette.",
            

            ingredients:" tahini loosely packed fresh parsley cup water lemon juice olive oil maple syrup sea salt garlic, peeled and smashed green onion, ends trimmed and cut into 1-inch pieces",
           
            direction:"Add all ingredients to a high-speed blender (starting with the lesser amount of water) and blend until smooth, scraping down the sides as needed. Taste and adjust, adding more lemon juice for brightness, maple syrup or honey for sweetness, or garlic for spiciness and zing. You can also add more water 1 tablespoon at a time to reach your desired consistency. Enjoy with veggies, falafel, chicken, fish, or on grain bowls. Store leftover sauce in a sealed container in the refrigerator for up to 3-4 days. Not freezer friendly.",
            category:"Snack",
            datePublished:"2023-07-01",
            url:"https://www.goodhousekeeping.com/food-recipes/healthy/g807/vegan-recipes/"
            ),
        Recipe(
            name:"Air Fryer Brussels Sprouts",

            image:"https://hips.hearstapps.com/hmg-prod/images/air-fryer-brussels-sprouts-6499fb61b650d.jpg?crop=0.827xw:0.827xh;0.136xw,0.135xh&resize=980:*",
            description:"This simple sweet and spicy recipe might become your new go-to way to prep sprouts.",
            
            ingredients:" brussels sprouts oil salt garlic",
           
            direction:"Heat air fryer to 400 degrees, if preheating is necessary. Place brussels sprouts in the air fryer basket; drizzle with 1 tablespoon oil and the salt. Fry for 15 minutes, shaking basket or stirring the sprouts halfway through. Sprinkle sprouts with garlic.",
            category:"Breakfast",
            datePublished:"2023-07-01",
            url:"https://www.goodhousekeeping.com/food-recipes/healthy/g807/vegan-recipes/"
            ),
        Recipe(
            name:"Roasted Carrots and Red Onions",

            image:"https://hips.hearstapps.com/hmg-prod/images/roasted-carrots-and-red-onions-6499fbcf3f6ad.jpg?crop=0.832xw:0.833xh;0.0884xw,0.0795xh&resize=980:*",
            description:"Serve these coriander and cumin-spiced veggies with your favorite grain and call it dinner..",
            
            ingredients:"olive oil white wine vinegar dried parsley dried basil dried oregano salt ground black pepper to taste baby carrots red onion, cut into wedges garlic, peeled and smashed",
           
            direction:"Preheat the oven to 400 degrees F (200 degrees C). Line a half sheet pan with parchment paper. Whisk oil, vinegar, parsley, basil, oregano, salt, and pepper together in a bowl with a fork. Add carrots and turn to coat. Pour carrots onto the prepared sheet pan and nestle onions and garlic between them. Drizzle any remaining oil over the onions using a spatula. Bake in the preheated oven until vegetables are soft and cooked through, turning after about 25 minutes, about 45 minutes total.",
            category:"Side",
            datePublished:"2023-07-01",
            url:"https://www.goodhousekeeping.com/food-recipes/healthy/g807/vegan-recipes/"
            ),
        Recipe(
            name:"Focaccia Bread",

            image:"https://hips.hearstapps.com/hmg-prod/images/vegan-recipes-best-focaccia-bread-6499fa2b0fba8.jpg?crop=0.668xw:1.00xh;0.151xw,0&resize=980:*",
            description:"You wouldn't think this rich, fluffy Italian flatbread is vegan — but it's about 50% olive oil and 100% plant-based.",
            
            ingredients:"olive oil Flour Yeast Salt Rosemary or other seasonsings",
           
            direction:"Proof the yeast. In the warm water and sugar. (I highly recommend using a thermometer to measure the temperature of the water, so that it is not too hot or too cold.) Knead the dough*. Gradually add in the flour, olive oil and salt. Then knead for 5 minutes using the dough attachment or a stand mixer, or knead the dough by hand. First dough rise. Shape the dough into a ball and place it in a greased mixing bowl, and cover with a damp towel. Let the dough rest in a warm location for 45-60 minutes, or until it has doubled in size. Second dough rise.  Shape the dough into a large circle or rectangle until that the dough is about 1/2-inch thick*. Cover and let the dough continue to rise for another 20 minutes. Prepare the dough. Heat oven to 400°F. Transfer the dough to a large parchment-covered baking sheet (or press it into a 9 x 13-inch baking dish). Use your fingers to poke deep dents — like seriously, poke all the way down until you touch the baking sheet — all over the surface of the dough. Then drizzle a tablespoon or two of olive oil evenly all over the top of the dough, and sprinkle evenly with the fresh rosemary needles and sea salt.Bake. Bake for 20 minutes, or until the dough is slightly golden and cooked through.",
            category:"Dessert",
            datePublished:"2023-07-01",
            url:"https://www.goodhousekeeping.com/food-recipes/healthy/g807/vegan-recipes/"
            ),
        Recipe(
            name:"Vegan Bolognese",

            image:"https://hips.hearstapps.com/hmg-prod/images/screen-shot-2022-04-22-at-12-10-07-pm-1650643813.png?crop=0.526xw:0.524xh;0.272xw,0.258xh&resize=980:*",
            description:"Protein-rich lentils plus meaty mushrooms sub in for beef in this cozy sauce. Who says comfort food can't be plant-based?",
            
            ingredients:"Soy Sauce Marinara Sauce Olive Oil Seasonings Firm or Extra Firm Tofu Spaghetti Noodles",
           
            direction:"In a large bowl, add the soy sauce, 2 tablespoons of the marinara, olive oil, smoked paprika, garlic powder and onion powder. Stir well with a large spoon or whisk. Crumble the tofu into the bowl. You can use your hands but I usually use a potato masher to mash it, which also crumbles it. Stir the tofu crumbles into the sauce. Place in the oven and bake for 25-40 minutes until chewy, but be careful not to burn it. They are done when they have turned golden brown, are chewy and there is no water on the pan. You can stir them a few times if the edges start to burn.",
            category:"Main",
            datePublished:"2023-07-01",
            url:"https://www.goodhousekeeping.com/food-recipes/healthy/g807/vegan-recipes/"
            ),
        Recipe(
            name:"World-Famous Banini",

            image:"https://hips.hearstapps.com/hmg-prod/images/screen-shot-2022-04-22-at-12-10-07-pm-1650643813.png?crop=0.526xw:0.524xh;0.272xw,0.258xh&resize=980:*",
            description:"Protein-rich lentils plus meaty mushrooms sub in for beef in this cozy sauce. Who says comfort food can't be plant-based?",
            
            ingredients:"Soy Sauce Marinara Sauce Olive Oil Seasonings Firm or Extra Firm Tofu Spaghetti Noodles",
           
            direction:"In a large bowl, add the soy sauce, 2 tablespoons of the marinara, olive oil, smoked paprika, garlic powder and onion powder. Stir well with a large spoon or whisk. Crumble the tofu into the bowl. You can use your hands but I usually use a potato masher to mash it, which also crumbles it. Stir the tofu crumbles into the sauce. Place in the oven and bake for 25-40 minutes until chewy, but be careful not to burn it. They are done when they have turned golden brown, are chewy and there is no water on the pan. You can stir them a few times if the edges start to burn.",
            category:"Main",
            datePublished:"2023-07-01",
            url:"https://www.goodhousekeeping.com/food-recipes/healthy/g807/vegan-recipes/"
            ),
        
    
    
    ]
}
