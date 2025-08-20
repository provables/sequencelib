/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta
import GenSeq

open Synth

/-!
# A010881 sequence 
-/


namespace Sequence

@[OEIS := A010881, offset := 0, derive := true, maxIndex := 84]
def A010881 (x : ℕ) : ℕ :=
  Int.toNat <| (x % (2 * (2 + 4)))

end Sequence

