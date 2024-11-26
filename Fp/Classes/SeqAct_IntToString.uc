class SeqAct_IntToString extends SequenceAction;

var() int Value;
var string Result;

function Activated() 
{
    Result = string(Value);
}

defaultproperties 
{
    ObjColor = (R=0, G=0, B=0)
    ObjName = "Int To String"
    ObjCategory = "Custom"
 	
    VariableLinks(0)=(ExpectedType = class'SeqVar_Int', LinkDesc = "Int", PropertyName = Value)
    VariableLinks(1)=(ExpectedType = class'SeqVar_String', LinkDesc = "String", bWriteable = TRUE, PropertyName = Result)
}