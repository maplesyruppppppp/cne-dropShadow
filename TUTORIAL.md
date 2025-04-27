# IMPORTING THE SCRIPT

To import the script inside your stage xml file, put in `<use-extension script="dropshadow-effect"/>`.

You can now assign variables to stage sprites (`sprite`, `boyfriend`, `dad`, `girlfriend` etc.).

Your stage xml should look something like this:

```xml
<!DOCTYPE codename-engine-stage>
<stage zoom="0.9">
        <use-extension script="dropshadow-effect"/>

        <girlfriend ds_applyShader="true" ds_color="white" ds_antialiasAmt="2" ds_angle="90" />
	<dad ds_applyShader="true" ds_color="white" ds_antialiasAmt="2" ds_angle="90" />
	<boyfriend ds_applyShader="true" ds_color="white" ds_antialiasAmt="2" ds_angle="90" />
</stage>
```

To view examples, visit [this branch](https://github.com/maplesyruppppppp/cne-dropShadow/tree/examples).

# LIST OF VARIABLES

## <syntax lang="xml">ds_applyShader</syntax>

Setting this to `true` will allow the sprite to have the shader. Default value is `false`/`null`.

## <syntax lang="xml">ds_brightness</syntax>, <syntax lang="xml">ds_hue</syntax>, <syntax lang="xml">ds_saturation</syntax>, <syntax lang="xml">contrast</syntax>

Use these to change the colors that are not shaded. Default values are `0`.

## <syntax lang="xml">ds_color</syntax>

The color of the drop shadow. You can set this to something like `#FFFFFF` or `white`. Default value is `null`.

## <syntax lang="xml">ds_angle</syntax>

The angle of the drop shadow.

For reference, depending on the angle, the affected side will be:

- 0 = RIGHT
- 90 = UP
- 180 = LEFT
- 270 = DOWN

Default value is `0`.

## <syntax lang="xml">ds_distance</syntax>

The distance or size of the drop shadow, in pixels. Relative to the texture itself.

Default value is `15`.

## <syntax lang="xml">ds_strength</syntax>

The strength of the drop shadow. Effectively just an alpha multiplier.

Default value is `1`.

## <syntax lang="xml">ds_threshold</syntax>

The brightness threshold for the drop shadow. Anything below this number will NOT be affected by the drop shadow shader.

A value of 0 effectively means theres no threshold, and vice versa.

Default value is `0.1`.

## <syntax lang="xml">ds_antialiasAmt</syntax>

The amount of antialias samples per-pixel, used to smooth out any hard edges the brightness thresholding creates.
        
Default value is 2, and 0 will remove any smoothing (perfect for pixel art sprites).

## <syntax lang="xml">ds_applyAltMask</syntax>

If `true`, the shader will try and use an alternate mask.

Default value is `null`.

## <syntax lang="xml">ds_altMask</syntax>

The image for the alternate mask. It uses the blue channel to specify what is or isnt going to use the alternate threshold.

Default value is `null`.

## <syntax lang="xml">ds_maskThreshold</syntax>

An alternate brightness threshold for the drop shadow.

Anything below this number will NOT be affected by the drop shadow shader, but ONLY when the pixel is within the mask.

Default value is `0`

