/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A204418 sequence 
-/


namespace Sequence

@[OEIS := A204418, offset := 0, derive := true, maxIndex := 100]
def A204418 (x : ℕ) : ℕ :=
  Int.toNat <| (1 - ((x % 3) % 2))

end Sequence

