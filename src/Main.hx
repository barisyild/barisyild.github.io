import macros.BuildInfoMacro;
import utils.CompileTimeUtils;

class Main {
    public static var operatingSystem:String;

    static public function main() {
        BuildInfoMacro.apply();

        trace("Hello, world!");

        var buildDate:Date = CompileTime.buildDate();
        trace("Build date: " + buildDate);

        var commitHash:String = CompileTimeUtils.buildGitCommitShaClean();
        trace("Commit hash: " + commitHash);

        Reflect.setField(js.Browser.window, "git", {
            buildDate: buildDate,
            commitHash: commitHash
        });

        trace("Build Operating system: " + operatingSystem);
    }
}
