class SeqAct_IntToFloat extends SequenceAction;

var() int value;
var float result;

function Activated() 
{
    result = float(value);
}

defaultproperties 
{
    ObjColor = (R=0, G=0, B=0)
    ObjName = "Int To Float"
    ObjCategory = "Custom"
 	
    VariableLinks(0)=(ExpectedType = class'SeqVar_Int', LinkDesc = "Value", PropertyName = value)
    VariableLinks(1)=(ExpectedType = class'SeqVar_Float', LinkDesc = "Result", bWriteable = TRUE, PropertyName = result)
}