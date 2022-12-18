package states;

import flixel.util.FlxColor;
import flixel.FlxG;
import flixel.util.FlxTimer;
import acrazytown.template.BootLogo;
import flixel.FlxState;

class Startup extends FlxState
{
    var logo:BootLogo;

    override function create():Void
    {
        logo = new BootLogo((logo:BootLogo) -> 
        {
            FlxG.camera.fade(FlxColor.BLACK, 2, () -> 
            {
                FlxG.switchState(Type.createInstance(Main.gameData.initialState, []));
            });
        });
        add(logo);

        init();

		logo.play();
    }

    function init():Void
    {
        // Initialise stuff here
        FlxG.game.soundTray.volumeDownSound = "assets/sounds/template/traysound";
		FlxG.game.soundTray.volumeUpSound = "assets/sounds/template/traysound";
    }
}