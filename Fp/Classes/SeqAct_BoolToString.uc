class SeqAct_BoolToString extends SequenceAction;

var() bool value;
var string result;

function Activated() 
{
    result = string(value);
}

defaultproperties 
{
    ObjColor = (R=0, G=0, B=0)
    ObjName = "Bool To String"
    ObjCategory = "Custom"
 	
    VariableLinks(0)=(ExpectedType = class'SeqVar_Bool', LinkDesc = "Bool", PropertyName = value)
    VariableLinks(1)=(ExpectedType = class'SeqVar_String', LinkDesc = "String", bWriteable = TRUE, PropertyName = result)
}