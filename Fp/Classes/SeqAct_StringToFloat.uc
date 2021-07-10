class SeqAct_StringToFloat extends SequenceAction;

var() string string;
var float result;

function Activated() 
{
    result = float(string);
}

defaultproperties 
{
    ObjColor = (R=0, G=0, B=0)
    ObjName = "String To Float"
    ObjCategory = "Custom"
 	
    VariableLinks(0)=(ExpectedType = class'SeqVar_String', LinkDesc = "String", PropertyName = string)
    VariableLinks(1)=(ExpectedType = class'SeqVar_Float', LinkDesc = "Result", bWriteable = TRUE, PropertyName = result)
}