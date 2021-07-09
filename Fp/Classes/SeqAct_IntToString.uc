class SeqAct_IntToString extends SequenceAction;

var int intInput;
var string stringResult;

function Activated() 
{
    stringResult = string(intInput);
}

defaultproperties 
{
    ObjColor = (R=0, G=0, B=0, A=255)
    ObjName = "Int To String"
    ObjCategory = "Custom"
 	
    VariableLinks(0)=(ExpectedType = class'SeqVar_Int', LinkDesc = "Int", PropertyName = intInput)
    VariableLinks(1)=(ExpectedType = class'SeqVar_String', LinkDesc = "Result", bWriteable = TRUE, PropertyName = stringResult)
}