/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A206816 sequence
-/

namespace Sequence

@[OEIS := A206816, offset := 2, maxIndex := 100, derive := true]
def A206816 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| loop (λ (x y) ↦ (loop (λ (x y) ↦ x * y) y y * y) + x) (1 + x) 0

end Sequence