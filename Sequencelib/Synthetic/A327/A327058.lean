/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A327058 sequence
-/

namespace Sequence

@[OEIS := A327058, offset := 0, maxIndex := 4, derive := true]
def A327058 (x : ℕ) : ℕ :=
  Int.toNat <| (((((loop (λ (x y) ↦ (2 * (x * x)) + y) x 0 / 2) / 2) + x) / 2) / 2) + 1

end Sequence