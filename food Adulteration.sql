CREATE DATABASE food_safety;
USE food_safety;
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL
);
CREATE TABLE inquiries (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    location VARCHAR(255) NOT NULL,
    subject VARCHAR(255) NOT NULL,
    message TEXT NOT NULL
);
ALTER TABLE inquiries ADD COLUMN submitted_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP;
CREATE TABLE food_info (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL UNIQUE,
    advantages TEXT NOT NULL,
    disadvantages TEXT NOT NULL
);
CREATE TABLE IF NOT EXISTS food_info (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL UNIQUE,
    advantages TEXT NOT NULL,
    disadvantages TEXT NOT NULL,
    description TEXT NOT NULL
);


INSERT INTO food_info (name, advantages, disadvantages, description) VALUES

ALTER TABLE food_info ADD COLUMN description TEXT;
INSERT INTO food_info (name, advantages, disadvantages, description) VALUES 
('Milk', 
 '1. Rich in calcium for strong bones\n2. Good source of high-quality protein\n3. Contains essential vitamins like B12\n4. Supports muscle growth and recovery', 
 '1. Can cause lactose intolerance symptoms\n2. High-fat content in full-cream milk\n3. May trigger acne in some individuals\n4. Overconsumption may lead to weight gain', 
 'Milk is a highly nutritious drink, providing calcium, protein, and vitamins essential for bone strength and overall health. It is commonly consumed as a beverage, used in cooking, and a base for dairy products like cheese and yogurt. While beneficial, some people experience lactose intolerance. Choosing low-fat or plant-based alternatives can be an option for those avoiding dairy. Pasteurized milk is considered safe, while raw milk carries a risk of bacterial contamination. Different types of milk include cow, goat, and plant-based alternatives like almond and soy. Fortified milk may provide extra vitamins like D and A.'),

('Eggs', 
 '1. Excellent source of high-quality protein\n2. Supports brain health with choline\n3. Boosts metabolism and aids weight loss\n4. Rich in antioxidants for eye health', 
 '1. High cholesterol content in yolk\n2. Risk of salmonella in raw eggs\n3. May cause allergies in some people\n4. Overconsumption can lead to digestive issues', 
 'Eggs are one of the most nutritious foods, packed with protein, healthy fats, and essential vitamins. They support brain function due to their high choline content and are known for promoting muscle growth. While eggs are beneficial for weight loss, excessive consumption of yolks may raise cholesterol levels. Boiling, scrambling, or poaching eggs are common preparation methods. Some people may be allergic to eggs and should avoid them. Organic and free-range eggs are often preferred for their better nutritional profile. Eggs are also a staple in baking, providing structure and richness to various dishes.'),

('Banana', 
 '1. Provides instant energy boost\n2. Rich in potassium for heart health\n3. Aids digestion and gut health\n4. Helps regulate blood sugar levels', 
 '1. High in natural sugars\n2. May cause bloating in some people\n3. Can lead to constipation in excess\n4. Not ideal for people with kidney disease', 
 'Bananas are a widely popular fruit known for their convenience and high nutritional value. They provide an instant energy boost, making them a great snack for athletes. Bananas are rich in fiber and aid digestion while regulating blood sugar levels. However, they contain a high amount of natural sugars, which may not be ideal for diabetics. The fruit is rich in potassium, which is essential for heart health. Some people may experience bloating after consuming bananas. Bananas can be eaten raw, blended into smoothies, or used in baking. They are available year-round and are easy to store and carry.'),

('Apple', 
 '1. Boosts immune system\n2. High in fiber for better digestion\n3. Supports heart health\n4. Rich in antioxidants to prevent diseases', 
 '1. May cause bloating in some people\n2. Can trigger acid reflux\n3. Contains natural sugars\n4. Pesticide residue on non-organic apples', 
 'Apples are one of the most widely consumed fruits, known for their rich nutritional benefits. They contain fiber, antioxidants, and vitamin C, which help boost immunity and support heart health. Regular consumption of apples is linked to a reduced risk of chronic diseases. Apples are available in various colors and flavors, making them a versatile fruit. However, their natural sugar content should be considered by diabetics. Some people may experience bloating due to fiber content. Apples can be eaten raw, juiced, or used in desserts. Washing non-organic apples thoroughly helps reduce pesticide exposure.'),

('Orange', 
 '1. High in vitamin C for immunity\n2. Supports healthy skin and collagen production\n3. Rich in fiber for better digestion\n4. Hydrating and refreshing', 
 '1. Acidic nature can trigger acid reflux\n2. Can erode tooth enamel over time\n3. High natural sugar content\n4. May cause allergies in sensitive individuals', 
 'Oranges are a citrus fruit packed with vitamin C, making them excellent for boosting immunity and skin health. They are widely consumed as fresh fruit or juice and are known for their hydrating and refreshing qualities. Oranges also contain fiber, which aids digestion. However, their acidity can lead to acid reflux and tooth enamel erosion if consumed in excess. The fruit is available year-round and is a staple in many diets worldwide. Oranges also provide essential electrolytes, making them great for hydration. They can be used in salads, desserts, and smoothies. Organic oranges are preferred to avoid pesticide residues.'),

