let { DirectPinKey, PhysicalEncoder, .. } = import "fak/keyboard.ncl" in
let { CH552T, .. } = import "fak/mcus.ncl" in

{
  mcu = CH552T,
  usb_dev = {
    vendor_id = 51966,  # 0xCAFE
    product_id = 47806, # 0xBABE
    product_ver = 257,  # 0x0101
  },
  keys =
    let D = DirectPinKey in
    [
        D 11, D 17, D 16, D 33, 
    ],
  encoders = [
    PhysicalEncoder 31 30 4
  ]
}