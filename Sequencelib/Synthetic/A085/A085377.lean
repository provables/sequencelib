/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A085377 sequence
-/

namespace Sequence

@[OEIS := A085377, offset := 0, maxIndex := 34, derive := true]
def A085377 (x : ℕ) : ℕ :=
  Int.toNat <| (((loop (λ (x y) ↦ (2 + y) * (1 + x)) 2 x + x) * x) - x) * x

end Sequence