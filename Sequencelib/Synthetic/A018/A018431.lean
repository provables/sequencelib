/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A018431 sequence
-/

namespace Sequence

@[OEIS := A018431, offset := 1, maxIndex := 18, derive := true]
def A018431 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| comprN (λ (x) ↦ loop (λ (x y) ↦ (2 + y) * ((2 + x) * x)) 2 1 % (1 + x)) x + 1

end Sequence