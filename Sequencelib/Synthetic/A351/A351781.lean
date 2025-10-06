/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A351781 sequence
-/

namespace Sequence

@[OEIS := A351781, offset := 1, maxIndex := 9, derive := true]
def A351781 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (x y) ↦ loop (λ (x y) ↦ x * y) y y * x) (λ (_x y) ↦ y) (1 + x) 1 x

end Sequence