/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A182212 sequence
-/

namespace Sequence

@[OEIS := A182212, offset := 1, maxIndex := 24, derive := true]
def A182212 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ (x * y) + x) x 1 / loop2 (λ (x y) ↦ x + y) (λ (x _y) ↦ x) x 1 0

end Sequence