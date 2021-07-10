class SeqAct_StringToInt extends SequenceAction;

var() string value;
var int result;

function Activated() 
{
    result = int(value);
}

defaultproperties 
{
    ObjColor = (R=0, G=0, B=0)
    ObjName = "String To Int"
    ObjCategory = "Custom"
 	
    VariableLinks(0)=(ExpectedType = class'SeqVar_String', LinkDesc = "String", PropertyName = value)
    VariableLinks(1)=(ExpectedType = class'SeqVar_Int', LinkDesc = "Result", bWriteable = TRUE, PropertyName = result)
}