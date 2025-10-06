/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A190843 sequence
-/

namespace Sequence

@[OEIS := A190843, offset := 1, maxIndex := 100, derive := true]
def A190843 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((((((((((((x / 2) / loop (λ (x _y) ↦ x * x) 2 2) + 2) / 2) + x) / 2) / 2) / 2) + 1) + x) / 2) + 1) % 2

end Sequence