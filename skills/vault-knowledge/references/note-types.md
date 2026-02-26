# Note Types

All 13 note types, their directories, required fields, and content guidelines.

## Person
- **Directory**: `40 Ressources/Persons/`
- **Required YAML**: type, created, modified
- **Recommended**: categories, born, died, country, portrait, sources, areas
- **Categories**: Author, Politician, Ruler, Soldier, Entrepreneur
- **Length**: 500–2000 words
- **Content**: Biographical overview, career phases, significance, relevance

## Event
- **Directory**: `40 Ressources/Events/`
- **Required YAML**: type, created, modified, **start**, **end**
- **Recommended**: categories, where, participants, sources, areas
- **Categories**: Conflict, Political-Event, Crisis, Conference
- **Length**: 300–1500 words
- **Filename**: MUST include year/period in parentheses
  Examples: `World War I (1914-1918)`, `Battle of Waterloo (1815)`
- **Content**: Context/background, sequence, actors, consequences, significance

## Organization
- **Directory**: `40 Ressources/Organizations/`
- **Required YAML**: type, created, modified
- **Recommended**: categories, founded, dissolved, headquarter, sources, areas
- **Categories**: Company, Institution, Party
- **Length**: 400–1500 words
- **Content**: Founding/context, objectives, activities, significance

## City
- **Directory**: `40 Ressources/Cities/`
- **Required YAML**: type, created, modified
- **Recommended**: country, location (GPS), tags, areas
- **Length**: 200–1000 words
- **Content**: Geographic location, historical significance, connections

## Country
- **Directory**: `40 Ressources/Countries/`
- **Required YAML**: type, created, modified, **capital**
- **Recommended**: flag, location (GPS), tags, areas
- **Length**: 200–1000 words
- **Special**: Must include "Überblick" section with bullet-point base data
  (capital, population, area, major cities, language(s), religions, currency)
- **Content**: Overview (base data), historical context, connections

## Location
- **Directory**: `40 Ressources/Locations/`
- **Required YAML**: type, created, modified
- **Recommended**: categories, location (GPS), country, tags, areas
- **Categories**: Region, POI, Historical Region, Continent
- **Length**: 200–1000 words
- **Content**: Description, historical significance, connections

## Term
- **Directory**: `40 Ressources/Terms/`
- **Required YAML**: type, created, modified
- **Recommended**: aliases, areas, sources
- **Length**: 50–300 words
- **Distinction**: Term = "What does this word mean?" vs Zettel = "What do I think about it?"
- **Content**: Definition ("X is..."), etymology, synonyms, usage examples

## Timeline
- **Directory**: `40 Ressources/Timelines/`
- **Required YAML**: type, created, modified
- **Recommended**: tags, areas, start, end
- **Length**: 200–1000 words
- **Content**: Chronological lists of events, temporal sequences

## Zettel
- **Directory**: `50 Zettelkasten/Zettel/`
- **Required YAML**: type, created, modified
- **Recommended**: tags, sources, areas
- **Length**: 100–300 words
- **Principles**: Atomicity, autonomy, own words, interconnection, contextualization
- **Content**: Core statement (1–3 sentences), elaboration, connections

## Essay
- **Directory**: `50 Zettelkasten/Essays/`
- **Required YAML**: type, categories, created, modified
- **Recommended**: tags, topics, areas, status (draft/review/completed/published)
- **Categories**:
  - Mini-Essay: 500–1500 words, single argument, intro → arguments → conclusion
  - Normal Essay: 1500–5000 words, complex argumentation with multiple threads
- **Content**: Synthesis of Zettel into coherent narrative

## MOC (Map of Content)
- **Directory**: `50 Zettelkasten/MOCs/`
- **Required YAML**: type, created, modified
- **Recommended**: categories, summary, areas
- **Types**: Normal MOC (no category), Topic (category: `[[Topic]]`)
- **Length**: 100–2000 words
- **Filename conventions**:
  - Topic → `Topic <Title>`
  - Normal MOC → `MOC <Title>`
- **Functions**: Navigation, curation, sequencing, structuring

## Source (Article, Video, Audio)
- **Directory**: `60 Sources/<Category>s/`
  (Articles, Videos, Audios, Documentations)
- **Required YAML**: type, created, modified
- **Recommended**: categories, authors, published, tags, areas, rating
- **Categories**: Article, Video, Audio, Documentations
- **Article-specific**: journal, volume, issue
- **Video/Audio-specific**: duration, url
- **Length**: 200–1000 words
- **Content**: Summary, main theses, relevance, quotes

## Book
- **Directory**: `60 Sources/Books/`
- **Required YAML**: type, created, modified
- **Recommended**: categories, authors, published, isbn, pages, publisher, cover, tags, areas, rating
- **Filename**: `<LastName> - <Title>.md`
- **Length**: 200–1000 words
- **Content**: Summary, main theses, relevance, quotes

## Note
- **Directory**: `40 Ressources/Notes/`
- **Required YAML**: type, created, modified
- **Recommended**: areas, tags
- **Length**: 100–2000 words (depending on subtype)
- **Subtypes** (distinguished via tags):
  - FAQ (`faq`): Question-answer format, 100–500 words per question
  - Instruction (`instruction`): Step-by-step guides, 300–1500 words
  - How-To (`howto`): Practical guides, 500–2000 words

## Area
- **Directory**: `30 Areas/`
- **Required YAML**: type, created, modified
- **Content**: Description of the area of interest, key topics, linked MOCs and resources
