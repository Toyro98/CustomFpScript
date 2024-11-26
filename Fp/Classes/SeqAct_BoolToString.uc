class SeqAct_BoolToString extends SequenceAction;

var() bool Value;
var string Result;

function Activated() 
{
    Result = string(Value);
}

defaultproperties 
{
    ObjColor = (R=0, G=0, B=0)
    ObjName = "Bool To String"
    ObjCategory = "Custom"
 	
    VariableLinks(0)=(ExpectedType = class'SeqVar_Bool', LinkDesc = "Bool", PropertyName = Value)
    VariableLinks(1)=(ExpectedType = class'SeqVar_String', LinkDesc = "String", bWriteable = TRUE, PropertyName = Result)
}