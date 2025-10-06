/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A085389 sequence
-/

namespace Sequence

@[OEIS := A085389, offset := 1, maxIndex := 18, derive := true]
def A085389 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (x y) ↦ (((1 % x) + y) * x) + x) (λ (_x y) ↦ y) x 1 x

end Sequence