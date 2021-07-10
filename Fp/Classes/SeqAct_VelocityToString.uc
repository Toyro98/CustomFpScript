class SeqAct_VelocityToString extends SequenceAction;

var() float value;
var string result;
var string speedUnitText;

// Use Metric or Imperial units (km/h / mph)
var() bool bMetric;

function Activated() 
{
    // cm/s to m/s
    value /= 100;

    if (bMetric == TRUE) 
    {
        // m/s to km/h
        value *= 3.6f;
        speedUnitText = "<Strings:TdGameUI.TdTimeTrial.SpeedUnitTextMetric>";
    } 
    else 
    {
        // m/s to mph
        value *= 2.237f;
        speedUnitText = "<Strings:TdGameUI.TdTimeTrial.SpeedUnitTextImperial>";
    }

    result = string(int(value));
    result = result @= speedUnitText;
}

defaultproperties 
{
    ObjColor = (R=0, G=0, B=0)
    ObjName = "DisplaySpeedTest"
    ObjCategory = "Custom"
 	
    VariableLinks(0)=(ExpectedType = class'SeqVar_Float', LinkDesc = "Velocity", PropertyName = value)
    VariableLinks(1)=(ExpectedType = class'SeqVar_Bool', LinkDesc = "Use Metric", bHidden = TRUE, PropertyName = bMetric)
    VariableLinks(2)=(ExpectedType = class'SeqVar_String', LinkDesc = "Result", bWriteable = TRUE, PropertyName = result)

    bMetric = TRUE
}