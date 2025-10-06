/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A274326 sequence
-/

namespace Sequence

@[OEIS := A274326, offset := 2, maxIndex := 7, derive := true]
def A274326 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| loop2 (λ (x y) ↦ (2 % x) + y) (λ (x y) ↦ (x + y) * x) x 1 1 - 1

end Sequence