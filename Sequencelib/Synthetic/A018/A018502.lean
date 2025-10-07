/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A018502 sequence
-/

namespace Sequence

@[OEIS := A018502, offset := 0, maxIndex := 19, derive := true]
def A018502 (x : ℕ) : ℕ :=
  Int.toNat <| comprN (λ (x) ↦ loop (λ (x y) ↦ (2 + (x + y)) * (2 + x)) 2 2 % (1 + x)) x + 1

end Sequence