/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A257846 sequence 
-/


namespace Sequence

@[OEIS := A257846, offset := 0, derive := true, maxIndex := 100]
def A257846 (x : ℕ) : ℕ :=
  Int.toNat <| (((x / 2) / 3) * (x % (4 + 2)))

end Sequence

