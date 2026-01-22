/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A000984 sequence
-/

namespace Sequence

@[OEIS := A000984, offset := 0, maxIndex := 100, derive := true]

def A000984 (n : ℕ) : ℕ :=
  (Nat.factorial (2 * n)) / ((Nat.factorial n) * (Nat.factorial n))


end Sequence