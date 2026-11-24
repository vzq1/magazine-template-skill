#!/usr/bin/env python3
"""Generate a transit-map style city illustration as an SVG <symbol> for magazine openers and covers.

Usage: python3 city_art.py <symbol-id> <seed> > art.svg
Paste the <symbol> into the page's hidden SVG sprite, then place crops with:
  <svg class="art" viewBox="X Y W H" preserveAspectRatio="xMidYMid slice"><use href="#ID" width="800" height="800"/></svg>
Change the colours, route paths, and stops to fit the subject's motif (a shipping lane, a supply chain, a patient path).
"""
import random, sys

def city(seed, ink="#15171C", block="#1D212A", block2="#232834", accent="#1B42C4", accent2="#2F3B66",
         brand="#FFC20E", light="#F2F3F5", route2="#7F97E8"):
    r = random.Random(seed)
    s = [f'<rect width="800" height="800" fill="{ink}"/>']
    used = set()
    for _ in range(90):
        gx, gy = r.randrange(0, 20), r.randrange(0, 20)
        w, h = r.choice([1, 1, 2, 2, 3]), r.choice([1, 1, 2, 3])
        cells = {(gx + i, gy + j) for i in range(w) for j in range(h)}
        if cells & used or gx + w > 20 or gy + h > 20:
            continue
        used |= cells
        c = r.choices([block, block2, accent, accent2, brand, light], weights=[30, 22, 6, 10, 2, 1])[0]
        s.append(f'<rect x="{gx*40+5}" y="{gy*40+5}" width="{w*40-10}" height="{h*40-10}" fill="{c}"/>')
    grid = "".join(f"M{x} 0V800" for x in range(0, 801, 40)) + "".join(f"M0 {y}H800" for y in range(0, 801, 40))
    s.append(f'<path d="{grid}" stroke="{ink}" stroke-width="10"/>')
    s.append(f'<path d="M0 760L760 0" stroke="{ink}" stroke-width="14"/>')
    s.append(f'<path d="M-10 600H240L320 520H480V280H800" fill="none" stroke="{route2}" stroke-width="10" stroke-linejoin="round"/>')
    s.append(f'<path d="M200 -10V200L280 280H560L640 360V810" fill="none" stroke="{brand}" stroke-width="16" stroke-linejoin="round"/>')
    for x, y in [(200, 120), (280, 280), (420, 280), (560, 280), (640, 480), (640, 680), (120, 600), (400, 520), (480, 400), (680, 280)]:
        s.append(f'<circle cx="{x}" cy="{y}" r="13" fill="#FFFFFF" stroke="{ink}" stroke-width="6"/>')
    return "".join(s)

if __name__ == "__main__":
    sid = sys.argv[1] if len(sys.argv) > 1 else "cityA"
    seed = int(sys.argv[2]) if len(sys.argv) > 2 else 7
    print(f'<symbol id="{sid}" viewBox="0 0 800 800">{city(seed)}</symbol>')
