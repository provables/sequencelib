/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A117447 sequence
-/

namespace Sequence

@[OEIS := A117447, offset := 0, maxIndex := 86, derive := true]
def A117447 (x : ℕ) : ℕ :=
  Int.toNat <| (1 - ((x * x) / 2)) % 3

end Sequence