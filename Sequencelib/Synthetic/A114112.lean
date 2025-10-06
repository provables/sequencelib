/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A114112 sequence
-/

namespace Sequence

@[OEIS := A114112, offset := 1, maxIndex := 100, derive := true]
def A114112 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ loop2 (λ (_x y) ↦ y) (λ (_x _y) ↦ 0) x 2 y) x 1 + x

end Sequence