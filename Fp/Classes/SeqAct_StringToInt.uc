class SeqAct_StringToInt extends SequenceAction;

var() string input;
var int result;

function Activated() 
{
    result = int(input);
}

defaultproperties 
{
    ObjColor = (R=0, G=0, B=0)
    ObjName = "String To Int"
    ObjCategory = "Custom"
 	
    VariableLinks(0)=(ExpectedType = class'SeqVar_String', LinkDesc = "String", PropertyName = input)
    VariableLinks(1)=(ExpectedType = class'SeqVar_Int', LinkDesc = "Int", bWriteable = TRUE, PropertyName = result)
}