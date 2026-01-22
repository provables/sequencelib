/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A000326 sequence
-/

namespace Sequence

@[OEIS := A000326, offset := 0, maxIndex := 100, derive := true]

def A000326 (n : ℕ) : ℕ := n * (3 * n - 1) / 2


end Sequence