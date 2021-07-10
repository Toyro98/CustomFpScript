class SeqAct_IntToString extends SequenceAction;

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