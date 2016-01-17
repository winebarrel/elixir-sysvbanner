# The following is the original copyright:
# https://github.com/uffejakobsen/sysvbanner
# ------------------------------------------------------------------
# /*****************************************************************
#  *
#  * SYSVbanner.c
#  *
#  * This is a PD version of the SYS V banner program (at least I think
#  * it is compatible to SYS V) which I wrote to use with the clock
#  * program written by:
#  **     DCF, Inc.
#  **     14623 North 49th Place
#  **     Scottsdale, AZ 85254
#  * and published in the net comp.sources.misc newsgroup in early July
#  * since the BSD banner program works quite differently.
#  *
#  * There is no copyright or responsibility accepted for the use
#  * of this software.
#  *
#  * Brian Wallis, brw@jim.odr.oz, 4 July 1988
#  *
#  *****************************************************************/
#
# /* Changes by David Frey, david@eos.lugs.ch, 3 February 1997:
#  * 1. protoized and indented, 2. changed @ character to #
#  */
# ------------------------------------------------------------------
defmodule Banner do
  @glyphs [
    "         ###  ### ###  # #   ##### ###   #  ##     ###  ",
    "         ###  ### ###  # #  #  #  ## #  #  #  #    ###   ",
    "         ###   #   # ########  #   ### #    ##      #   ",
    "          #            # #   #####    #    ###     #    ",
    "                     #######   #  #  # ####   # #       ",
    "         ###           # #  #  #  # #  # ##    #        ",
    "         ###           # #   ##### #   ### #### #       ",

    "   ##    ##                                            #",
    "  #        #   #   #    #                             # ",
    " #          #   # #     #                            #  ",
    " #          # ### ### #####   ###   #####           #   ",
    " #          #   # #     #     ###           ###    #    ",
    "  #        #   #   #    #      #            ###   #     ",
    "   ##    ##                   #             ###  #      ",

    "  ###     #    #####  ##### #      ####### ##### #######",
    " #   #   ##   #     ##     ##    # #      #     ##    # ",
    "# #   # # #         #      ##    # #      #          #  ",
    "#  #  #   #    #####  ##### ####### ##### ######    #   ",
    "#   # #   #   #            #     #       ##     #  #    ",
    " #   #    #   #      #     #     # #     ##     #  #    ",
    "  ###   ##### ####### #####      #  #####  #####   #    ",

    " #####  #####    #     ###      #           #     ##### ",
    "#     ##     #  # #    ###     #             #   #     #",
    "#     ##     #   #            #     #####     #        #",
    " #####  ######         ###   #                 #     ## ",
    "#     #      #   #     ###    #     #####     #     #   ",
    "#     ##     #  # #     #      #             #          ",
    " #####  #####    #     #        #           #       #   ",

    " #####    #   ######  ##### ###### ############## ##### ",
    "#     #  # #  #     ##     ##     ##      #      #     #",
    "# ### # #   # #     ##      #     ##      #      #      ",
    "# # # ##     ####### #      #     ######  #####  #  ####",
    "# #### ########     ##      #     ##      #      #     #",
    "#     ##     ##     ##     ##     ##      #      #     #",
    " ##### #     #######  ##### ###### ########       ##### ",

    "#     #  ###        ##    # #      #     ##     ########",
    "#     #   #         ##   #  #      ##   ####    ##     #",
    "#     #   #         ##  #   #      # # # ## #   ##     #",
    "#######   #         ####    #      #  #  ##  #  ##     #",
    "#     #   #   #     ##  #   #      #     ##   # ##     #",
    "#     #   #   #     ##   #  #      #     ##    ###     #",
    "#     #  ###   ##### #    # ########     ##     ########",

    "######  ##### ######  ##### ########     ##     ##     #",
    "#     ##     ##     ##     #   #   #     ##     ##  #  #",
    "#     ##     ##     ##         #   #     ##     ##  #  #",
    "###### #     #######  #####    #   #     ##     ##  #  #",
    "#      #   # ##   #        #   #   #     # #   # #  #  #",
    "#      #    # #    # #     #   #   #     #  # #  #  #  #",
    "#       #### ##     # #####    #    #####    #    ## ## ",

    "#     ##     ######## ##### #       #####    #          ",
    " #   #  #   #      #  #      #          #   # #         ",
    "  # #    # #      #   #       #         #  #   #        ",
    "   #      #      #    #        #        #               ",
    "  # #     #     #     #         #       #               ",
    " #   #    #    #      #          #      #               ",
    "#     #   #   ####### #####       # #####        #######",

    "  ###                                                   ",
    "  ###     ##   #####   ####  #####  ###### ######  #### ",
    "   #     #  #  #    # #    # #    # #      #      #    #",
    "    #   #    # #####  #      #    # #####  #####  #     ",
    "        ###### #    # #      #    # #      #      #  ###",
    "        #    # #    # #    # #    # #      #      #    #",
    "        #    # #####   ####  #####  ###### #       #### ",

    "                                                        ",
    " #    #    #        # #    # #      #    # #    #  #### ",
    " #    #    #        # #   #  #      ##  ## ##   # #    #",
    " ######    #        # ####   #      # ## # # #  # #    #",
    " #    #    #        # #  #   #      #    # #  # # #    #",
    " #    #    #   #    # #   #  #      #    # #   ## #    #",
    " #    #    #    ####  #    # ###### #    # #    #  #### ",

    "                                                        ",
    " #####   ####  #####   ####   ##### #    # #    # #    #",
    " #    # #    # #    # #         #   #    # #    # #    #",
    " #    # #    # #    #  ####     #   #    # #    # #    #",
    " #####  #  # # #####       #    #   #    # #    # # ## #",
    " #      #   #  #   #  #    #    #   #    #  #  #  ##  ##",
    " #       ### # #    #  ####     #    ####    ##   #    #",

    "                       ###     #     ###   ##    # # # #",
    " #    #  #   # ###### #        #        # #  #  # # # # ",
    "  #  #    # #      #  #        #        #     ## # # # #",
    "   ##      #      #  ##                 ##        # # # ",
    "   ##      #     #    #        #        #        # # # #",
    "  #  #     #    #     #        #        #         # # # ",
    " #    #    #   ######  ###     #     ###         # # # #",
  ]

  def banner(msg, writer \\ &IO.write(&1)) do
    Enum.each 0..7, fn index_a ->
      chunks = Regex.scan(~r/.{0,8}/, msg) |> Enum.map(&List.first(&1))
      Enum.each chunks, &print_line(&1, index_a, writer)
      writer.("\n")
    end
  end

  defp print_line(msg, index_a, writer) do
    chars = String.to_char_list(msg) |> Stream.with_index

    Enum.each chars, fn {ch, index_b} ->
      ind = case ch - ?\s do
        delta when delta < 0 -> 0
        delta -> delta
      end

      glyphs_line = Enum.at(@glyphs, trunc(ind / 8) * 7 + index_a) |> String.to_char_list
      line = 1..80 |> Enum.map(fn _ -> 0 end)

      line = Enum.reduce(0..7, line, fn index_c, line ->
        ch = Enum.at glyphs_line, (rem(ind, 8) * 7) + index_c, 0
        List.replace_at(line, index_b * 8 + index_c, ch)
      end)

      line = List.replace_at(line, index_b * 8 + 7, ?\s)
        |> Enum.filter(&(&1 != 0))
        |> List.to_string

      writer.(line)
    end
  end
end