('Carrot', 
 '1. High in beta-carotene for eye health
2. Supports skin health and collagen production
3. Rich in fiber for digestion
4. Boosts immunity with antioxidants', 
 '1. Can cause skin discoloration if eaten in excess
2. May lead to digestive discomfort
3. High in natural sugars
4. Some people may have allergies', 
 'Carrots are a popular root vegetable known for their high beta-carotene content, which converts into vitamin A and supports eye health. They are commonly consumed raw, cooked, or juiced. Carrots also promote skin health and provide dietary fiber, aiding digestion. However, excessive consumption can lead to skin discoloration due to carotene buildup. They are widely available year-round and are used in various dishes, from salads to soups. They are an excellent snack for weight loss and overall health. Carrots can be stored in the refrigerator to maintain freshness for a longer time.'),

('Tomato', 
 '1. Rich in lycopene, beneficial for heart health
2. Contains vitamin C for immunity
3. Supports skin health
4. Aids digestion with fiber', 
 '1. Can trigger acid reflux
2. May cause allergies in sensitive individuals
3. High in natural acidity
4. Some people may experience bloating', 
 'Tomatoes are a widely used fruit that is rich in lycopene, an antioxidant that supports heart health and reduces inflammation. They are consumed in fresh, cooked, and processed forms, such as sauces and soups. Tomatoes are also known for their vitamin C content, which helps boost immunity. However, their natural acidity can cause digestive discomfort in some individuals. They are easy to grow at home and are a staple in many diets worldwide. Tomatoes are used in salads, pasta dishes, and sandwiches, making them an incredibly versatile food. Cooking tomatoes enhances lycopene absorption.'),

('Spinach', 
 '1. Rich in iron for blood health
2. Supports strong bones with vitamin K
3. Contains powerful antioxidants
4. Aids digestion and gut health', 
 '1. High in oxalates, may contribute to kidney stones
2. Can cause bloating in some people
3. May interfere with calcium absorption
4. Overconsumption can lead to digestive discomfort', 
 'Spinach is a nutrient-dense leafy green vegetable known for its high iron and vitamin K content, essential for blood and bone health. It is widely used in salads, smoothies, and cooked dishes. Spinach is also a great source of antioxidants, which help fight inflammation and support immune function. However, it contains oxalates, which may contribute to kidney stones in some individuals. Cooking spinach reduces oxalate levels, making it easier to digest. It is an excellent addition to a balanced diet and pairs well with a variety of foods, from eggs to pasta dishes.'),

('Cucumber', 
 '1. Hydrating and refreshing
2. Low in calories, good for weight loss
3. Supports skin health with antioxidants
4. Aids digestion with fiber', 
 '1. May cause bloating in some people
2. Can have a slight bitter taste
3. Overconsumption may lead to excessive water retention
4. Some individuals may experience allergic reactions', 
 'Cucumbers are a hydrating vegetable made up of over 90% water, making them an excellent choice for staying refreshed. They are low in calories and rich in fiber, making them beneficial for digestion and weight management. Cucumbers are often eaten raw in salads, pickled, or blended into juices. They also contain antioxidants that support skin health. However, some people may experience bloating or slight bitterness when consuming cucumbers. They are widely used in skincare routines for their cooling properties and can be incorporated into various dishes for added crunch and freshness.'),

('Potato', 
 '1. Good source of carbohydrates for energy
2. Rich in potassium for heart health
3. Contains fiber for digestion
4. Versatile and widely available', 
 '1. High in carbohydrates, may contribute to weight gain
2. Can cause blood sugar spikes
3. Frying increases unhealthy fat content
4. May contain harmful glycoalkaloids in green potatoes', 
 'Potatoes are a staple food in many cultures, valued for their energy-boosting carbohydrates and essential nutrients like potassium. They are incredibly versatile and can be prepared in various ways, including boiling, baking, and frying. Potatoes contain fiber, which aids digestion, but consuming them in excess, especially in fried forms, can lead to weight gain. Green potatoes may contain harmful glycoalkaloids, which should be avoided. Potatoes are widely used in dishes such as mashed potatoes, fries, and stews. When consumed in moderation and prepared healthily, they are a nutritious addition to the diet.'),

('Broccoli', 
 '1. High in fiber, aids digestion
2. Rich in vitamins C and K
3. Contains cancer-fighting antioxidants
4. Supports heart health', 
 '1. Can cause gas and bloating
2. May interfere with thyroid function
3. Some people may have an aversion to taste
4. Can be hard to digest when raw', 
 'Broccoli is a cruciferous vegetable packed with nutrients, including vitamins C and K, fiber, and antioxidants. It has been linked to cancer prevention due to its high sulforaphane content. Broccoli is commonly eaten steamed, roasted, or added to stir-fries. However, some people experience bloating after consuming it due to its fiber content. Cooking can help reduce this effect. Broccoli is a great addition to a balanced diet and supports heart and immune health. Including it in meals can enhance nutrition without adding excessive calories.'),

