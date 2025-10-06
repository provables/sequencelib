/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A129185 sequence
-/

namespace Sequence

@[OEIS := A129185, offset := 1, maxIndex := 97, derive := true]
def A129185 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ (y / loop (λ (x y) ↦ x + y) (x / 2) (1 + x)) + x) x 0 % 2

end Sequence