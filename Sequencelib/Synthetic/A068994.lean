/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A068994 sequence
-/

namespace Sequence

@[OEIS := A068994, offset := 1, maxIndex := 5, derive := true]
def A068994 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (x y) ↦ loop (λ (x _y) ↦ x + x) y x) (λ (x y) ↦ x - y) x 2 1

end Sequence