('Mushroom', 
 '1. Rich in B vitamins and selenium
2. Supports immune health
3. Low in calories, good for weight management
4. Contains powerful antioxidants', 
 '1. Some varieties can be toxic
2. Can cause allergic reactions in some individuals
3. Spoils quickly if not stored properly
4. May cause digestive discomfort', 
 'Mushrooms are a unique type of fungi consumed worldwide for their nutritional benefits and umami flavor. They provide essential B vitamins, selenium, and antioxidants that help boost immune function. Mushrooms are versatile and can be added to soups, stir-fries, and pasta. However, some wild mushrooms are poisonous, so only edible varieties should be consumed. Certain individuals may experience allergic reactions to mushrooms. Proper storage is crucial to prevent spoilage. Cooking mushrooms enhances their flavor and nutrient absorption. They are an excellent meat substitute for plant-based diets.'),

('Peanut', 
 '1. High in protein and healthy fats
2. Supports brain function
3. Rich in antioxidants
4. Good for heart health', 
 '1. Common allergen, can cause severe reactions
2. High in calories, may lead to weight gain
3. Contains anti-nutrients that may hinder absorption
4. Some peanut butter brands contain added sugars and oils', 
 'Peanuts are a nutrient-dense legume widely consumed in various forms, including raw, roasted, and as peanut butter. They provide a good source of plant-based protein and healthy monounsaturated fats. Peanuts are also rich in antioxidants, which contribute to their heart-protective benefits. However, peanut allergies are common and can be life-threatening. Consuming them in moderation is recommended due to their high-calorie content. Peanuts contain anti-nutrients that may reduce mineral absorption, but roasting can minimize this effect. Peanut butter is a popular spread, but choosing natural varieties is best to avoid added sugars and unhealthy fats.'),

('Almond', 
 '1. Rich in vitamin E, good for skin
2. Supports brain and heart health
3. High in fiber, promotes digestion
4. Good source of plant-based protein', 
 '1. High in calories, may contribute to weight gain
2. Can be hard to digest if not soaked
3. Some people may have nut allergies
4. May contain pesticide residues if not organic', 
 'Almonds are a nutrient-rich tree nut known for their benefits to skin, brain, and heart health. They are an excellent source of vitamin E, fiber, and plant-based protein. Almonds can be consumed raw, roasted, or blended into almond butter and milk. However, their high-calorie content means they should be eaten in moderation. Some individuals may experience digestive issues if almonds are not soaked before consumption. Allergies to almonds are possible, and it is best to choose organic options to avoid pesticide exposure. Almonds are a versatile ingredient in both sweet and savory dishes.'),

('Walnut', 
 '1. Rich in omega-3 fatty acids
2. Supports brain health and memory
3. Contains powerful antioxidants
4. Good for heart health', 
 '1. High in calories, can lead to weight gain
2. May cause allergic reactions in some individuals
3. Can become rancid if not stored properly
4. Excess consumption may cause digestive issues', 
 'Walnuts are well-known for their brain-boosting benefits due to their high omega-3 fatty acid content. They are also packed with antioxidants, which help reduce inflammation and support heart health. Walnuts are commonly eaten raw, added to salads, or incorporated into baked goods. However, they are calorie-dense and should be consumed in moderation. Some people may have nut allergies and should avoid them. Walnuts can become rancid if not stored in a cool, dry place. Including a small handful in the diet daily can provide numerous health benefits without excessive calorie intake.'),

('Lentils', 
 '1. High in plant-based protein
2. Rich in fiber for digestion
3. Supports heart health
4. Good source of iron', 
 '1. Can cause bloating and gas
2. May contain anti-nutrients
3. Hard to digest if not cooked properly
4. Can lead to mineral absorption issues', 
 'Lentils are a highly nutritious legume packed with plant-based protein and fiber. They support heart health by reducing cholesterol levels and improving digestion. Lentils are a great source of iron, making them beneficial for individuals with anemia. They can be cooked into soups, stews, and salads. However, they contain anti-nutrients that may hinder mineral absorption, but soaking or sprouting can reduce these effects. Some people may experience bloating due to their fiber content. Lentils are a staple food in many vegetarian and vegan diets, providing essential nutrients for a balanced diet.'),

('Chickpeas', 
 '1. Excellent source of plant-based protein
2. Helps in weight management
3. Rich in fiber for digestion
4. Supports heart health', 
 '1. Can cause bloating and gas
2. Hard to digest for some people
3. High in carbohydrates
4. May contain anti-nutrients', 
 'Chickpeas, also known as garbanzo beans, are a versatile legume packed with protein and fiber. They are commonly used in hummus, salads, and stews. Chickpeas help in weight management by promoting satiety and reducing cravings. However, they may cause bloating in some individuals due to their fiber content. Soaking chickpeas before cooking can improve digestibility. They are an excellent source of plant-based protein and are widely consumed in vegetarian and vegan diets. Their high carbohydrate content provides energy, making them a great addition to a balanced diet.'),

