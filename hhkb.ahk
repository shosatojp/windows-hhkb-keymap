;https://www.autohotkey.com/docs/v2/

AddModifiers(k)
{
    if GetKeyState("LWin") {
        k := "#" . k
    }
    if GetKeyState("Control") {
        k := "^" . k
    }
    if GetKeyState("Shift") {
        k := "+" . k
    }
    if GetKeyState("Alt") {
        k := "!" . k
    }
    return k
}

sc064 & vkBA::Send AddModifiers("{Left}")
sc064 & vkDE::Send AddModifiers("{Right}")
sc064 & vkDB::Send AddModifiers("{Up}")
sc064 & vkBF::Send AddModifiers("{Down}")

sc064 & vk4C::Send AddModifiers("{PgUp}")
sc064 & vkBE::Send AddModifiers("{PgDn}")
sc064 & vk4B::Send AddModifiers("{Home}")
sc064 & vkBC::Send AddModifiers("{End}")

; IME on/off
vkEB::Send "{vkF4}"
