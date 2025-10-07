/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A018457 sequence
-/

namespace Sequence

@[OEIS := A018457, offset := 1, maxIndex := 16, derive := true]
def A018457 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| comprN (λ (x) ↦ loop (λ (x y) ↦ (x + y) * x) 2 4 % (1 + x)) x + 1

end Sequence