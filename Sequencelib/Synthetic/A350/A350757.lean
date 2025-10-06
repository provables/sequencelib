/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A350757 sequence
-/

namespace Sequence

@[OEIS := A350757, offset := 1, maxIndex := 70, derive := true]
def A350757 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ (y / loop (λ (x y) ↦ x + y) (x + x) 1) + x) x 1 + x

end Sequence