/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A124649 sequence
-/

namespace Sequence

@[OEIS := A124649, offset := 1, maxIndex := 5, derive := true]
def A124649 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (x y) ↦ (x * x) * y) (λ (_x y) ↦ y) ((x - 1) - 1) 1 x + x

end Sequence