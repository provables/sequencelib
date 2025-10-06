/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A100157 sequence
-/

namespace Sequence

@[OEIS := A100157, offset := 1, maxIndex := 32, derive := true]
def A100157 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ (y * y) + x) (1 + (x + x)) 0

end Sequence