/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A091032 sequence
-/

namespace Sequence

@[OEIS := A091032, offset := 2, maxIndex := 14, derive := true]
def A091032 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| loop (λ (x y) ↦ (2 + (2 + y)) * x) (x + x) (1 + x)

end Sequence