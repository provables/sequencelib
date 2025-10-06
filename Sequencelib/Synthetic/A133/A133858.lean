/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A133858 sequence
-/

namespace Sequence

@[OEIS := A133858, offset := 1, maxIndex := 2, derive := true]
def A133858 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x _y) ↦ loop (λ (x y) ↦ (x * y) + x) 4 x + x) (2 + x) 1 - 2

end Sequence