/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A165817 sequence
-/

namespace Sequence

@[OEIS := A165817, offset := 0, maxIndex := 100, derive := true]
def A165817 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ x * y) (λ (_x y) ↦ 1 + y) x 1 (x * 2) / loop (λ (x y) ↦ x * y) x 1

end Sequence