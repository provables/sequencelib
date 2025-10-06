/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A076936 sequence
-/

namespace Sequence

@[OEIS := A076936, offset := 1, maxIndex := 100, derive := true]
def A076936 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (_x y) ↦ y + y) (λ (x _y) ↦ x) x 1 (loop (λ (x _y) ↦ x + x) x 1)

end Sequence