('Yogurt', 
 '1. Contains probiotics for gut health
2. Rich in calcium for strong bones
3. Supports immune function
4. Good source of protein', 
 '1. May cause lactose intolerance issues
2. Some brands contain added sugar
3. Can trigger dairy allergies
4. May not be suitable for vegans', 
 'Yogurt is a fermented dairy product known for its probiotic content, which supports gut health and digestion. It is also rich in calcium, promoting bone health and preventing osteoporosis. Yogurt is a good source of protein and helps maintain a healthy immune system. However, some people may experience lactose intolerance when consuming yogurt. Choosing plain, unsweetened varieties is best to avoid added sugars. There are also plant-based yogurt alternatives made from almond, soy, and coconut milk. Yogurt is widely used in smoothies, breakfast bowls, and cooking to enhance both flavor and nutrition.'),

('Cheese', 
 '1. High in protein for muscle growth
2. Rich in calcium for bone health
3. Provides essential vitamins like B12
4. Adds flavor and texture to meals', 
 '1. High in saturated fats
2. Can contribute to weight gain
3. May cause lactose intolerance issues
4. Some processed cheeses contain additives', 
 'Cheese is a widely enjoyed dairy product that is rich in protein and calcium. It provides essential vitamins like B12, which supports brain function and energy production. Cheese enhances the flavor and texture of various dishes, making it a popular ingredient in many cuisines. However, it is high in saturated fats, which can contribute to heart disease if consumed excessively. Some cheeses contain additives and preservatives that may not be ideal for health. Lactose-intolerant individuals may experience digestive discomfort. Choosing natural, unprocessed cheese in moderation can be a healthy addition to the diet.'),

('Olive Oil', 
 '1. Rich in healthy monounsaturated fats
2. Supports heart health
3. Contains antioxidants
4. Helps reduce inflammation', 
 '1. High in calories, may contribute to weight gain
2. Some low-quality brands may be adulterated
3. Can degrade if exposed to heat and light
4. Excess consumption may cause digestive issues', 
 'Olive oil is a staple in Mediterranean cuisine, known for its heart-healthy benefits. It is rich in monounsaturated fats and antioxidants that help reduce inflammation and lower bad cholesterol levels. Olive oil is commonly used in cooking, salad dressings, and marinades. However, due to its high-calorie content, excessive consumption can contribute to weight gain. Some low-quality olive oils may be mixed with cheaper oils, so choosing extra virgin olive oil is recommended. Proper storage away from heat and light preserves its quality. Olive oil remains one of the healthiest fats for cooking and overall well-being.'),

('Salmon', 
 '1. High in omega-3 fatty acids for heart health
2. Excellent source of high-quality protein
3. Supports brain function and memory
4. Contains essential vitamins like B12 and D', 
 '1. Can contain mercury and other contaminants
2. Expensive compared to other protein sources
3. May cause allergies in some individuals
4. Overfishing concerns impact sustainability', 
 'Salmon is a nutrient-dense fish rich in omega-3 fatty acids, which support heart health and brain function. It is a great source of high-quality protein and essential vitamins, making it a popular choice for a healthy diet. Salmon is commonly grilled, baked, or consumed raw in sushi dishes. However, some wild salmon may contain environmental contaminants, and farmed salmon often has added chemicals. Sustainable sourcing is important to prevent overfishing. Regular consumption of salmon can reduce inflammation and improve overall health, but moderation is advised due to potential mercury exposure.'),

('Brown Rice', 
 '1. Rich in fiber, supports digestion
2. Provides long-lasting energy
3. Contains essential minerals like magnesium and selenium
4. Lower glycemic index than white rice', 
 '1. Can contain arsenic if not properly sourced
2. Takes longer to cook than white rice
3. Has a chewier texture that some dislike
4. May cause bloating due to high fiber content', 
 'Brown rice is a whole grain that retains its bran and germ, making it more nutritious than white rice. It is high in fiber, which aids digestion and promotes satiety. Brown rice is an excellent source of magnesium, selenium, and antioxidants. It takes longer to cook and has a chewier texture compared to white rice. Some individuals may find it harder to digest due to its high fiber content. Choosing organic brown rice and rinsing it thoroughly can help reduce arsenic levels. Brown rice is a versatile ingredient used in stir-fries, grain bowls, and side dishes.'),

('Quinoa', 
 '1. Complete protein with all nine essential amino acids
2. High in fiber, supports digestion
3. Rich in antioxidants and minerals
4. Gluten-free and easy to digest', 
 '1. Can have a bitter taste if not rinsed properly
2. Higher in calories than some other grains
3. May cause bloating in some individuals
4. Expensive compared to other grains', 
 'Quinoa is a gluten-free pseudocereal that is packed with protein, fiber, and essential nutrients. It is unique because it contains all nine essential amino acids, making it an excellent plant-based protein source. Quinoa is rich in antioxidants and minerals such as magnesium and iron. It needs to be rinsed before cooking to remove its natural bitter coating, saponins. Some people may experience bloating due to its fiber content. Quinoa is versatile and can be used in salads, soups, and grain bowls. It is a nutritious alternative to rice and other grains, especially for gluten-free diets.'),

