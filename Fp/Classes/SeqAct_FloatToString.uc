class SeqAct_FloatToString extends SequenceAction;

var() float value;
var string result;

function Activated() 
{
    result = string(value);
}

defaultproperties 
{
    ObjColor = (R=0, G=0, B=0)
    ObjName = "Float To String"
    ObjCategory = "Custom"
 	
    VariableLinks(0)=(ExpectedType = class'SeqVar_Float', LinkDesc = "Float", PropertyName = value)
    VariableLinks(1)=(ExpectedType = class'SeqVar_String', LinkDesc = "String", bWriteable = TRUE, PropertyName = result)
}