import utils.CompileTimeUtils;
class Main {
    static public function main() {
        trace("Hello, world!");

        var buildDate:Date = CompileTime.buildDate();
        trace("Build date: " + buildDate);

        var commitHash:String = CompileTimeUtils.buildGitCommitShaClean();
        trace("Commit hash: " + commitHash);

        Reflect.setField(js.Browser.window, "git", {
            buildDate: buildDate,
            commitHash: commitHash
        });
    }
}
