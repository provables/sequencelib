/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A212978 sequence
-/

namespace Sequence

@[OEIS := A212978, offset := 0, maxIndex := 46, derive := true]
def A212978 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x y) ↦ (x - (x / y)) + y) (x + x) 0 + 1) + x

end Sequence