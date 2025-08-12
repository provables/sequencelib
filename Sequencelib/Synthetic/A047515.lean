/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/

import Mathlib
import Sequencelib.Meta
import GenSeq
open Synth

/-!

# A047515 sequence 
-/

namespace Sequence

@[OEIS := A047515, offset := 1, derive := true, maxIndex := 56]
def A047515 (n : ℕ) : ℤ :=
  let x := n - 1
  comprN (λ(x : ℤ) ↦ (loop (λ(x y : ℤ) ↦ (((x + y) * (x / 2)) + x)) (2) (x) % 2)) (x)

end Sequence
