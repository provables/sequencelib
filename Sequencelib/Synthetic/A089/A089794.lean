/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A089794 sequence
-/

namespace Sequence

@[OEIS := A089794, offset := 4, maxIndex := 8, derive := true]
def A089794 (n : ℕ) : ℕ :=
  let x := n - 4
  Int.toNat <| ((loop (λ (x y) ↦ 2 + (x * y)) x 1 / 2) - x % 2) + 1

end Sequence