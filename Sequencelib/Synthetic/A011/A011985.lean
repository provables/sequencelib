/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A011985 sequence
-/

namespace Sequence

@[OEIS := A011985, offset := 7, maxIndex := 11, derive := true]
def A011985 (n : ℕ) : ℕ :=
  let x := n - 7
  Int.toNat <| 2 + loop2 (λ (_x y) ↦ 2 + y) (λ (x y) ↦ x + y) x (x - 1) 1

end Sequence