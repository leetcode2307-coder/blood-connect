---
name: Clinical Humanism
colors:
  surface: '#f7f9fb'
  surface-dim: '#d8dadc'
  surface-bright: '#f7f9fb'
  surface-container-lowest: '#ffffff'
  surface-container-low: '#f2f4f6'
  surface-container: '#eceef0'
  surface-container-high: '#e6e8ea'
  surface-container-highest: '#e0e3e5'
  on-surface: '#191c1e'
  on-surface-variant: '#5a403e'
  inverse-surface: '#2d3133'
  inverse-on-surface: '#eff1f3'
  outline: '#8e706d'
  outline-variant: '#e2beba'
  surface-tint: '#b52424'
  primary: '#8f000d'
  on-primary: '#ffffff'
  primary-container: '#b22222'
  on-primary-container: '#ffc8c2'
  inverse-primary: '#ffb4ac'
  secondary: '#4f6073'
  on-secondary: '#ffffff'
  secondary-container: '#d2e4fb'
  on-secondary-container: '#556679'
  tertiary: '#014292'
  on-tertiary: '#ffffff'
  tertiary-container: '#2b5aab'
  on-tertiary-container: '#c5d5ff'
  error: '#BA1A1A'
  on-error: '#ffffff'
  error-container: '#ffdad6'
  on-error-container: '#93000a'
  primary-fixed: '#ffdad6'
  primary-fixed-dim: '#ffb4ac'
  on-primary-fixed: '#410003'
  on-primary-fixed-variant: '#92030f'
  secondary-fixed: '#d2e4fb'
  secondary-fixed-dim: '#b7c8de'
  on-secondary-fixed: '#0b1d2d'
  on-secondary-fixed-variant: '#38485a'
  tertiary-fixed: '#d8e2ff'
  tertiary-fixed-dim: '#aec6ff'
  on-tertiary-fixed: '#001a42'
  on-tertiary-fixed-variant: '#064494'
  background: '#f7f9fb'
  on-background: '#191c1e'
  surface-variant: '#e0e3e5'
  surface-white: '#FFFFFF'
  surface-border: '#E2E8F0'
  success: '#059669'
  warning: '#D97706'
typography:
  display:
    fontFamily: Inter
    fontSize: 36px
    fontWeight: '700'
    lineHeight: 44px
    letterSpacing: -0.02em
  headline-lg:
    fontFamily: Inter
    fontSize: 28px
    fontWeight: '600'
    lineHeight: 36px
    letterSpacing: -0.01em
  headline-lg-mobile:
    fontFamily: Inter
    fontSize: 24px
    fontWeight: '600'
    lineHeight: 32px
  title-md:
    fontFamily: Inter
    fontSize: 20px
    fontWeight: '600'
    lineHeight: 28px
  body-lg:
    fontFamily: Inter
    fontSize: 16px
    fontWeight: '400'
    lineHeight: 24px
  body-md:
    fontFamily: Inter
    fontSize: 14px
    fontWeight: '400'
    lineHeight: 20px
  label-md:
    fontFamily: Inter
    fontSize: 12px
    fontWeight: '600'
    lineHeight: 16px
    letterSpacing: 0.05em
  caption:
    fontFamily: Inter
    fontSize: 12px
    fontWeight: '400'
    lineHeight: 16px
rounded:
  sm: 0.25rem
  DEFAULT: 0.5rem
  md: 0.75rem
  lg: 1rem
  xl: 1.5rem
  full: 9999px
spacing:
  base: 4px
  xs: 4px
  sm: 8px
  md: 16px
  lg: 24px
  xl: 32px
  gutter: 16px
  margin-mobile: 16px
  margin-tablet: 32px
  margin-desktop: 64px
---

## Brand & Style
The design system is centered on the concept of **Clinical Humanism**—a strategic balance between high-stakes medical authority and empathetic patient care. It is designed for a mobile-first healthcare environment where users are often under significant stress, requiring an interface that feels both ultra-reliable and deeply supportive.

The chosen style is **Corporate / Modern** with a lean toward high-clarity minimalism. It prioritizes "Content-First" architecture, removing decorative friction to ensure life-critical data (like blood types and urgent requests) is the primary visual anchor. The aesthetic is clean, stable, and professional, utilizing precise alignment and generous whitespace to create a sense of calm and order.

