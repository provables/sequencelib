/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A175629 sequence
-/

namespace Sequence

@[OEIS := A175629, offset := 0, maxIndex := 86, derive := true]
def A175629 (x : ℕ) : ℤ :=
  ((1 + ((x * x) * x)) % (1 + (2 + 4))) - 1

end Sequence