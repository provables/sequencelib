/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A103115 sequence
-/

namespace Sequence

@[OEIS := A103115, offset := 0, maxIndex := 100, derive := true]
def A103115 (x : ℕ) : ℤ :=
  (2 * (3 * ((x * x) - x))) - 1

end Sequence