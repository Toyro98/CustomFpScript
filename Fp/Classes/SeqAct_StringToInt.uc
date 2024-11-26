class SeqAct_StringToInt extends SequenceAction;

var() string Input;
var int Result;

function Activated() 
{
    Result = int(Input);
}

defaultproperties 
{
    ObjColor = (R=0, G=0, B=0)
    ObjName = "String To Int"
    ObjCategory = "Custom"
 	
    VariableLinks(0)=(ExpectedType = class'SeqVar_String', LinkDesc = "String", PropertyName = Input)
    VariableLinks(1)=(ExpectedType = class'SeqVar_Int', LinkDesc = "Int", bWriteable = TRUE, PropertyName = Result)
}