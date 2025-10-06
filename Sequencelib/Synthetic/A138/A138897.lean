/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A138897 sequence
-/

namespace Sequence

@[OEIS := A138897, offset := 2, maxIndex := 17, derive := true]
def A138897 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| loop (λ (x y) ↦ (x * y) + x) (x + x) (loop (λ (x _y) ↦ 2 * (1 + x)) 2 x) / (2 + x)

end Sequence