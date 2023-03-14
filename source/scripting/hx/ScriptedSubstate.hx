package scripting.hx;

import flixel.FlxG;

class ScriptedSubstate extends MusicBeatSubstate
{
    public static var substateName:Null<String>;
    public static var instance:ScriptedSubstate;

    override function create()
    {
        instance = this;

        // PlayState.instance.callFunc('onSubstateCreate', []);
        // PlayState.instance.setVar('close', close);

        super.create();
		// PlayState.instance.callFunc('onSubstateCreatePost', []);
    }

    public function new(substateName:Null<String>)
    {
        ScriptedSubstate.substateName = substateName;
        // PlayState.instance.callFunc('onNewSubstate', [substateName]);
        super();
        cameras = [FlxG.cameras.list[FlxG.cameras.list.length - 1]];
    }

	override function update(elapsed:Float)
	{
		// PlayState.instance.callFunc('onSubstateUpdate', [substateName, elapsed]);
		super.update(elapsed);
		// PlayState.instance.callFunc('onSubstateUpdatePost', [substateName, elapsed]);
	}

	override function destroy()
	{
		// PlayState.instance.callFunc('onSubstateDestroy', [substateName]);
		super.destroy();
	}
}