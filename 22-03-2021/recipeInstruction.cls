public class Recipe{
    string Name;
    string Instruction;
    Recipe(string RecipeName , string RecipeInstruction){
        
    Name = RecipeName;
    Instruction = RecipeInstruction;
}
    void print Description() {
         System.debug('Name:'+ Name ', Instruction'+ Instruction);
    }
}

List<Recipe> allRecipe = new List<allRecipe>();

allRecipe.add(new Recipe('gazapocho' , 'fry garlic and onion , add tomatoes, cook 15 min'));
allRecipe.add(new Recipe('spaghetti' , 'cook with sauce with tomatos'));

for (Recipe r : allRecipe){
    r.Description();
}
