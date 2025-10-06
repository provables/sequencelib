/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A216172 sequence
-/

namespace Sequence

@[OEIS := A216172, offset := 1, maxIndex := 100, derive := true]
def A216172 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((loop (λ (x _y) ↦ (x * x) - x) 1 (loop (λ (x y) ↦ x + y) x x) / 2) / 3) / 3

end Sequence