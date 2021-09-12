class SeqAct_StringToLowerCase extends SequenceAction;

var() string input;
var string result;

function Activated() 
{
    result = locs(input);
}

defaultproperties 
{
    ObjColor = (R=0, G=0, B=0)
    ObjName = "String To LowerCase"
    ObjCategory = "Custom"
 	
    VariableLinks(0)=(ExpectedType = class'SeqVar_String', LinkDesc = "String", PropertyName = input)
    VariableLinks(1)=(ExpectedType = class'SeqVar_String', LinkDesc = "Result", bWriteable = TRUE, PropertyName = result)
}