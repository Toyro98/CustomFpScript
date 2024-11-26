class SeqAct_FloatToString extends SequenceAction;

var() float Value;
var string Result;

function Activated() 
{
    Result = string(Value);
}

defaultproperties 
{
    ObjColor = (R=0, G=0, B=0)
    ObjName = "Float To String"
    ObjCategory = "Custom"
 	
    VariableLinks(0)=(ExpectedType = class'SeqVar_Float', LinkDesc = "Float", PropertyName = Value)
    VariableLinks(1)=(ExpectedType = class'SeqVar_String', LinkDesc = "String", bWriteable = TRUE, PropertyName = Result)
}