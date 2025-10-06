/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A348464 sequence
-/

namespace Sequence

@[OEIS := A348464, offset := 7, maxIndex := 12, derive := true]
def A348464 (n : ℕ) : ℕ :=
  let x := n - 7
  Int.toNat <| ((loop (λ (x y) ↦ (((y / 2) * y) + x) + y) x 1 + 2) + x) + x

end Sequence