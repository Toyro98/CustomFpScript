class SeqAct_GetStringLength extends SequenceAction;

var() string input;
var int length;

function Activated() 
{
    length = len(input);
}

defaultproperties 
{
    ObjColor = (R=0, G=0, B=0)
    ObjName = "Get String Length"
    ObjCategory = "Custom"
 	
    VariableLinks(0)=(ExpectedType = class'SeqVar_String', LinkDesc = "String", PropertyName = input)
    VariableLinks(1)=(ExpectedType = class'SeqVar_Int', LinkDesc = "Length", bWriteable = TRUE, PropertyName = length)
}