/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A033572 sequence
-/

namespace Sequence

@[OEIS := A033572, offset := 0, maxIndex := 100, derive := true]
def A033572 (x : ℕ) : ℕ :=
  Int.toNat <| (1 + ((2 * ((x + x) + x)) + x)) * (1 + (x + x))

end Sequence