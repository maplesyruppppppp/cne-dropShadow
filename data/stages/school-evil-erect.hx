import funkin.backend.shaders.WiggleEffect;
import funkin.backend.shaders.WiggleEffect.WiggleEffectType;

var wiggle:WiggleEffect = new WiggleEffect();

function postCreate()
{
    wiggle.waveSpeed = 2;
    wiggle.waveFrequency = 4;
    wiggle.waveAmplitude = 0.017;
    wiggle.effectType = WiggleEffectType.DREAMY;

    bg.shader = wiggle.shader;
}