('Oats', 
 '1. High in fiber, supports heart health
2. Helps regulate blood sugar levels
3. Good source of plant-based protein
4. Contains antioxidants that reduce inflammation', 
 '1. Can cause bloating and gas in some people
2. May contain gluten if not processed separately
3. Some brands have added sugars in flavored varieties
4. Can be high in carbohydrates for low-carb diets', 
 'Oats are a highly nutritious whole grain known for their heart-healthy benefits. They contain beta-glucan fiber, which helps reduce cholesterol and stabilize blood sugar levels. Oats are also rich in antioxidants that help reduce inflammation. However, some individuals may experience bloating due to their fiber content. While oats are naturally gluten-free, cross-contamination during processing may occur. Choosing unflavored oats is recommended to avoid added sugars. Oats are commonly used in breakfast dishes like oatmeal and granola and can be blended into smoothies or used in baking for added fiber and nutrition.'),

('Green Tea', 
 '1. Rich in antioxidants, helps reduce inflammation
2. Boosts metabolism and aids weight loss
3. Supports brain function and mental clarity
4. May reduce the risk of chronic diseases', 
 '1. Contains caffeine, may cause insomnia
2. Can cause stomach irritation when consumed on an empty stomach
3. May interfere with iron absorption
4. Some varieties contain added sweeteners', 
 'Green tea is a popular beverage known for its high antioxidant content, particularly catechins, which help reduce inflammation and improve overall health. It is often consumed for its metabolism-boosting and weight loss properties. Green tea contains caffeine, which can enhance mental alertness but may cause insomnia in sensitive individuals. Drinking it on an empty stomach may lead to digestive discomfort. Green tea is available in various forms, including loose leaf, bagged, and powdered matcha. Choosing unsweetened varieties ensures maximum health benefits. Regular consumption can promote longevity and reduce the risk of chronic diseases.'),

('Coffee', 
 '1. Increases alertness and mental focus
2. Rich in antioxidants
3. May enhance physical performance
4. Can improve mood and reduce depression risk', 
 '1. High caffeine content may cause jitteriness
2. Can lead to acid reflux and digestive discomfort
3. May contribute to dehydration if consumed in excess
4. Some coffee drinks contain excessive sugar and calories', 
 'Coffee is one of the most popular beverages worldwide, valued for its stimulating effects due to its caffeine content. It is rich in antioxidants and may help reduce the risk of certain diseases. Coffee can improve cognitive function and physical performance. However, excessive consumption may lead to jitters, insomnia, and digestive issues. Some coffee drinks, especially flavored lattes, contain high amounts of sugar and calories. Choosing black coffee or adding minimal sugar and milk is recommended for health-conscious individuals. Coffee remains a staple morning beverage for millions around the world.'),

('Dark Chocolate', 
 '1. High in antioxidants, supports heart health
2. May improve brain function
3. Contains minerals like iron, magnesium, and zinc
4. Can boost mood and reduce stress', 
 '1. High in calories, can contribute to weight gain
2. Some brands contain added sugar
3. May cause acid reflux in sensitive individuals
4. Contains caffeine, may disrupt sleep if consumed late', 
 'Dark chocolate is a popular treat known for its rich taste and numerous health benefits. It is packed with antioxidants, particularly flavonoids, which support heart health and cognitive function. Dark chocolate also contains essential minerals like iron and magnesium. However, it is calorie-dense and should be consumed in moderation. Some brands add excess sugar, reducing its health benefits. It may also cause acid reflux in some individuals. Choosing dark chocolate with at least 70% cocoa ensures higher antioxidant content. It is often enjoyed as a snack, in desserts, or paired with fruits and nuts for added nutrition.'),

('Tofu', 
 '1. High in plant-based protein
2. Contains essential amino acids
3. Supports heart health
4. Low in calories and versatile', 
 '1. Can contain anti-nutrients
2. May affect thyroid function due to goitrogens
3. Some people may have soy allergies
4. Processed tofu may contain additives', 
 'Tofu is a soy-based protein alternative widely used in vegetarian and vegan diets. It is a great source of protein, essential amino acids, and calcium. Tofu is versatile and can be used in stir-fries, soups, and salads. However, it contains anti-nutrients that may hinder mineral absorption and goitrogens that can affect thyroid function in some individuals. Choosing organic, non-GMO tofu is recommended to avoid unwanted additives. Proper cooking enhances its texture and flavor, making it a nutritious addition to various meals.'),

