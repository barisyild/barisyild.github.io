package tools;

import haxe.macro.Context;

class MacroExpressionTools {
    #if macro
    public static function toExpr(v:Dynamic) {
        return Context.makeExpr(v, Context.currentPos());
    }
    #end
}
