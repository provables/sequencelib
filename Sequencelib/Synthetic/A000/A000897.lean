/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A000897 sequence
-/

namespace Sequence

@[OEIS := A000897, offset := 0, maxIndex := 100, derive := true]
def A000897 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ 2 * ((2 * (x * y)) - x)) (x + x) 1 / loop (λ (x y) ↦ (y * y) * x) x 1

end Sequence