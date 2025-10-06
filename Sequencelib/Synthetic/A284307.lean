/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A284307 sequence
-/

namespace Sequence

@[OEIS := A284307, offset := 1, maxIndex := 68, derive := true]
def A284307 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop2 (λ (_x y) ↦ y) (λ (x _y) ↦ 1 - x) x 1 2 + x % 2) + x

end Sequence