('Pineapple', 
 '1. High in vitamin C, boosts immunity
2. Contains bromelain, aids digestion
3. Supports eye health
4. Helps reduce inflammation', 
 '1. High in natural sugars
2. Can cause mouth irritation
3. May trigger acid reflux
4. Overconsumption can lead to digestive issues', 
 'Pineapple is a tropical fruit known for its sweet taste and health benefits. It is rich in vitamin C, which supports the immune system, and bromelain, an enzyme that aids digestion. Pineapple is also beneficial for eye health and helps reduce inflammation in the body. However, its high sugar content should be considered by diabetics, and its acidity may cause discomfort in individuals with acid reflux. Some people experience mild mouth irritation due to bromelain. Pineapple can be eaten fresh, juiced, or used in desserts and savory dishes.'),

('Chia Seeds', 
 '1. High in omega-3 fatty acids
2. Supports digestion with fiber
3. Helps regulate blood sugar levels
4. Provides long-lasting energy', 
 '1. Can cause bloating if consumed in excess
2. May lead to choking if not soaked properly
3. High in calories for small servings
4. Some individuals may have seed allergies', 
 'Chia seeds are a superfood known for their high omega-3 fatty acid content and ability to absorb water, creating a gel-like consistency. They are rich in fiber, which aids digestion, and help regulate blood sugar levels. Chia seeds provide long-lasting energy and are commonly used in smoothies, yogurt, and puddings. However, consuming them dry without soaking may pose a choking risk. They are calorie-dense, so portion control is important. Regular consumption can support heart health and overall well-being when incorporated into a balanced diet.'),

('Pomegranate', 
 '1. High in antioxidants, supports heart health
2. Rich in vitamin C, boosts immunity
3. Helps improve memory and brain function
4. Contains anti-inflammatory properties', 
 '1. Can be difficult to eat due to seeds
2. May cause digestive discomfort in excess
3. High in natural sugars
4. Can stain clothing and surfaces', 
 'Pomegranates are packed with powerful antioxidants that help protect the heart and reduce inflammation. They are rich in vitamin C, which supports immune health, and contain polyphenols that improve memory and cognitive function. However, some people find them challenging to eat due to the seeds, and their juice can stain clothes and surfaces. Pomegranates are high in natural sugars, so moderation is key. They can be eaten raw, juiced, or added to salads and desserts for a burst of flavor and nutrition.'),

('Coconut', 
 '1. Provides healthy fats for energy
2. Supports hydration with natural electrolytes
3. Rich in fiber, aids digestion
4. Boosts skin and hair health', 
 '1. High in saturated fats
2. Can cause weight gain if consumed in excess
3. Hard to digest for some individuals
4. Processed coconut products may contain added sugars', 
 'Coconuts are widely consumed for their hydrating properties and rich nutritional profile. Coconut water is a natural electrolyte drink, while coconut flesh provides healthy fats and fiber. It is commonly used in cooking, smoothies, and desserts. However, coconuts contain high amounts of saturated fats, which should be consumed in moderation. Some processed coconut products have added sugars, reducing their health benefits. Choosing natural, unsweetened coconut products is recommended. Coconuts also provide essential nutrients that promote skin and hair health, making them a versatile food choice.'),

('Burger', 
 '1. Provides quick energy
2. High in protein (if using meat or plant-based alternatives)
3. Convenient and widely available
4. Customizable with healthy ingredients', 
 '1. Often high in unhealthy fats
2. Contains processed ingredients
3. Can contribute to weight gain
4. May increase cholesterol levels', 
 'Burgers are a popular fast food option, often made with a meat or plant-based patty, cheese, vegetables, and sauces. While they can provide protein and essential nutrients, they are often high in unhealthy fats and sodium. Opting for whole-grain buns, lean meats, and fresh vegetables can make them a healthier choice. Overconsumption of fast-food burgers may contribute to obesity and heart disease due to high saturated fat and calorie content.'),

('French Fries', 
 '1. Good source of quick energy
2. Contains some potassium from potatoes
3. Satisfying and widely enjoyed
4. Can be made healthier by baking', 
 '1. High in unhealthy trans fats
2. Often contains excessive salt
3. Can contribute to weight gain and obesity
4. May increase risk of heart disease', 
 'French fries are a popular side dish made from deep-fried potatoes. They are crispy and flavorful but often high in unhealthy fats and sodium. Frequent consumption of fried foods has been linked to weight gain and cardiovascular diseases. Choosing baked or air-fried alternatives with minimal salt can make them a healthier option. They are often served with condiments like ketchup, which may contain added sugars and preservatives.'),

('Pizza', 
 '1. Contains protein and calcium (if topped with cheese)
2. Can include vegetables for added nutrition
3. Provides energy from carbohydrates
4. Available in many varieties', 
 '1. High in saturated fats and sodium
2. Processed meats like pepperoni can be unhealthy
3. Can contribute to weight gain
4. Some crusts contain refined carbs with little fiber', 
 'Pizza is a globally popular dish consisting of a baked dough base, tomato sauce, cheese, and various toppings. While it can be a source of protein and essential nutrients, many commercially prepared pizzas are high in saturated fats, refined carbs, and sodium. Choosing whole-wheat crusts, lean proteins, and vegetable toppings can improve its nutritional value. Overconsumption of fast-food pizza may lead to health issues like obesity and high blood pressure.'),

