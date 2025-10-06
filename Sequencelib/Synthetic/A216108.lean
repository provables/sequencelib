/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A216108 sequence
-/

namespace Sequence

@[OEIS := A216108, offset := 1, maxIndex := 30, derive := true]
def A216108 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((((((loop (λ (x y) ↦ 2 + (x + y)) x 2 * 2) - 2) * 2) * 2) - 1) + 2) * (1 + x)) * 3

end Sequence