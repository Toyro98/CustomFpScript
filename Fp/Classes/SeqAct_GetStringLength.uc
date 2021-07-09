class SeqAct_GetStringLength extends SequenceAction;

var string stringInput;
var int stringLength;

function Activated() 
{
    stringLength = len(stringInput);
}

defaultproperties 
{
    ObjColor = (R=0, G=0, B=0, A=255)
    ObjName = "Get String Length"
    ObjCategory = "Custom"
 	
    VariableLinks(0)=(ExpectedType = class'SeqVar_String', LinkDesc = "String", PropertyName = stringInput)
    VariableLinks(1)=(ExpectedType = class'SeqVar_Int', LinkDesc = "Result", bWriteable = TRUE, PropertyName = stringLength)
}
