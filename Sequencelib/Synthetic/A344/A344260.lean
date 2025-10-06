/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A344260 sequence
-/

namespace Sequence

@[OEIS := A344260, offset := 0, maxIndex := 13, derive := true]
def A344260 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ 1 + loop (λ (x _y) ↦ x + x) y x) (λ (_x y) ↦ y) x 1 x

end Sequence