/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A182531 sequence
-/

namespace Sequence

@[OEIS := A182531, offset := 1, maxIndex := 33, derive := true]
def A182531 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ (((x / y) % 2) + x) + y) x 1 / 2

end Sequence