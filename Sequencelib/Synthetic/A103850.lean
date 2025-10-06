/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A103850 sequence
-/

namespace Sequence

@[OEIS := A103850, offset := 1, maxIndex := 6, derive := true]
def A103850 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((loop (λ (x y) ↦ (loop2 (λ (x y) ↦ x + y) (λ (x _y) ↦ x) (x / 2) 1 2 + 1) + y) x 1 / 2) / 2) + 2) + x

end Sequence