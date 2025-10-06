/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A173807 sequence
-/

namespace Sequence

@[OEIS := A173807, offset := 1, maxIndex := 97, derive := true]
def A173807 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop (λ (x _y) ↦ loop (λ (x y) ↦ (2 * (2 + (x + y))) + x) 2 x + x) x 1 * 2) + 1

end Sequence