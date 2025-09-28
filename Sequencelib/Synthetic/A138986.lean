/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A138986 sequence 
-/


namespace Sequence

@[OEIS := A138986, offset := 1, derive := true, maxIndex := 58]
def A138986 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (1 + (((2 + x) * (x / (1 + 4))) + x))

end Sequence

