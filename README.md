# HenniTutor – Obsidian Vault Manager

Cowork plugin for managing an Obsidian knowledge base organized according to the
Zettelkasten method. Works with any vault.

## Features

- Create notes for all 13 vault types (Person, Event, Zettel, Term, Source, ...)
- All vault operations use the Obsidian CLI (never MCP servers)
- Strict adherence to vault writing rules (YAML, prose style, German)
- Search and edit existing notes
- Project management with research, todo processing, and vault integration

## Commands

| Command | Description |
|---------|-------------|
| `/person` | New biographical note |
| `/event` | New historical event |
| `/zettel` | New atomic thought (Zettelkasten) |
| `/term` | New glossary entry |
| `/source` | New source (article, video, audio) |
| `/book` | New book note (with ISBN/cover lookup) |
| `/moc` | New Map of Content |
| `/essay` | New essay (mini or normal) |
| `/city` | New city note |
| `/country` | New country note |
| `/location` | New location (region, POI, continent) |
| `/organization` | New organization note |
| `/note` | New note (FAQ, instruction, how-to) |
| `/area` | New area of interest |
| `/connections` | Find and insert connections into an existing note |
| `/project` | Create a new project with todo list and research file |
| `/research` | Research a topic and write findings to the project research file |
| `/process-todo` | Process the project todo list step by step, marking completed todos as done |
| `/vault-search` | Search vault by content, tag, or type |
| `/vault-edit` | Edit an existing note |

## Skills

- **vault-knowledge** — Loaded automatically for all vault operations.
  Contains vault structure, writing rules, YAML rules, note types,
  and CLI command reference.

## Requirements

- Obsidian must be running with the target vault open
- The `obsidian` CLI must be installed and available in your PATH
- Works with any vault — just select the vault folder in Cowork

## Setup

Clone the vault template from GitHub from https://github.com/henriette-einstein/HenniBase.git, then select the folder in Cowork. The `vault-knowledge` skill 
loads all rules and conventions automatically — no additional configuration needed.

## Usage

Select your vault folder in Cowork and use any of the commands above.
