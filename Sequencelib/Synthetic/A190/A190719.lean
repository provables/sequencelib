/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A190719 sequence
-/

namespace Sequence

@[OEIS := A190719, offset := 1, maxIndex := 66, derive := true]
def A190719 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| comprN (λ (x : ℤ) ↦ (((((((((((2 - ((x / 2) % 2)) * (2 + x)) / 2) / 2) + 2) * 2) + x) * 2) - 2) % (1 + 2)) - 1)) x

end Sequence