/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A018288 sequence
-/

namespace Sequence

@[OEIS := A018288, offset := 1, maxIndex := 8, derive := true]
def A018288 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| comprN (λ (x) ↦ loop (λ (x y) ↦ (1 + x) * (y + x)) 2 2 % (1 + x)) x + 1

end Sequence