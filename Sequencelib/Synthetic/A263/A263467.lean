/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A263467 sequence
-/

namespace Sequence

@[OEIS := A263467, offset := 1, maxIndex := 6, derive := true]
def A263467 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((loop (λ (x y) ↦ 1 + ((x / 2) * y)) x x + 2) * 2) + 1

end Sequence