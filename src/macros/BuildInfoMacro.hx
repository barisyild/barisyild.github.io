package macros;
class BuildInfoMacro {
    public static macro function apply() {
        return macro {
            @:privateAccess Main.operatingSystem = $v{ Sys.systemName() };
        };
    }
}
