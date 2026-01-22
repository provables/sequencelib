/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A005843 sequence
-/

namespace Sequence

@[OEIS := A005843, offset := 0, maxIndex := 100, derive := true]

def A005843 : ℕ → ℕ := fun n => 2 * n


end Sequence