/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A154307 sequence
-/

namespace Sequence

@[OEIS := A154307, offset := 0, maxIndex := 100, derive := true]
def A154307 (x : ℕ) : ℕ :=
  Int.toNat <| ((loop (λ (x y) ↦ (2 + (2 + y)) * x) x (1 + x) * (1 + x)) * (1 + x)) * (1 + x)

end Sequence