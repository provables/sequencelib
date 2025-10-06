/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A270710 sequence
-/

namespace Sequence

@[OEIS := A270710, offset := 0, maxIndex := 50, derive := true]
def A270710 (x : ℕ) : ℤ :=
  ((2 + ((x + x) + x)) * x) - 1

end Sequence