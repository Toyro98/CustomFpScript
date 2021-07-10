class SeqAct_StringUpperCase extends SequenceAction;

var() string input;
var string result;

function Activated() 
{
    result = caps(input);
}

defaultproperties 
{
    ObjColor = (R=0, G=0, B=0)
    ObjName = "String UpperCase"
    ObjCategory = "Custom"
 	
    VariableLinks(0)=(ExpectedType = class'SeqVar_String', LinkDesc = "String", PropertyName = input)
    VariableLinks(1)=(ExpectedType = class'SeqVar_String', LinkDesc = "Result", bWriteable = TRUE, PropertyName = result)
}