## Colors
The palette is anchored by **Medical Red**, establishing an immediate mental model for blood healthcare, and **Healthcare Navy**, which provides institutional trust and professional weight.

- **Primary (Medical Red):** Reserved for critical actions, blood-type indicators, and urgent system states.
- **Secondary (Healthcare Navy):** Used for structural navigation, headers, and primary administrative actions to ground the high-energy red.
- **Neutral/Surface:** A foundation of pure white and clinical light grays ensures maximum legibility and allows semantic status colors to "pop" without competition.
- **Semantic Logic:** Success, Warning, and Error colors are strictly functional, used only to communicate status (e.g., Verified, Pending, Critical Shortage).

## Typography
**Inter** is the exclusive typeface for this design system, chosen for its exceptional numerical legibility and neutral, professional tone.

- **Scale:** A clear hierarchy is maintained between bold, larger headers and highly readable body text to facilitate rapid information scanning.
- **Adjustments:** Headlines utilize slight negative tracking to feel more "set" and authoritative. Small labels use increased tracking (5%) to ensure clarity in high-density data views.
- **Mobile Optimization:** Large display sizes are stepped down for mobile views to prevent excessive line-breaking while maintaining visual impact.

## Layout & Spacing
The layout philosophy follows a strict **4px baseline grid** to ensure mathematical harmony across all components.

- **Mobile (Primary):** A fluid 4-column grid with 16px side margins. Elements are primarily stacked vertically to accommodate one-handed thumb interaction.
- **Desktop/Tablet:** A 12-column grid with a maximum content width of 1200px. Content should be centered to prevent ocular fatigue.
- **Rhythm:** Use `md` (16px) for standard gutters and internal card padding. Use `lg` (24px) for vertical section spacing to maintain a breathable, "calm" clinical atmosphere.

## Elevation & Depth
To maintain a modern, clean, and professional appearance, this design system avoids heavy shadows, instead utilizing **Tonal Layers** and **Low-Contrast Outlines**.

- **Level 0 (Background):** Surface color (#F7F9FB).
- **Level 1 (Cards/Surfaces):** Pure white with a 1px solid border (#E2E8F0).
- **Level 2 (Modals/Overlays):** White surface with a very soft, diffused ambient shadow (0px 4px 20px rgba(26, 43, 60, 0.08)) to indicate temporary interaction.
- **Interactive States:** Buttons and inputs do not rise in elevation on hover; instead, they utilize subtle background tint shifts to signify interactivity.

## Shapes
A **Rounded** (0.5rem) approach is applied to all standard UI elements. This softens the "sharp" clinical nature of healthcare, making the app feel more approachable and human-centric.

- **Base Components:** Inputs, buttons, and containers use the 8px (0.5rem) base radius.
- **Badges:** Blood group tags and status badges (Active, Pending) use a **Pill-shape** (full radius) to visually distinguish them from interactive buttons and data containers.
- **Progress:** Stepper nodes and timeline indicators use circular shapes to denote completion points.

## Components

### Buttons
- **Primary:** Solid Medical Red (#B22222) with White text. Reserved for the most critical actions (e.g., "Confirm Donation").
- **Secondary:** Solid Healthcare Navy (#1A2B3C) with White text. Used for primary navigation or administrative tasks.
- **High-Contrast:** Buttons must maintain a minimum 4.5:1 contrast ratio. Large hit targets (min 48px height) are required for stressed users.

### Inputs
- **Mobile-Friendly:** 1px border (#E2E8F0), 8px radius, with a 56px height to ensure ease of tapping.
- **Focus State:** Border shifts to Healthcare Navy with a 2px outer glow (ghost ring).

### Badges & Tags
- **Blood Group Badges:** High-prominence pill shapes. Use a light red background with Deep Red text for immediate recognition.
- **Status Badges:** Use semantic colors—Green (Verified), Amber (Pending), Blue (Active)—with 12px Semi-bold labels.

### Navigation
- **Role-Specific Bars:** Bottom navigation is customized based on user role (Donor vs. Hospital). 
- **Style:** Pure white background with a 1px top border. Active states are indicated by the Secondary Navy color for both icon and label.

### Data Cards
- **Request Cards:** Use Level 1 elevation (border only). Feature the Blood Type as the primary visual anchor in the top-right, with the urgency level as a semantic tag.
