# Custom Unreal Scripts
Custom Fp.u script file for Mirror's Edge. Adding kismet logic that the game doesn't have. Making this public so you can know what's in the Fp.u

# How to make your own custom script files
1. Download [Unreal Tournament 3: Black Edition](https://store.steampowered.com/app/13210/Unreal_Tournament_3_Black/) on Steam
2. Download [ut3patch3.exe](https://docs.unrealengine.com/udk/Three/UT3ModHome.html) and apply the patch to where UT3 Black Edition is installed
3. Go to UT3 Binaries folder and make a shortcut of UT3.exe with in the target, add `make` and then start it
4. a) All that should've happened is to show the loading icon on the cursor. Then go to `C:\Program Files (x86)\Steam\steamapps\common\Unreal Tournament 3\UTGame\Config` and open `DefaultEngine.ini`. At lines 43, 45, 91, 120, add `;` at the start

```ini
;+EditPackages=UT3Gold
+EditPackages=UWeb
;+EditPackages=UT3GoldGame
```

4. b) Do it again but in `Documents\My Games\Unreal Tournament 3\UTGame\Config` and open `UTEngine.ini`. Lines 148, 181, 390, and 392.
5. Inside of ...\UTGame\Src\. Create 2 more folder called *Fp* and *Classes*. The path should look like `...\UTGame\Src\Fp\Classes`
6. Inside the Classes folder. Create a .uc file called *IntToString.uc*. In the file, add this code as a test

```uc
class IntToString extends SequenceAction;

var() int value;
var string result;

function Activated() 
{
    result = string(value);
}

defaultproperties 
{
    ObjColor = (R=0, G=0, B=0)
    ObjName = "Int To String"
    ObjCategory = "Custom"
 	
    VariableLinks(0)=(ExpectedType = class'SeqVar_Int', LinkDesc = "Value", PropertyName = value)
    VariableLinks(1)=(ExpectedType = class'SeqVar_String', LinkDesc = "Result", bWriteable = TRUE, PropertyName = result)
}
```

7. Before compiling the first time, we need to tell the compiler where to look when compiling the custom scripts. Go to `Documents\My Games\Unreal Tournament 3\UTGame\Config` and open `UTEditor.ini`. At the bottom of the file, there will be a [ModPackages]. Under `ModPackagesInPath=..\UTGame\Src` add `
ModPackages=Fp`. After that, it should look like this

```ini
[ModPackages]
ModPackagesInPath=..\UTGame\Src
ModPackages=Fp
ModOutputDir=..\UTGame\Unpublished\CookedPC\Script
```

8. Start the shortcut you created in step 3. A console should appear. If it doesn't say success, you didn't follow the steps correctly
9. The compiled Fp.u will be located at `Documents\My Games\Unreal Tournament 3\UTGame\Unpublished\CookedPC\Script`
10. Move/Copy the Fp.u to `Documents\EA Games\Mirror's Edge\TdGame\Unpublished\CookedPC` and in the Published folder too. If Published folder doesn't exist, create new folders called *Published* and inside of that create a folder called *CookedPC*.
11. If everything is done, launch the editor and open kismet. Inside the new Action, there should be a new menu called "Custom" and inside that's called "Int To String"
