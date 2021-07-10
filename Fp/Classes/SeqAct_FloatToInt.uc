class SeqAct_FloatToInt extends SequenceAction;

var() float value;
var int result;

function Activated() 
{
    result = int(value);
}

defaultproperties 
{
    ObjColor = (R=0, G=0, B=0)
    ObjName = "Float To Int"
    ObjCategory = "Custom"
 	
    VariableLinks(0)=(ExpectedType = class'SeqVar_Float', LinkDesc = "Value", PropertyName = value)
    VariableLinks(1)=(ExpectedType = class'SeqVar_Int', LinkDesc = "Result", bWriteable = TRUE, PropertyName = result)
}