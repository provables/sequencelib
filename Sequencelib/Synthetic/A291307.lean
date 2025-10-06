/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A291307 sequence
-/

namespace Sequence

@[OEIS := A291307, offset := 2, maxIndex := 70, derive := true]
def A291307 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| (loop2 (λ (x y) ↦ (x - 1) - y) (λ (x _y) ↦ x) (x * 2) 0 1 + loop2 (λ (_x y) ↦ 2 + y) (λ (x _y) ↦ x) x 0 1) / 2

end Sequence