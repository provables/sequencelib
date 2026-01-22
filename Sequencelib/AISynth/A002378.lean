/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A002378 sequence
-/

namespace Sequence

@[OEIS := A002378, offset := 0, maxIndex := 100, derive := true]

def A002378 : ℕ → ℕ := fun n => n * (n + 1)


end Sequence