/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A333470 sequence
-/

namespace Sequence

@[OEIS := A333470, offset := 1, maxIndex := 100, derive := true]
def A333470 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((((loop (λ (x _y) ↦ (x - 1) / if x ≤ 0 then 1 else 2) x x + x) + 1) + x) % 2) + x % 2) + x

end Sequence