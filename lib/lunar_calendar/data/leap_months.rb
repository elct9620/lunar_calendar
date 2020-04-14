# frozen_string_literal: true

module LunarCalendar
  module Data
    # @since 0.1.0
    LEAP_MONTHS = [
      0x1694, 0x16AA, 0x4AD5, 0xAB6,
      0xC4B7, 0x4AE, 0xA56, 0xB52A,
      0x1D2A, 0xD54, 0x75AA, 0x156A,
      0x1096D, 0x95C, 0x14AE, 0xAA4D,
      0x1A4C, 0x1B2A, 0x8D55, 0xAD4,
      0x135A, 0x495D, 0x95C, 0xD49B,
      0x149A, 0x1A4A, 0xBAA5, 0x16A8,
      0x1AD4, 0x52DA, 0x12B6, 0XE937,
      0x92E, 0x1496, 0xB64B, 0xD4A,
      0xDA8, 0x95B5, 0x56C, 0x12AE,
      0x492F, 0x92E, 0xCC96, 0x1A94,
      0x1D4A, 0xADA9, 0xB5A, 0x56C,
      0x726E, 0x125C, 0xF92D, 0x192A,
      0x1A94, 0xDB4A, 0x16AA, 0xAD4,
      0x955B, 0x4BA, 0x125A, 0x592B,
      0x152A, 0xF695, 0xD94, 0x16AA,
      0xAAB5, 0x9B4, 0x14B6, 0x6A57,
      0xA56, 0x1152A, 0x1D2A, 0xD54,
      0xD5AA, 0x156A, 0x96C, 0x94AE,
      0x14AE, 0xA4C, 0x7D26, 0x1B2A,
      0XEB55, 0xAD4, 0x12DA, 0xA95D,
      0x95A, 0x149A, 0x9A4D, 0x1A4A,
      0x11AA5, 0x16A8, 0x16D4, 0xD2DA,
      0x12B6, 0x936, 0x9497, 0x1496,
      0x1564B, 0xD4A, 0xDA8, 0xD5B4,
      0x156C, 0x12AE, 0xA92F, 0x92E,
      0xC96, 0x6D4A, 0x1D4A, 0x10D65,
      0xB58, 0x156C, 0xB26D, 0x125C,
      0x192C, 0x9A95, 0x1A94, 0x1B4A,
      0x4B55, 0xAD4, 0xF55B, 0x4BA,
      0x125A, 0xB92B, 0x152A, 0x1694,
      0x96AA, 0x15AA, 0x12AB5, 0x974,
      0x14B6, 0xCA57, 0xA56, 0x1526,
      0x8E95, 0xD54, 0x15AA, 0x49B5,
      0x96C, 0xD4AE, 0x149C, 0x1A4C,
      0xBD26, 0x1AA6, 0xB54, 0x6D6A,
      0x12DA, 0x1695D, 0x95A, 0x149A,
      0xDA4B, 0x1A4A, 0x1AA4, 0xBB54,
      0x16B4, 0xADA, 0x495B, 0x936,
      0xF497, 0x1496, 0x154A, 0xB6A5,
      0xDA4, 0x15B4, 0x6AB6, 0x126E,
      0x1092F, 0x92E, 0xC96, 0xCD4A,
      0x1D4A, 0xD64, 0x956C, 0x155C,
      0x125C, 0x792E, 0x192C, 0xFA95,
      0x1A94, 0x1B4A, 0xAB55, 0xAD4,
      0x14DA, 0x8A5D, 0xA5A, 0x1152B,
      0x152A, 0x1694, 0xD6AA, 0x15AA,
      0xAB4, 0x94BA, 0x14B6, 0xA56,
      0x7527, 0xD26, 0XEE53, 0xD54,
      0x15AA, 0xA9B5, 0x96C, 0x14AE,
      0x8A4E, 0x1A4C, 0x11D26, 0x1AA4,
      0x1B54, 0xCD6A, 0xADA, 0x95C,
      0x949D, 0x149A, 0x1A2A, 0x5B25,
      0x1AA4, 0xFB52, 0x16B4, 0xABA,
      0xA95B, 0x936, 0x1496, 0x9A4B,
      0x154A, 0x136A5, 0xDA4, 0x15AC
    ].freeze
  end
end
