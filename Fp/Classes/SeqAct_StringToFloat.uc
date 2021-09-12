class SeqAct_StringToFloat extends SequenceAction;

var() string input;
var float result;

function Activated() 
{
    result = float(input);
}

defaultproperties 
{
    ObjColor = (R=0, G=0, B=0)
    ObjName = "String To Float"
    ObjCategory = "Custom"
 	
    VariableLinks(0)=(ExpectedType = class'SeqVar_String', LinkDesc = "String", PropertyName = input)
    VariableLinks(1)=(ExpectedType = class'SeqVar_Float', LinkDesc = "Float", bWriteable = TRUE, PropertyName = result)
}