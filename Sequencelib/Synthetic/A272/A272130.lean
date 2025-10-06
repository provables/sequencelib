/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A272130 sequence
-/

namespace Sequence

@[OEIS := A272130, offset := 0, maxIndex := 100, derive := true]
def A272130 (x : ℕ) : ℕ :=
  Int.toNat <| (((2 + (2 * ((2 + (2 * (x + x))) * x))) + x) * (x + x)) + 1

end Sequence