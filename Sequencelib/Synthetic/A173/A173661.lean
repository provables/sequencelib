/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A173661 sequence
-/

namespace Sequence

@[OEIS := A173661, offset := 1, maxIndex := 28, derive := true]
def A173661 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (x y) ↦ 1 + (x + y)) (λ (x _y) ↦ x) (x + x) 2 0 - loop (λ (x _y) ↦ (-x)) x 1

end Sequence