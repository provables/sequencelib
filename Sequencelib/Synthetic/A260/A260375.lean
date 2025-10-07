/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A260375 sequence
-/

namespace Sequence

@[OEIS := A260375, offset := 1, maxIndex := 13, derive := true]
def A260375 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| comprN (λ (x) ↦ loop (λ (x _y) ↦ (((loop (λ (x y) ↦ (x * x) + y) 2 2 * 2) - x) % (1 + x)) + 1) 2 x % 2) x

end Sequence