('Soda', 
 '1. Provides instant energy
2. Refreshing and widely available
3. Some sodas contain caffeine for alertness
4. Available in sugar-free versions', 
 '1. High in added sugars, leading to weight gain
2. Can contribute to tooth decay
3. Contains artificial additives and preservatives
4. May cause insulin resistance and increase diabetes risk', 
 'Soda is a carbonated beverage that is widely consumed for its refreshing taste. Most sodas contain high amounts of sugar, which can contribute to weight gain, tooth decay, and metabolic disorders. Some sodas include caffeine, which can provide a temporary energy boost but may lead to dependency. Diet sodas contain artificial sweeteners, which some studies suggest may have negative health effects. Reducing soda consumption and opting for water or natural fruit juices is a healthier alternative.'),

('Chips', 
 '1. Convenient and satisfying snack
2. Available in many flavors
3. Provides some energy from carbohydrates
4. Can be made healthier with baked or air-fried versions', 
 '1. High in unhealthy trans fats
2. Often contains excessive sodium
3. Low in nutritional value
4. Can contribute to weight gain and high blood pressure', 
 'Chips are a widely consumed snack food made from thinly sliced potatoes or other ingredients, fried or baked until crispy. While they are convenient and tasty, they often contain high amounts of unhealthy fats, sodium, and preservatives. Excessive consumption of chips has been linked to obesity, hypertension, and cardiovascular diseases. Healthier options include baked, air-fried, or whole-grain chip alternatives with reduced salt and artificial flavorings.'),

('Chicken Biryani', 
 '1. High in protein from chicken
2. Contains aromatic spices with health benefits
3. Provides energy through carbohydrates
4. Rich in essential vitamins and minerals', 
 '1. Can be high in calories and fats
2. May contain excessive sodium
3. Overconsumption can lead to digestive issues
4. Some versions use unhealthy refined oils', 
 'Chicken Biryani is a flavorful and aromatic dish made with basmati rice, marinated chicken, and a blend of spices. It is rich in protein and essential nutrients but can be high in calories due to ghee or oil used in cooking. While it provides a balanced mix of carbohydrates and proteins, excessive consumption can contribute to weight gain. Healthier variations include using brown rice and leaner cuts of chicken.'),

('Mutton Biryani', 
 '1. Rich in protein and iron
2. Contains beneficial spices like turmeric and cardamom
3. Provides essential amino acids
4. High in energy', 
 '1. High in saturated fats
2. Can contribute to cholesterol issues
3. Heavy on digestion due to mutton
4. Overeating may lead to heart-related problems', 
 'Mutton Biryani is a traditional South Asian dish made with basmati rice, tender mutton, and a blend of spices. It is known for its rich flavor and nutritional value, providing iron and protein. However, mutton has higher saturated fat content, making it necessary to consume in moderation. Healthier versions can be made by using lean mutton cuts and limiting excess oil or ghee.'),

('Chicken Shawarma', 
 '1. High in lean protein
2. Contains fiber from vegetables
3. Flavorful and satisfying
4. Provides essential vitamins and minerals', 
 '1. Some versions have high sodium levels
2. Can contain unhealthy sauces with added sugars
3. May be high in saturated fats depending on preparation
4. Processed pita bread may contain refined carbs', 
 'Chicken Shawarma is a Middle Eastern dish made with marinated, slow-roasted chicken wrapped in pita bread and served with vegetables and sauces. It provides a good amount of protein and fiber but can be unhealthy if loaded with mayonnaise-based sauces or served with processed bread. Choosing whole wheat pita and homemade sauces can make it a healthier option.'),

('Mutton Kebab', 
 '1. High in protein and iron
2. Rich in essential amino acids
3. Flavorful and nutritious
4. Can be grilled for a healthier preparation', 
 '1. Can contain unhealthy fats if deep-fried
2. Processed kebabs may have preservatives
3. Some versions use excessive spices that may cause acidity
4. Overeating may contribute to cholesterol issues', 
 'Mutton Kebabs are flavorful grilled or fried meat skewers made with minced or marinated mutton. They provide high-quality protein and essential nutrients but can be unhealthy if deep-fried. Choosing grilled kebabs with minimal oil is a better alternative. They are commonly served with yogurt-based dips and salads for a balanced meal.'),

('Butter Chicken', 
 '1. High in protein
2. Rich in flavorful spices
3. Contains healthy fats from dairy
4. Can be paired with whole wheat naan or rice', 
 '1. High in saturated fats and calories
2. Some versions use excessive butter or cream
3. Can lead to digestive discomfort due to rich gravy
4. May contain high sodium levels', 
 'Butter Chicken is a creamy and mildly spiced Indian dish made with marinated chicken cooked in a tomato-based, buttery sauce. It provides good protein content but can be high in saturated fats due to butter and cream. Healthier versions can be made by reducing cream content and using Greek yogurt for marination. It is often served with naan or rice, making it a popular dish worldwide.'),

