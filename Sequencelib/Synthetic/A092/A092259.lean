/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A092259 sequence
-/

namespace Sequence

@[OEIS := A092259, offset := 1, maxIndex := 56, derive := true]
def A092259 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| 2 * (2 + (2 * ((x / 2) + x)))

end Sequence