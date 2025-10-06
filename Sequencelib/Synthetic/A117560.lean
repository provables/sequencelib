/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A117560 sequence
-/

namespace Sequence

@[OEIS := A117560, offset := 2, maxIndex := 42, derive := true]
def A117560 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| ((1 + x) * loop (λ (x y) ↦ 2 + (x + y)) x 2) + x

end Sequence