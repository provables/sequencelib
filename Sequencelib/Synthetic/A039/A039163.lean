/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A039163 sequence
-/

namespace Sequence

@[OEIS := A039163, offset := 1, maxIndex := 70, derive := true]
def A039163 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| comprN (λ (x) ↦ if ((x % loop (λ (x _y) ↦ 1 + (x + x)) 2 2) % loop (λ (x y) ↦ x + y) 3 2) ≤ 0 then 1 else 0) x

end Sequence