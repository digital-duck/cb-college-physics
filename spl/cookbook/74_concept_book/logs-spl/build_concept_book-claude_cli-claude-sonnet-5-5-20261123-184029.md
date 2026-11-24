# SPL Run: build_concept_book

- **Adapter:** claude_cli
- **Model:** claude-sonnet-5-5
- **Tokens:** 3713 in / 3027 out
- **Latency:** 67936ms
- **Timestamp:** 2026-11-23 18:40:29

## Output

```output


---

## Electric Charge

Electric charge is a fundamental property of matter that comes in two types, conventionally labeled positive and negative. Protons carry positive charge, electrons carry negative charge, and neutrons carry none. Charge determines how particles interact electromagnetically: like charges repel, opposite charges attract. Charge is quantized — it exists only in whole-number multiples of the elementary charge, $e = 1.602 \times 10^{-19}$ coulombs — and it is conserved in every physical process, meaning the total charge of an isolated system never changes, even during chemical reactions, nuclear decay, or particle collisions.

An atom is electrically neutral when its number of protons equals its number of electrons. Ions form when atoms gain or lose electrons: a sodium atom (Na) loses one electron to become Na⁺, while a chlorine atom (Cl) gains one electron to become Cl⁻. This transfer of charge is what drives ionic bonding — the attraction between Na⁺ and Cl⁻ is a direct electromagnetic consequence of their opposite charges, and it explains why table salt (NaCl) holds together as a rigid crystal lattice. Because charge is conserved, the electron sodium loses is exactly the electron chlorine gains — nothing is created or destroyed, only transferred from one atom to the other.

To apply this concept in problem-solving: when analyzing a chemical reaction, always check that total charge balances on both sides of the equation, just as mass must balance — the sum of charges among reactants must equal the sum among products. When predicting whether a particular ion will form and remain stable, ask which arrangement of gained or lost electrons gives the atom a full outer electron shell, since that configuration minimizes the system's overall energy; sodium loses exactly one electron (not two) and chlorine gains exactly one electron (not two) because those specific transfers reach a stable, low-energy configuration. Electric charge — and the ions it produces — is the reason atoms bond into compounds, salts dissolve and conduct electricity in solution, and biological membranes maintain the voltage gradients that let neurons fire.

---

## Electric Current

**Definition.** Electric current is the rate at which electric charge flows through a cross-sectional area of a conductor. If a net charge $\Delta Q$ passes a given cross section during a time interval $\Delta t$, the average current is

$$I = \frac{\Delta Q}{\Delta t}.$$

When the current varies in time, the instantaneous current is $I = \dfrac{dQ}{dt}$. The SI unit is the **ampere** (A), where $1\ \text{A} = 1\ \text{C/s}$. By convention, the direction of current is the direction positive charge would move. In metal wires the carriers are electrons, so they drift opposite to the conventional current.

**Microscopic view.** Current can also be written in terms of the charge carriers. If a conductor has $n$ carriers per unit volume, each with charge $q$, cross-sectional area $A$, and average drift speed $v_d$, then

$$I = n\,q\,v_d\,A.$$

Within a time $\Delta t$, the carriers in a length $v_d\Delta t$ cross the area. That volume holds $nAv_d\Delta t$ carriers, so $\Delta Q = nqAv_d\,\Delta t$, which gives the formula above.

**Worked example.** A flashlight bulb passes $3.0\ \text{C}$ of charge in $5.0\ \text{s}$. The average current is

$$I = \frac{3.0\ \text{C}}{5.0\ \text{s}} = 0.60\ \text{A}.$$

How many electrons cross a cross section each second? Each electron carries $e = 1.60\times10^{-19}\ \text{C}$, so

$$\frac{N}{\Delta t} = \frac{I}{e} = \frac{0.60}{1.60\times10^{-19}} \approx 3.75\times10^{18}\ \text{electrons/s}.$$

**Problem-solving application.** A copper wire of diameter $2.0\ \text{mm}$ carries $I = 5.0\ \text{A}$. Copper has $n \approx 8.5\times10^{28}\ \text{m}^{-3}$ free electrons. Find the drift speed.

1. The area is $A = \pi r^2 = \pi(1.0\times10^{-3}\ \text{m})^2 = 3.14\times10^{-6}\ \text{m}^2$.
2. Solve $I = nqv_dA$ for $v_d$:

$$v_d = \frac{I}{n\,e\,A} = \frac{5.0}{(8.5\times10^{28})(1.60\times10^{-19})(3.14\times10^{-6})} \approx 1.2\times10^{-4}\ \text{m/s}.$$

The electrons drift at about $0.12\ \text{mm/s}$, which is slower than a crawling snail. A lamp still lights almost instantly because the electric field that drives the electrons propagates through the wire at nearly the speed of light. Every free electron along the wire begins to move at once.

**Key points to remember.**

- Current measures charge per unit time. It is not the amount of charge itself.
- In a series circuit with no branches, the current is the same at every cross section, because charge does not accumulate along the wire. This is a consequence of charge conservation.
- At a junction, the current entering equals the current leaving. This is Kirchhoff's junction rule.

For a time-varying current, the total charge transferred is the area under the $I$–$t$ graph:

$$\Delta Q = \int_{t_1}^{t_2} I\,dt.$$

---

## Alternating Current

**Definition.** Alternating current (AC) is an electric current whose direction reverses periodically. The most common form is sinusoidal:

$$I(t) = I_0 \sin(2\pi f t)$$

Here $I_0$ is the **peak current** (amplitude), $f$ is the **frequency** in hertz, and $T = 1/f$ is the **period**. The angular frequency is $\omega = 2\pi f$. The same form describes AC voltage, $V(t) = V_0 \sin(\omega t)$. Direct current (DC) keeps one direction. AC changes direction $2f$ times per second.

Because AC averages to zero over a cycle, we describe its "size" with the **root-mean-square (rms)** value, the DC value that would deliver the same average power to a resistor:

$$I_{\text{rms}} = \sqrt{\langle I^2\rangle} = \frac{I_0}{\sqrt{2}} \approx 0.707\,I_0, \qquad V_{\text{rms}} = \frac{V_0}{\sqrt{2}}$$

This follows from $\langle \sin^2(\omega t)\rangle = \tfrac12$ over a full cycle. Household voltages (for example 120 V in North America) are quoted as rms values.

**Worked example.** A wall outlet supplies $V_{\text{rms}} = 120\ \text{V}$ at $f = 60\ \text{Hz}$ to a resistive heater with $R = 24\ \Omega$.

1. Peak voltage: $V_0 = \sqrt{2}\,(120) \approx 170\ \text{V}$.
2. Peak current: $I_0 = V_0/R = 170/24 \approx 7.07\ \text{A}$.
3. rms current: $I_{\text{rms}} = 120/24 = 5.0\ \text{A}$.
4. Average power: $P_{\text{avg}} = I_{\text{rms}}V_{\text{rms}} = I_{\text{rms}}^2 R = (5.0)^2(24) = 600\ \text{W}$.
5. Period: $T = 1/60 \approx 16.7\ \text{ms}$, so the current reverses 120 times each second.

Note that using the peak values would give $I_0^2R = 1200$ W, double the true average. The instantaneous power is $P(t)=I_0^2R\sin^2(\omega t)$, which oscillates between 0 and $I_0^2R$ and averages to half of that peak.

**Problem-solving application.** Suppose you must choose a fuse for a circuit powering a 1.8 kW appliance on a 240 V rms supply. Assume the appliance is purely resistive.

- Required rms current: $I_{\text{rms}} = P/V_{\text{rms}} = 1800/240 = 7.5\ \text{A}$.
- Fuses respond to heating, which depends on rms current, so a 10 A fuse leaves a reasonable margin.
- Check insulation ratings against the *peak* voltage, since breakdown depends on the maximum field: $V_0 = \sqrt{2}(240) \approx 339\ \text{V}$.

The general strategy is to decide which quantity the problem cares about:

| Concern | Use |
|---|---|
| Heating, power, fuse rating | rms values |
| Insulation, component voltage limits | peak values |
| Timing, phase, reversal rate | $f$, $T$, $\omega$ |

**Why AC?** Transformers work only with changing magnetic flux, so AC voltage can be stepped up for low-loss transmission (power loss is $I^2R$, and higher voltage means lower current for the same power) and stepped down for safe use. This is the main reason AC dominates power grids.

**Check yourself.** An AC source has $I_0 = 3.0$ A. What is $I_{\text{rms}}$, and what power does it deliver to a 10 Ω resistor? ($I_{\text{rms}} \approx 2.12$ A; $P = I_{\text{rms}}^2R = 45$ W.)

---

## Shock Hazard

A **shock hazard** is a condition in which electric current can pass through the human body. The danger comes from the current, not the voltage alone. Voltage matters only because, together with the body's resistance, it determines the current:

$$I = \frac{V}{R_{\text{body}}}$$

Four factors set the severity: the **magnitude** of the current, its **path** through the body, its **duration**, and, for AC, its **frequency**.

**Magnitude.** Typical effects of 60 Hz AC are:

| Current | Effect |
|---|---|
| about 1 mA | threshold of perception (tingle) |
| 10–20 mA | "let-go" threshold: muscles clamp and the victim cannot release the conductor |
| 50–100 mA | ventricular fibrillation is possible |
| above 100 mA | severe burns, cardiac arrest |

**Path.** Current that crosses the chest (hand to hand, or hand to foot) passes near the heart and is much more dangerous than current confined to one limb.

**Duration.** A widely used empirical model for fibrillation (Dalziel) gives a safe-current limit that falls as exposure time grows:

$$I \approx \frac{116}{\sqrt{t}}\ \text{mA}$$

where $t$ is in seconds. This is why fast-acting protection matters.

**Frequency.** Household 50–60 Hz is especially dangerous because it falls near the heart's vulnerable rhythm and is low enough to cause sustained muscle tetanus. DC tends to cause a single violent jolt. Very high frequencies flow along the skin and cause burns rather than fibrillation.

### Worked example

A person with dry skin touches a 120 V conductor. Take $R_{\text{body}} \approx 100\,\text{k}\Omega$ for dry skin:

$$I = \frac{120}{100{,}000} = 1.2\ \text{mA}$$

This is barely perceptible. Now the person has wet hands, so the skin resistance drops and $R_{\text{body}} \approx 1\,\text{k}\Omega$:

$$I = \frac{120}{1{,}000} = 120\ \text{mA}$$

This is in the fibrillation range. The same voltage gives a hundredfold difference in current.

### Problem-solving application

**Problem.** A fault lets a 240 V line contact an appliance case. A person with $R_{\text{body}} = 1.5\,\text{k}\Omega$ touches the case. (a) What is the current? (b) Is it dangerous? (c) How quickly must a protective device trip?

(a) $I = 240/1500 = 0.16\ \text{A} = 160\ \text{mA}$.

(b) Yes. It exceeds the 100 mA fibrillation range.

(c) Solve the Dalziel model for $t$:

$$t \approx \left(\frac{116}{160}\right)^2 \approx 0.53\ \text{s}$$

The device must interrupt the circuit in well under half a second.

**Design implications.** This is the reasoning behind common protections:

- **Grounding** gives fault current a low-resistance path, so a breaker trips instead of the body carrying the current.
- **Ground-fault circuit interrupters (GFCIs)** trip at about 5 mA of imbalance, typically within 25 ms. That is far below both the let-go threshold and the fibrillation limit.
- **Insulation and dry conditions** keep $R_{\text{body}}$ high.

In practice, assess a shock hazard by estimating the plausible current path and resistance, then compare the resulting current and exposure time with these thresholds.

---

## Payoff

The concept list for this capstone names no downstream applications, so I tie shock_hazard to the three domains where it is used most often: power distribution, medical safety, and consumer product design. If you intended different domains, the same argument applies to them.

### What shock_hazard achieves

Every earlier idea in this book was a piece of one question: *when does electric current through a person become dangerous?* Ohm's law gave us the current,

$$I = \frac{V}{R_{\text{body}} + R_{\text{contact}}}.$$

Power dissipation and the duration of exposure told us how much energy the tissue absorbs. Frequency told us how the body responds to AC versus DC. The shock hazard concept combines them into one decision: for a given source, path, and exposure time, is the current in the body above the threshold that causes harm?

This is the natural endpoint because it turns circuit analysis into a safety decision. Roughly, a current of about 1 mA is perceptible. Above about 10 mA, muscles may not release the conductor. A few tens of mA through the chest can cause ventricular fibrillation. A hazard assessment has three steps:

1. Model the body as a resistor, typically $1\,\text{k}\Omega$ to $100\,\text{k}\Omega$ depending on skin moisture and contact area.
2. Compute $I$ along the likely path.
3. Compare $I$ and the exposure time $t$ with the accepted limits.

**Worked check.** A person with wet hands ($R_{\text{body}} \approx 1\,\text{k}\Omega$) touches a 120 V faulty appliance. Then $I = 120/1000 = 0.12$ A, or 120 mA. That is far above the fibrillation range. With dry skin ($R \approx 100\,\text{k}\Omega$), $I = 1.2$ mA, which is barely perceptible. The voltage is the same in both cases. The hazard depends on the resistance and the path, and a good design controls both.

### Connection to the application domains

**Power distribution.** Ground-fault circuit interrupters (GFCIs) apply this calculation directly. They compare the current leaving on the hot wire with the current returning on the neutral. A mismatch of about 5 mA means current is leaking through another path, possibly a person, and the device opens the circuit within roughly 25 ms. Grounding, bonding, and breaker sizing all work by keeping the body path from carrying fault current.

**Medical safety.** Patients with catheters or electrodes have almost no skin resistance. Currents of only microamperes can then reach the heart (microshock). Medical equipment standards therefore set leakage limits far below the household thresholds, and isolation transformers are used to break the ground path.

**Consumer product design.** Insulation, double-insulated enclosures, low-voltage supplies, and interlocks are all ways of raising $R$ or removing the path. Each design choice can be checked with the same three steps: model, compute, compare.

### An invitation

Choose one domain and work a full case. For example, size a GFCI trip threshold for a bathroom outlet, or find the leakage budget for a bedside monitor. Start by writing the body-path circuit, compute the current for the worst case, and then decide which protective measure brings it below the limit. Once you can justify that decision with numbers, you have used everything in this book.
```
