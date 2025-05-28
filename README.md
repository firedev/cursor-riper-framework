# Cursor RIPER Framework

```
    ██▀███   ██▓ ██▓███  ▓█████  ██▀███
   ▓██ ▒ ██▒▓██▒▓██░  ██▒▓█   ▀ ▓██ ▒ ██▒
   ▓██ ░▄█ ▒▒██▒▓██░ ██▓▒▒███   ▓██ ░▄█ ▒
   ▒██▀▀█▄  ░██░▒██▄█▓▒ ▒▒▓█  ▄ ▒██▀▀█▄
   ░██▓ ▒██▒░██░▒██▒ ░  ░░▒████▒░██▓ ▒██▒
   ░ ▒▓ ░▒▓░░▓  ▒▓▒░ ░  ░░░ ▒░ ░░ ▒▓ ░▒▓░
     ░▒ ░ ▒░ ▒ ░░▒ ░      ░ ░  ░  ░▒ ░ ▒░
     ░░   ░  ▒ ░░░          ░     ░░   ░
      ░      ░              ░  ░   ░

RESEARCH • INNOVATE • PLAN • EXECUTE • REVIEW
```

A comprehensive AI workflow framework for Cursor IDE that provides structured development processes, persistent memory management, and intelligent context tracking.

## Overview

Cursor RIPER is a framework designed to enhance AI-assisted development in Cursor IDE by providing:

- **Structured Workflow**: RIPER methodology (Research, Innovate, Plan, Execute, Review)
- **Persistent Memory**: Context preservation across sessions
- **Learning System**: Capture and apply project-specific learnings
- **State Management**: Track project phases and development progress
- **Safety Protocols**: Prevent unintended modifications and ensure quality

## Quick Installation

1. **Copy framework files to your project:**
   ```bash
   cp -r cursor-riper-framework/.cursor /path/to/your/project/
   cp -r cursor-riper-framework/memory-bank /path/to/your/project/
   ```

2. **Initialize the framework:**
   - Open your project in Cursor IDE
   - The framework will auto-detect and initialize on first use
   - Use `/start` command if starting a new project
   - Use `/help` to see available commands

## Framework Structure

### Core Files (Always Active)
```
.cursor/
├── rules/
│   ├── core.mdc           # Core framework logic and memory management
│   ├── state.mdc          # Project state and phase tracking
│   └── riper-workflow.mdc # RIPER mode specifications
├── archive/
│   └── start-phase.mdc    # Project initialization (archived after setup)
└── cursorignore           # Cursor-specific ignore patterns
```

### Memory Bank (Auto-loaded)
```
memory-bank/
├── projectbrief.md        # Core requirements and goals
├── systemPatterns.md      # Architecture and technical decisions
├── techContext.md         # Technologies and development setup
├── activeContext.md       # Current work focus and next steps
├── progress.md            # What works, what's left, known issues
└── learnings.md           # Project-specific learnings and corrections
```

## RIPER Workflow

### Modes
- **RESEARCH**: Information gathering and analysis only
- **INNOVATE**: Brainstorming and creative problem-solving
- **PLAN**: Create detailed specifications and strategies
- **EXECUTE**: Implement planned changes
- **REVIEW**: Validate and assess implementation

### Commands
- `/research`, `/innovate`, `/plan`, `/execute`, `/review` - Switch modes
- `/learn "wrong" "correct" "why"` - Record learnings
- `/focus X` - Set focus area
- `/checkpoint` - Create save point
- `/decision X` - Record architectural decision
- `/help` - Show help guide

## Key Features

### 1. Memory Management
- **Persistent Context**: Maintains project understanding across sessions
- **Automatic Updates**: Memory hooks trigger updates based on activities
- **Learning System**: Captures and applies project-specific knowledge

### 2. Safety Protocols
- **Mode Enforcement**: Prevents implementation without planning
- **Change Validation**: Requires explicit confirmation for destructive operations
- **State Consistency**: Validates transitions and maintains integrity

### 3. Workflow Structure
- **Phase Management**: Tracks project lifecycle (Initialization → Development → Maintenance)
- **Mode Transitions**: Enforces logical workflow progression
- **Context Awareness**: Leverages Cursor IDE features for enhanced productivity

## Installation for New Projects

### Option 1: Fresh Installation
```bash
# Copy framework to new project
cp -r cursor-riper-framework/.cursor /path/to/new/project/
mkdir -p /path/to/new/project/memory-bank

# Open in Cursor IDE and run:
# /start
```

### Option 2: Existing Project
```bash
# Copy framework to existing project
cp -r cursor-riper-framework/.cursor /path/to/existing/project/
cp -r cursor-riper-framework/memory-bank /path/to/existing/project/

# Framework will auto-detect existing project state
```

## Usage Examples

### Starting a New Feature
```
/research
# Investigate requirements and existing code

/innovate
# Brainstorm implementation approaches

/plan
# Create detailed implementation plan

/execute
# Implement the planned solution

/review
# Validate implementation and document results
```

### Recording Learnings
```
/learn "used wrong Rails command" "use rails r not rails console" "rails r is for scripts, console is for interactive sessions"
```

### Managing Focus
```
/focus "API authentication system"
/checkpoint "Authentication middleware implemented"
/decision "Using JWT tokens for stateless auth"
```

## Framework Philosophy

1. **Explicit over Implicit**: Clear workflows prevent assumptions
2. **Memory over Repetition**: Context preservation reduces redundant work
3. **Safety over Speed**: Validation prevents costly mistakes
4. **Learning over Forgetting**: Capture knowledge for future application

## Troubleshooting

### Framework Not Loading
- Ensure `.cursor/rules/` directory exists with all `.mdc` files
- Check that `state.mdc` has valid PROJECT_PHASE value
- Verify Cursor IDE is recognizing the `.cursor` directory

### Memory Bank Issues
- Create `memory-bank/` directory if missing
- Use `/checkpoint` to force memory updates
- Check `activeContext.md` for current status

### Command Not Working
- Use `/help` to see available commands
- Ensure you're in the correct mode for the operation
- Check `state.mdc` for current PROJECT_PHASE

## Contributing

The CursorRIPER Framework is designed to be:
- **Modular**: Components can be enhanced independently
- **Extensible**: New modes and commands can be added
- **Customizable**: Adapt workflows to project needs

## Version History

- **1.0.3**: Optimized 3-file structure, integrated learning system
- **1.0.2**: Enhanced memory hooks and state management
- **1.0.1**: Initial RIPER workflow implementation
- **1.0.0**: Core framework and memory bank system

---

Cursor RIPER Framework - Enhancing AI-assisted development through structured workflows and persistent intelligence.
