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

# A181179 sequence 
-/

namespace Sequence

@[OEIS := A181179, offset := 1]
def A181179 (n : ℕ) : ℤ :=
  let x := n - 1
  loop (λ(x y : ℤ) ↦ loop (λ(x y : ℤ) ↦ (x * y)) (x) (2)) (x) (1)


end Sequence
