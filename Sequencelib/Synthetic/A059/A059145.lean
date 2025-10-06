/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A059145 sequence
-/

namespace Sequence

@[OEIS := A059145, offset := 0, maxIndex := 29, derive := true]
def A059145 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x y) ↦ (2 * (x + y)) + y) (1 + x) 2 - 2) * 3

end Sequence