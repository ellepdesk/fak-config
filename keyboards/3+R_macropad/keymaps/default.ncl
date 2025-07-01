let { tap, hold, td, combo, encoder,  .. } = import "fak/keycode.ncl" in

# We alias commonly used stuff, so we don't end up repeating them over and over.
let kc = tap.reg.kc in
let me = tap.custom.media in
let XXXX = tap.none & hold.none in
let TTTT = tap.trans & hold.trans in

# "cu" for custom keys. This is just a name, so it can be whatever you want.
let cu = {
  # Again, these are just names. They don't have to be 4-letter or capitalized.
  COPY = tap.reg.mod.lctl & kc.C,
  PSTE = tap.reg.mod.lctl & kc.V,
  CUT =  tap.reg.mod.lctl & kc.X,
  CLOS = tap.reg.mod.lalt & kc.F4,
  BOOT = tap.custom.fak.BOOT,

} in


# Keymap definition
{
  virtual_keys = [
    encoder.cw 0,
    encoder.ccw 0,
    combo.make 50 [0, 1, 2],
  ],

  layers = [
    [ # Layer 0
      cu.CUT, cu.COPY, cu.PSTE, me.MUTE,
      me.VOLD, me.VOLU, cu.BOOT
    ]
  ]
}
