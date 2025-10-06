/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A030512 sequence
-/

namespace Sequence

@[OEIS := A030512, offset := 1, maxIndex := 98, derive := true]
def A030512 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ 1 + ((loop (λ (x _y) ↦ 1 + ((2 + x) * x)) 2 2 * x) + y)) x 1

end Sequence