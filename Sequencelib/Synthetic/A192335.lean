/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A192335 sequence
-/

namespace Sequence

@[OEIS := A192335, offset := 1, maxIndex := 5, derive := true]
def A192335 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (_x y) ↦ 2 + y) (λ (x _y) ↦ loop (λ (x _y) ↦ x + x) x 1) x 1 0

end Sequence