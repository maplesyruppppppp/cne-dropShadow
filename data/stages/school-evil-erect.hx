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

    if (Options.gameplayShaders)
    {
        dad.animation.onFrameChange.add((anim, frame, idx) ->
        {
            switch (anim)
            {
                default:
                    boyfriend.shader.dist = 3;
                    gf.shader.dist = 5;
                case 'singLEFT':
                    boyfriend.shader.dist = 2;
                    gf.shader.dist = 4;
                case 'singRIGHT':
                    boyfriend.shader.dist = 4;
                    gf.shader.dist = 6;
            }
        });
    }
}