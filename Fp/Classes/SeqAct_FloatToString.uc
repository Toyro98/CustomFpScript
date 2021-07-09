class SeqAct_FloatToString extends SequenceAction;

var float floatInput;
var string stringResult;

function Activated() 
{
    stringResult = string(floatInput);
}

defaultproperties 
{
    ObjColor = (R=0, G=0, B=0, A=255)
    ObjName = "Float To String"
    ObjCategory = "Custom"
 	
    VariableLinks(0)=(ExpectedType = class'SeqVar_Float', LinkDesc = "Float", PropertyName = floatInput)
    VariableLinks(1)=(ExpectedType = class'SeqVar_String', LinkDesc = "Result", bWriteable = TRUE, PropertyName = stringResult)
}