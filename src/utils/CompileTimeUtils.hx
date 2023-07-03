package utils;
using StringTools;

class CompileTimeUtils {
    /** Returns a string of the current git sha1 */
    macro public static function buildGitCommitShaClean():ExprOf<String> {
        var proc = new sys.io.Process('git', ['log', "--pretty=format:'%h'", '-n', '1']);
        var sha1 = proc.stdout.readLine();
        return @:privateAccess CompileTime.toExpr(sha1.replace("'", ""));
    }
}
