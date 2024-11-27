# Creating Your Own Custom Unreal Scripts
> [!NOTE] 
> The name `Fp.u` is chosen as the user doesn't have to edit any `.ini` files to use your compiled script.

1. Download [Unreal Tournament 3: Black Edition](https://store.steampowered.com/app/13210/Unreal_Tournament_3_Black/) and [ut3patch3.exe](https://docs.unrealengine.com/udk/Three/UT3ModHome.html). Once both are installed, apply the patch to where UT3 Black Edition is installed.
2. Go to your UT3 Binaries folder and make a shortcut of UT3.exe with in the target, add `make` and then start it. All that should've happened is to show the loading icon on the cursor. Then go to `C:\Program Files (x86)\Steam\steamapps\common\Unreal Tournament 3\UTGame\Config` and open `DefaultEngine.ini`. At lines 43, 45, 91, 120, add `;` at the start. Do it again but in `Documents\My Games\Unreal Tournament 3\UTGame\Config` and open `UTEngine.ini`. Lines 148, 181, 390, and 392.

```ini
;+EditPackages=UT3Gold
+EditPackages=UWeb
;+EditPackages=UT3GoldGame
```

3. Inside of `...\UTGame\Src\`. Create 2 more folder called *Fp* and *Classes*. The path should look like `...\UTGame\Src\Fp\Classes`. Inside the Classes folder. Create a `IntToString.uc` file. In the file, add this code (you can make your own but this is like a Hello World test). 

```uc
class IntToString extends SequenceAction;

var() int Value;
var string Result;

function Activated() 
{
    Result = string(Value);
}

defaultproperties 
{
    ObjColor = (R=0, G=0, B=0)
    ObjName = "Int To String"
    ObjCategory = "Custom"
 	
    VariableLinks(0)=(ExpectedType = class'SeqVar_Int', LinkDesc = "Value", PropertyName = Value)
    VariableLinks(1)=(ExpectedType = class'SeqVar_String', LinkDesc = "Result", bWriteable = TRUE, PropertyName = Result)
}
```

4. Before compiling the first time, we need to tell the compiler where to look when compiling the custom scripts. Go to `Documents\My Games\Unreal Tournament 3\UTGame\Config` and open `UTEditor.ini`. At the bottom of the file, there will be a [ModPackages]. Under `ModPackagesInPath=..\UTGame\Src` add `ModPackages=Fp`. After that, it should look like this.

```ini
[ModPackages]
ModPackagesInPath=..\UTGame\Src
ModPackages=Fp
ModOutputDir=..\UTGame\Unpublished\CookedPC\Script
```

5. Start the shortcut you created in step 2. A console should appear. If it doesn't say success, you didn't follow the steps correctly.
6. The compiled Fp.u will be located at `Documents\My Games\Unreal Tournament 3\UTGame\Unpublished\CookedPC\Script`. Move/Copy the `Fp.u` to `Documents\EA Games\Mirror's Edge\TdGame\Unpublished\CookedPC` and in the Published folder too. If Published folder doesn't exist, create new folders called *Published* and inside of that create a folder called *CookedPC*. If everything is done, launch the editor and open kismet. Inside the new Action, there should be a new menu called "Custom" and inside that's called "Int To String".
