/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A059709 sequence
-/

namespace Sequence

@[OEIS := A059709, offset := 1, maxIndex := 7, derive := true]
def A059709 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (2 * (2 + x)) - x % (1 + 4)

end Sequence