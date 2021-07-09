class SeqAct_StringLowerCase extends SequenceAction;

var string stringInput;
var string stringResult;

function Activated() 
{
    stringResult = Locs(stringInput);
}

defaultproperties 
{
    ObjColor = (R=0, G=0, B=0, A=255)
    ObjName = "String LowerCase"
    ObjCategory = "Custom"
 	
    VariableLinks(0)=(ExpectedType = class'SeqVar_String', LinkDesc = "String", PropertyName = stringInput)
    VariableLinks(1)=(ExpectedType = class'SeqVar_String', LinkDesc = "Result", bWriteable = TRUE, PropertyName = stringResult)
}