/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A131533 sequence
-/

namespace Sequence

@[OEIS := A131533, offset := 0, maxIndex := 100, derive := true]
def A131533 (x : ℕ) : ℤ :=
  (((1 + x) % 3) - x % 2) / 2

end Sequence