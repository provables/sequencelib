/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A065097 sequence
-/

namespace Sequence

@[OEIS := A065097, offset := 0, maxIndex := 50, derive := true]
def A065097 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ (loop2 (λ (x y) ↦ x * y) (λ (_x y) ↦ 1 + y) x 1 x / loop (λ (x y) ↦ x * y) x 1) / (1 + x)) 1 (x + x)

end Sequence