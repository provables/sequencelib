/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A000578 sequence
-/

namespace Sequence

@[OEIS := A000578, offset := 0, maxIndex := 100, derive := true]

def A000578 : ℕ → ℕ := fun n => n^3


end Sequence