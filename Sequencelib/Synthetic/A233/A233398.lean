/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A233398 sequence
-/

namespace Sequence

@[OEIS := A233398, offset := 0, maxIndex := 34, derive := true]
def A233398 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ x * y) (λ (_x y) ↦ y) x 1 x % loop (λ (x _y) ↦ (x + x) + x) x 1

end Sequence