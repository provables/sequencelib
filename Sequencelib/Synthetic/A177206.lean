/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A177206 sequence
-/

namespace Sequence

@[OEIS := A177206, offset := 0, maxIndex := 37, derive := true]
def A177206 (x : ℕ) : ℕ :=
  Int.toNat <| ((loop (λ (x y) ↦ ((2 * (x + x)) / y) + x) x 2 + 2) + 2) + x

end Sequence