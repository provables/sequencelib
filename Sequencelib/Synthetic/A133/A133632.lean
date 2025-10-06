/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A133632 sequence
-/

namespace Sequence

@[OEIS := A133632, offset := 1, maxIndex := 30, derive := true]
def A133632 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (x y) ↦ (x + x) + y) (λ (x y) ↦ (x - y) - y) x 1 2

end Sequence