('Dal Tadka', 
 '1. High in plant-based protein
2. Rich in fiber, aids digestion
3. Contains essential vitamins and minerals
4. Low in unhealthy fats', 
 '1. Can be high in sodium if prepared with excessive salt
2. Some versions use too much oil or ghee
3. May cause bloating in some individuals
4. Overeating may lead to digestive discomfort', 
 'Dal Tadka is a popular Indian lentil dish made with yellow lentils (toor dal) tempered with aromatic spices. It is high in protein, fiber, and essential nutrients, making it a staple in vegetarian diets. While dal tadka is generally healthy, excessive use of oil or salt can reduce its nutritional benefits. Serving it with whole wheat roti or brown rice enhances its health value.'),

('Palak Paneer', 
 '1. High in protein and calcium from paneer
2. Rich in iron from spinach
3. Contains antioxidants and vitamins
4. A balanced meal with essential nutrients', 
 '1. Some versions contain excessive cream
2. Overconsumption may cause bloating due to spinach
3. High in calories if cooked with too much ghee
4. May not be suitable for lactose-intolerant individuals', 
 'Palak Paneer is a North Indian dish made with spinach and cottage cheese cooked in a flavorful spice blend. It provides high-quality protein, calcium, and iron, supporting bone and muscle health. However, adding too much cream or ghee can make it high in saturated fats. Choosing a lighter preparation with minimal cream enhances its nutritional benefits.'),

('Chole (Chickpea Curry)', 
 '1. Rich in plant-based protein
2. High in fiber, promotes digestion
3. Supports heart health
4. Packed with essential vitamins and minerals', 
 '1. Can cause bloating due to high fiber content
2. May contain too much oil or ghee in some preparations
3. Overconsumption can lead to digestive discomfort
4. High in carbohydrates', 
 'Chole, or chickpea curry, is a traditional Indian dish made with boiled chickpeas simmered in a flavorful tomato-based gravy. It is a great source of plant-based protein and fiber, making it a filling and nutritious meal. However, using too much oil or ghee in the preparation can add unnecessary calories. Serving it with brown rice or whole wheat roti makes it a healthier option.'),

('Fish Curry', 
 '1. High in omega-3 fatty acids
2. Excellent source of lean protein
3. Supports brain and heart health
4. Rich in vitamins and minerals', 
 '1. Some fish contain mercury
2. High sodium levels in certain preparations
3. May cause allergies in some individuals
4. Overconsumption of fried versions may be unhealthy', 
 'Fish Curry is a flavorful dish made with fresh fish cooked in a tangy, spiced gravy. It provides lean protein and essential omega-3 fatty acids that support heart and brain health. However, some fish species may contain mercury, so choosing low-mercury fish like salmon or tilapia is recommended. Preparing it with minimal oil and fresh ingredients enhances its nutritional benefits.'),

('Mutton Rogan Josh', 
 '1. High in protein and iron
2. Rich in flavorful spices with health benefits
3. Provides energy and essential nutrients
4. Traditional slow-cooked preparation retains flavors', 
 '1. High in saturated fats
2. Can be heavy on digestion
3. May contain excessive oil or ghee
4. Overconsumption can lead to cholesterol issues', 
 'Mutton Rogan Josh is a slow-cooked Kashmiri dish made with tender mutton pieces in a rich, spiced tomato-based gravy. It is packed with protein and iron but can be high in saturated fats. Choosing lean cuts of mutton and cooking with minimal oil can make it a healthier option. It pairs well with whole wheat roti or brown rice for a balanced meal.');
 INSERT INTO food_info (name, advantages, disadvantages, description) VALUES



('Tandoori Chicken', 
 '1. High in protein and low in unhealthy fats\n2. Grilled, making it a healthier option\n3. Packed with flavorful spices\n4. Supports muscle health', 
 '1. Some versions contain artificial food coloring\n2. Can become dry if overcooked\n3. Marination may contain excess salt\n4. Overeating may lead to digestive discomfort', 
 'Tandoori Chicken is a popular Indian dish where chicken is marinated in yogurt and spices and cooked in a clay oven (tandoor). It is high in protein and lower in fat compared to fried chicken. Some commercial versions may use artificial colors, which can be avoided by using natural ingredients like turmeric and paprika. It pairs well with salads or whole wheat roti for a balanced meal.'
),

('Chicken Korma', 
 '1. High in protein from chicken\n2. Rich in flavorful spices\n3. Contains healthy fats from nuts and yogurt\n4. Creamy and delicious texture', 
 '1. Can be high in calories and fats if made with excessive cream\n2. Some versions use too much oil or ghee\n3. May cause digestive discomfort if heavily spiced\n4. Overconsumption can contribute to weight gain', 
 'Chicken Korma is a rich and aromatic dish made with chicken, yogurt, nuts, and spices. It is known for its creamy texture and mildly spiced flavors. While it provides essential nutrients, excessive use of ghee or cream can make it unhealthy. A lighter version can be prepared using less oil and substituting cream with yogurt. It is typically served with naan or rice.'
);
DESCRIBE users;


