/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A024505 sequence
-/

namespace Sequence

@[OEIS := A024505, offset := 0, maxIndex := 35, derive := true]
def A024505 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x y) ↦ (2 * (x * y)) - x) x 1 / loop (λ (x y) ↦ x * y) x 2) / 2

end Sequence