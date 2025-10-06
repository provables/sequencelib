/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A017581 sequence
-/

namespace Sequence

@[OEIS := A017581, offset := 0, maxIndex := 52, derive := true]
def A017581 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ 1 + ((2 + y) * x)) 2 x

end Sequence