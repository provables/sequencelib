/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A154025 sequence
-/

namespace Sequence

@[OEIS := A154025, offset := 1, maxIndex := 100, derive := true]
def A154025 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((loop2 (λ (x y) ↦ loop (λ (x _y) ↦ x + x) (2 + 4) x + y) (λ (x _y) ↦ (-x)) x 0 1 * 2) * 2) * 2

end Sequence