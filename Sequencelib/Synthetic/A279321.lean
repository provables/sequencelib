/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A279321 sequence
-/

namespace Sequence

@[OEIS := A279321, offset := 0, maxIndex := 100, derive := true]
def A279321 (x : ℕ) : ℕ :=
  Int.toNat <| (((((loop (λ (x y) ↦ (1 + (x % (1 + (2 + 4)))) + y) x 1 + 2) + x) / 2) - x) * 2) - 1

end Sequence